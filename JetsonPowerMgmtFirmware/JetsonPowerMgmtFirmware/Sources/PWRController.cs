namespace JetsonPowerMgmtFirmware
{
    using System;
    using System.Collections;
    using System.Text;
    using Windows.Devices.Gpio;
    using STM32 = nanoFramework.Hardware.Stm32;

    public struct GPIOPinDef
    {
        public char Port;
        public byte Pin;
    }

    public class PWRController
    {
        private ArrayList powerControlPins;
        public PWRController(ArrayList GPIOPinDefs)
        {
            this.powerControlPins = new ArrayList();
            foreach (GPIOPinDef pinDef in GPIOPinDefs)
            {
                GpioPin pin = GpioController.GetDefault().OpenStm32Pin(pinDef.Port, pinDef.Pin);
                pin.SetDriveMode(GpioPinDriveMode.Output);
                pin.Write(GpioPinValue.Low);
                this.powerControlPins.Add(pin);
            }
        }

        public void EnablePowerToAll(int delayBetweenStarts)
        {
            for (int i = 0; i < this.powerControlPins.Count; i++)
            {
                EnablePowerToSingle(i);
                System.Threading.Thread.Sleep(delayBetweenStarts);
            }
        }

        public void DisablePowerToAll(int delayBetweenStops)
        {
            for (int i = 0; i < this.powerControlPins.Count; i++)
            {
                DisablePowerToSingle(i);
                System.Threading.Thread.Sleep(delayBetweenStops);
            }
        }

        public void EnablePowerToSingle(int i)
        {
            GpioPin pinToChange = (GpioPin)powerControlPins[i];
            pinToChange.Write(GpioPinValue.High);
        }
        
        public void DisablePowerToSingle(int i)
        {
            GpioPin pinToChange = (GpioPin)powerControlPins[i];
            pinToChange.Write(GpioPinValue.Low);
        }
    }
}
