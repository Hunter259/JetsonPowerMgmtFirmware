namespace JetsonPowerMgmtFirmware.Configuration
{
    using System;
    using System.Text;
    using nanoFramework.Json;
    using Windows.Storage;

    /// <summary>
    /// Handles JSON serialization and deserialization of our UserConfiguration class
    /// Modification of https://github.com/nanoframework/Samples/blob/master/samples/Json%20nanoFramework/JsonConfigurationStore/ConfigurationStore.cs
    /// </summary>
    public class UserConfigurationStore
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="UserConfigurationStore"/> class
        /// </summary>
        public UserConfigurationStore()
        {
            this.ConfigFilePath = "I:\\UserConfiguration.json";
        }

        /// <summary>
        /// Gets or sets the controller for folder level IO
        /// </summary>
        private StorageFolder ConfigFolder { get; set; }

        /// <summary>
        /// Gets or sets the path of the configuration file
        /// </summary>
        private string ConfigFilePath { get; set; }

        /// <summary>
        /// Clears configuration file and replaces with default
        /// </summary>
        /// <returns>True if successful, false otherwise</returns>
        public bool ClearConfig()
        {
            return this.WriteConfig(
                new UserConfiguration() 
            {
                PowerUpDelay = 500,
                PowerDownDelay = 500,
                PowerOnResetEnable = false
            });
        }

        /// <summary>
        /// Returns the current configuration file or creates a new one in the event one does not exist
        /// </summary>
        /// <returns>Current or new configuration</returns>
        public UserConfiguration GetConfig()
        {
            var internalDevices = Windows.Storage.KnownFolders.InternalDevices;
            var flashDevices = internalDevices.GetFolders();
            var configFolder = flashDevices[0];
            UserConfiguration config;
            try
            {
                var configFile = StorageFile.GetFileFromPath(this.ConfigFilePath);

                string json = FileIO.ReadText(configFile);
                config = (UserConfiguration)JsonSerializer.DeserializeString(json);
            }
            catch
            {
                config = new UserConfiguration()
                {
                    PowerUpDelay = 500,
                    PowerDownDelay = 500,
                    PowerOnResetEnable = false
                };
            }

            return config;
        }

        /// <summary>
        /// Serializes configuration file and writes to storage
        /// </summary>
        /// <param name="config">Configuration file to serialize and write to storage</param>
        /// <returns>True if successful, false otherwise</returns>
        public bool WriteConfig(UserConfiguration config)
        {
            try
            {
                var configJson = JsonSerializer.SerializeObject(config);
                StorageFile configFile = this.ConfigFolder.CreateFile("configuration.json", CreationCollisionOption.ReplaceExisting);
                FileIO.WriteText(configFile, configJson);
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}
