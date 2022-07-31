using Volo.Abp.Settings;

namespace QRCode.Settings
{

    public class QRCodeSettingDefinitionProvider : SettingDefinitionProvider
    {
        public override void Define(ISettingDefinitionContext context)
        {
            //Define your own settings here. Example:
            //context.Add(new SettingDefinition(QRCodeSettings.MySetting1));
        }
    }
}