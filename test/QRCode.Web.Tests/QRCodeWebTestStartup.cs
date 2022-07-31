using System;
using Microsoft.AspNetCore.Builder;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using Volo.Abp;

namespace QRCode
{

    public class QRCodeWebTestStartup
    {
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddApplication<QRCodeWebTestModule>();
        }

        public void Configure(IApplicationBuilder app, ILoggerFactory loggerFactory)
        {
            app.InitializeApplication();
        }
    }
}