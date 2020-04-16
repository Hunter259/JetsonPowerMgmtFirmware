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
        Configuration = 0x00,
        ShuntVoltage = 0x01,
        BusVoltage = 0x02,
        Power = 0x03,
        Current = 0x04,
        Calibration = 0x05
    }

    /// <summary>
    /// 
    /// </summary>
    public class INA219Controller
    {
        private const int INAStartAddress = 0x40; //Jetson PWR MGMT Module starts from address 1000000 up to 1000005       
        private const double ShuntResistance = 0.005;
        private const int NominalVoltage = 12;
        private const double MaxExpectedCurrent = 4.0;
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

                currentINA = I2cDevice.FromId(i2cBus, new I2cConnectionSettings(INAAddress)
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

        public ArrayList GetAllCurrents()
        {
            ArrayList currents = new ArrayList();

            for (int i = 0; i < this.INADevices.Count; i++)
            {
                currents.Add(this.GetCurrent(i));
            }

            return currents;
        }

        public ArrayList GetAllVoltages()
        {
            ArrayList voltages = new ArrayList();

            for (int i = 0; i < this.INADevices.Count; i++)
            {
                voltages.Add(this.GetVoltage(i));
            }

            return voltages;
        }

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
