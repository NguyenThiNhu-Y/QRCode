using System;
using Mongo2Go;

namespace QRCode.MongoDB
{

    public class QRCodeMongoDbFixture : IDisposable
    {
        private static readonly MongoDbRunner MongoDbRunner;
        public static readonly string ConnectionString;

        static QRCodeMongoDbFixture()
        {
            MongoDbRunner = MongoDbRunner.Start(singleNodeReplSet: true, singleNodeReplSetWaitTimeout: 20);
            ConnectionString = MongoDbRunner.ConnectionString;
        }

        public void Dispose()
        {
            MongoDbRunner?.Dispose();
        }
    }
}