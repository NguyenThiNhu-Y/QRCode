using QRCode.MongoDB;
using Xunit;

namespace QRCode
{

    [CollectionDefinition(QRCodeTestConsts.CollectionDefinitionName)]
    public class QRCodeWebCollection : QRCodeMongoDbCollectionFixtureBase
    {

    }
}