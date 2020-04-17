namespace JetsonPowerMgmtFirmware
{
    using JetsonPowerMgmtFirmware.Configuration;
    using JetsonPowerMgmtFirmware.INA219;
    using JetsonPowerMgmtFirmware.PowerControl;
    using System;
    using System.Collections;
    using System.Threading;
    using STM32 = nanoFramework.Hardware.Stm32;

    public class Program
    {
        public static void Main()
        {
            UserConfigurationStore userConfigurationStore = new UserConfigurationStore();
            UserConfiguration userConfiguration = userConfigurationStore.GetConfig();

            ArrayList GPIOPins = new ArrayList();
            GPIOPins.Add(new GPIOPinDef { Port = 'D', Pin = 49 });
            GPIOPins.Add(new GPIOPinDef { Port = 'D', Pin = 50 });
            GPIOPins.Add(new GPIOPinDef { Port = 'D', Pin = 7 });
            GPIOPins.Add(new GPIOPinDef { Port = 'D', Pin = 4 });
            GPIOPins.Add(new GPIOPinDef { Port = 'D', Pin = 2 });

            PWRController outputPowerController = new PWRController(GPIOPins);
            INA219Controller powerSenseController = new INA219Controller("I2C1");

            if (userConfiguration.PowerOnResetEnable)
            {
                outputPowerController.EnablePowerToAll(userConfiguration.PowerUpDelay);
            }

            // Add interaction code after this point
        }
    }
}
