using System;
using System.Text;
using Windows.Devices.I2c;

namespace JetsonPowerMgmtFirmware
{
    public class INA219Controller
    {
        private readonly int INAStartAddress = 0x40;     //Jetson PWR MGMT Module starts from address 1000000 up to 1000005
        public int INACount { get; set; } = 0;
        public INA219Controller(string i2cBus)
        {
            bool IsRunning = true;
            while (IsRunning)
            {
                int INAAddress = INAStartAddress;
                I2cDevice currentINA;

                currentINA = I2cDevice.FromId(i2cBus, new I2cConnectionSettings(INAAddress)
                {
                    BusSpeed = I2cBusSpeed.StandardMode,
                    SharingMode = I2cSharingMode.Exclusive
                });

                INAAddress++;
            }
            
        }
    }
}
