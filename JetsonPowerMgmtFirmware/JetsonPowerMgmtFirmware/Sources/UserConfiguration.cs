namespace JetsonPowerMgmtFirmware.Configuration
{
    /// <summary>
    /// Container class for user configuration data
    /// </summary>
    public class UserConfiguration
    {
        /// <summary>
        /// Gets or sets the user defined delay for all device power up
        /// </summary>
        public int PowerUpDelay { get; set; }

        /// <summary>
        /// Gets or sets the user defined delay for all device power down
        /// </summary>
        public int PowerDownDelay { get; set; }

        /// <summary>
        /// Gets or sets the user defined action for powering up all devices in the case
        /// of a device reset
        /// </summary>
        public bool PowerOnResetEnable { get; set; }
    }
}
