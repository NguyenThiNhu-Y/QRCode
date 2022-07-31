namespace QRCode.Permissions
{

    public static class QRCodePermissions
    {
        public const string GroupName = "QRCode";

        //Add your own permission names. Example:
        //public const string MyPermission1 = GroupName + ".MyPermission1";
        public static class QRCode
        {
            public const string Default = GroupName + ".License";
            public const string Create = GroupName + ".Create";
            public const string Edit = GroupName + ".Edit";
            public const string Delete = GroupName + ".Delete";
        }
        
    }
}