using QRCode.Localization;
using Volo.Abp.Authorization.Permissions;
using Volo.Abp.Localization;

namespace QRCode.Permissions
{

    public class QRCodePermissionDefinitionProvider : PermissionDefinitionProvider
    {
        public override void Define(IPermissionDefinitionContext context)
        {
            var myGroup = context.AddGroup(QRCodePermissions.GroupName, L("Permission:LicenseManager"));

            var QRCodePermission = myGroup.AddPermission(QRCodePermissions.QRCode.Default, L("Permission:License"));
            QRCodePermission.AddChild(QRCodePermissions.QRCode.Create, L("Permission:License.Create"));
            QRCodePermission.AddChild(QRCodePermissions.QRCode.Edit, L("Permission:License.Edit"));
            QRCodePermission.AddChild(QRCodePermissions.QRCode.Delete, L("Permission:License.Delete"));
            //Define your own permissions here. Example:
            //myGroup.AddPermission(QRCodePermissions.MyPermission1, L("Permission:MyPermission1"));
        }

        private static LocalizableString L(string name)
        {
            return LocalizableString.Create<QRCodeResource>(name);
        }
    }
}
