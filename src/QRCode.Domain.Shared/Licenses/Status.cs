using System;
using System.Collections.Generic;
using System.Text;

namespace QRCode.Licenses
{
    public static class DefaultUploadFile
    {
        public const string UploadFileLicense = "/UploadFileLicenses/";
    }
    public enum Status
    {
        All,
        Waiting,
        Approved1,
        Approved2,
        TakeBack,
        Rejected

    }
}
