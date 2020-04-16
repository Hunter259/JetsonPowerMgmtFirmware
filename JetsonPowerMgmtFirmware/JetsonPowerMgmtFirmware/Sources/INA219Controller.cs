using System;
using System.Text;
using System.Collections;
using Windows.Devices.I2c;

namespace JetsonPowerMgmtFirmware.INA219
{
    public enum INA219Registers
    {
        Configuration = 0x00,
        ShuntVoltage = 0x01,
        BusVoltage = 0x02,
        Power = 0x03,
        Current = 0x04,
        Calibration = 0x05
    }
    public class INA219Controller
    {
        private readonly int INAStartAddress = 0x40;     //Jetson PWR MGMT Module starts from address 1000000 up to 1000005       
        private readonly double ShuntResistance = 0.005;
        private readonly int NominalVoltage = 12;
        private readonly double MaxExpectedCurrent = 4.0;
        private ArrayList INADevices;
        public int INACount { get; set; } = 0;
        /// <summary>
        /// Creates list of all INA devices and configures them
        /// </summary>
        /// <param name="i2cBus">Designated I2C bus that has only INA219 devices</param>
        public INA219Controller(string i2cBus)
        {
            INADevices = new ArrayList();
            int INAAddress = INAStartAddress;
            bool IsRunning = true;
            while (IsRunning)
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
                    INADevices.Add(currentINA);
                }
                else
                {
                    IsRunning = false;
                }
  
                INAAddress++;
            }
            
            foreach(I2cDevice INADevice in INADevices)
            {
                double MaxCurrent = NominalVoltage / ShuntResistance;
                double CurrentLSB = Math.Round((MaxExpectedCurrent / 32767) * 1000000);
                CurrentLSB /= 1000000;

                float CalibrationReg = (float)Math.Truncate(0.04096 / (MaxCurrent * ShuntResistance));
                
                ushort ConfigurationReg = 0b001101110111111;

                byte[] writeBuffer = BitConverter.GetBytes((ushort)INA219Registers.Configuration);
                INADevice.Write(writeBuffer);

                writeBuffer = BitConverter.GetBytes(ConfigurationReg);
                INADevice.Write(writeBuffer);

                writeBuffer = BitConverter.GetBytes((ushort)INA219Registers.Calibration);
                INADevice.Write(writeBuffer);

                writeBuffer = BitConverter.GetBytes(CalibrationReg);
                INADevice.Write(writeBuffer);
            }
        }

        public ArrayList GetAllCurrents()
        {
            ArrayList currents = new ArrayList();

            for (int i = 0; i<INADevices.Count; i++)
            {
                currents.Add(GetCurrent(i));
            }

            return currents;
        }
        public ArrayList GetAllVoltages()
        {
            ArrayList voltages = new ArrayList();

            for (int i = 0; i < INADevices.Count; i++)
            {
                voltages.Add(GetVoltage(i));
            }

            return voltages;
        }
        public float GetCurrent(int i)
        {
            I2cDevice selectedINA = (I2cDevice)INADevices[i];

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
            I2cDevice selectedINA = (I2cDevice)INADevices[i];

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
