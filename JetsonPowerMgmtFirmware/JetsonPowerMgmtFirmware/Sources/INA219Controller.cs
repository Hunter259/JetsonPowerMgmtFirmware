namespace JetsonPowerMgmtFirmware.INA219
{
    using System;
    using System.Collections;
    using System.Text;
    using Windows.Devices.I2c;

    /// <summary>
    /// Holds correct register locations for all registers in a INA219 device
    /// </summary>
    public enum INA219Registers
    {
        /// <summary>
        /// Location of configuration register in INA219
        /// </summary>
        Configuration = 0x00,

        /// <summary>
        /// Location of Shunt Voltage register in INA219
        /// </summary>
        ShuntVoltage = 0x01,

        /// <summary>
        /// Location of Bus Voltage register in INA219
        /// </summary>
        BusVoltage = 0x02,

        /// <summary>
        /// Location of Power register in INA219
        /// </summary>
        Power = 0x03,

        /// <summary>
        /// Location of Current register in INA219
        /// </summary>
        Current = 0x04,

        /// <summary>
        /// Location of Calibration register in INA219
        /// </summary>
        Calibration = 0x05
    }

    /// <summary>
    /// Controller class to configure and read data from all INA219 devices connected to an I2C bus
    /// </summary>
    public class INA219Controller
    {
        /// <summary>
        /// All INA219 devices start from this address
        /// Jetson PWR MGMT Module starts from address 1000000 up to 1000005 
        /// </summary>
        private const int INAStartAddress = 0x40;    
        
        /// <summary>
        /// Specified shunt resistance for each INA219 on PMM
        /// </summary>
        private const double ShuntResistance = 0.005;

        /// <summary>
        /// Expected voltage input to PMM
        /// </summary>
        private const int NominalVoltage = 12;

        /// <summary>
        /// Maximum expected current draw for each device connected to PMM
        /// </summary>
        private const double MaxExpectedCurrent = 4.0;

        /// <summary>
        /// List of <see cref="I2cDevice"/> that represent each INA219
        /// </summary>
        private ArrayList INADevices;

        /// <summary>
        /// Initializes a new instance of the <see cref="INA219Controller"/> class.
        /// </summary>
        /// <param name="i2cBus">Designated I2C bus that has only INA219 devices</param>
        public INA219Controller(string i2cBus)
        {
            this.INADevices = new ArrayList();
            int INAAddress = INAStartAddress;
            bool isRunning = true;
            while (isRunning)
            {
                I2cDevice currentINA;

                currentINA = I2cDevice.FromId(
                    i2cBus, 
                    new I2cConnectionSettings(INAAddress)
                {
                    BusSpeed = I2cBusSpeed.StandardMode,
                    SharingMode = I2cSharingMode.Exclusive
                });

                byte[] writeBuffer = { 0 };
                byte[] readBuffer = { 0 };

                currentINA.Write(writeBuffer);
                currentINA.Read(readBuffer);                

                if (BitConverter.ToInt16(readBuffer, 0) == 0x399)
                {
                    this.INADevices.Add(currentINA);
                }
                else
                {
                    isRunning = false;
                }
  
                INAAddress++;
            }
            
            // Math used in this area for configuring the INA219 can be found in the INA219 manual found on page 12 in section 8.5.1
            foreach (I2cDevice INADevice in this.INADevices)
            {
                double maxCurrent = NominalVoltage / ShuntResistance;
                double currentLSB = Math.Round((MaxExpectedCurrent / 32767) * 1000000);
                currentLSB /= 1000000;

                float calibrationReg = (float)Math.Truncate(0.04096 / (maxCurrent * ShuntResistance));
                
                ushort configurationReg = 0b001101110111111;

                byte[] writeBuffer = BitConverter.GetBytes((ushort)INA219Registers.Configuration);
                INADevice.Write(writeBuffer);

                writeBuffer = BitConverter.GetBytes(configurationReg);
                INADevice.Write(writeBuffer);

                writeBuffer = BitConverter.GetBytes((ushort)INA219Registers.Calibration);
                INADevice.Write(writeBuffer);

                writeBuffer = BitConverter.GetBytes(calibrationReg);
                INADevice.Write(writeBuffer);
            }
        }

        /// <summary>
        /// Gets all current values from each INA219
        /// </summary>
        /// <returns>List of all currents as floats</returns>
        public ArrayList GetAllCurrents()
        {
            ArrayList currents = new ArrayList();

            for (int i = 0; i < this.INADevices.Count; i++)
            {
                currents.Add(this.GetCurrent(i));
            }

            return currents;
        }

        /// <summary>
        /// Gets all bus voltage values from each INA219
        /// </summary>
        /// <returns>List of all voltages as floats</returns>
        public ArrayList GetAllVoltages()
        {
            ArrayList voltages = new ArrayList();

            for (int i = 0; i < this.INADevices.Count; i++)
            {
                voltages.Add(this.GetVoltage(i));
            }

            return voltages;
        }

        /// <summary>
        /// Gets the current from a specified INA219
        /// </summary>
        /// <param name="i">INA219 to get current from</param>
        /// <returns>Current of specified INA219</returns>
        public float GetCurrent(int i)
        {
            I2cDevice selectedINA = (I2cDevice)this.INADevices[i];

            byte[] writeBuffer = { 0 };
            byte[] readBuffer = { 0 };

            writeBuffer = BitConverter.GetBytes((ushort)INA219Registers.Current);
            selectedINA.Write(writeBuffer);
            System.Threading.Thread.Sleep(1);
            selectedINA.Read(readBuffer);

            return (float)BitConverter.ToDouble(readBuffer, 0);
        }

        /// <summary>
        /// Gets the bus voltage from a specified INA219
        /// </summary>
        /// <param name="i">INA219 to get bus voltage from</param>
        /// <returns>Bus voltage of specified INA219</returns>
        public float GetVoltage(int i)
        {
            I2cDevice selectedINA = (I2cDevice)this.INADevices[i];

            byte[] writeBuffer = { 0 };
            byte[] readBuffer = { 0 };

            writeBuffer = BitConverter.GetBytes((ushort)INA219Registers.BusVoltage);
            selectedINA.Write(writeBuffer);
            System.Threading.Thread.Sleep(1);
            selectedINA.Read(readBuffer);

            return (float)BitConverter.ToDouble(readBuffer, 0);
        }
    }
}
