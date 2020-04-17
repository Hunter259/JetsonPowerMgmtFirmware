namespace JetsonPowerMgmtFirmware.PowerControl
{
    using System;
    using System.Collections;
    using System.Text;
    using Windows.Devices.Gpio;
    using STM32 = nanoFramework.Hardware.Stm32;

    /// <summary>
    /// Defines GPIO pins in an easy to use format
    /// </summary>
    public struct GPIOPinDef
    {
        /// <summary>
        /// Port that pin resides in ('A', 'B', etc.)
        /// </summary>
        public char Port;

        /// <summary>
        /// Output pin that is connected to PMM
        /// </summary>
        public byte Pin;
    }

    /// <summary>
    /// Controller class for power output control pins
    /// </summary>
    public class PWRController
    {
        /// <summary>
        /// List of all in use power control pins
        /// </summary>
        private ArrayList powerControlPins;

        /// <summary>
        /// Initializes a new instance of the <see cref="PWRController"/> class
        /// </summary>
        /// <param name="GPIOPinDefs">List of <see cref="GPIOPinDef"/> objects to create <see cref="GpioPin"/> list</param>
        public PWRController(ArrayList GPIOPinDefs)
        {
            this.powerControlPins = new ArrayList();
            foreach (GPIOPinDef pinDef in GPIOPinDefs)
            {
                GpioPin pin = GpioController.GetDefault().OpenStm32Pin(pinDef.Port, pinDef.Pin);
                pin.SetDriveMode(GpioPinDriveMode.Output);
                pin.Write(GpioPinValue.Low); // Disables power output at startup
                this.powerControlPins.Add(pin);
            }
        }

        /// <summary>
        /// Enables power output from PMM to all modules
        /// </summary>
        /// <param name="delayBetweenStarts">Specifies delay between each modules power up to decrease current spiking</param>
        public void EnablePowerToAll(int delayBetweenStarts)
        {
            for (int i = 0; i < this.powerControlPins.Count; i++)
            {
                this.EnablePowerToSingle(i);
                System.Threading.Thread.Sleep(delayBetweenStarts);
            }
        }

        /// <summary>
        /// Disables power output from PMM to all modules
        /// </summary>
        /// <param name="delayBetweenStops">Specifies delay between each modules power down to decrease transients</param>
        public void DisablePowerToAll(int delayBetweenStops)
        {
            for (int i = 0; i < this.powerControlPins.Count; i++)
            {
                this.DisablePowerToSingle(i);
                System.Threading.Thread.Sleep(delayBetweenStops);
            }
        }

        /// <summary>
        /// Enables power output from PMM to specified device
        /// </summary>
        /// <param name="i">Specifies which device to power up</param>
        public void EnablePowerToSingle(int i)
        {
            GpioPin pinToChange = (GpioPin)this.powerControlPins[i];
            pinToChange.Write(GpioPinValue.High);
        }
        
        /// <summary>
        /// Disables power output from PMM to specified device
        /// </summary>
        /// <param name="i">Specified which device to power down</param>
        public void DisablePowerToSingle(int i)
        {
            GpioPin pinToChange = (GpioPin)this.powerControlPins[i];
            pinToChange.Write(GpioPinValue.Low);
        }
    }
}
