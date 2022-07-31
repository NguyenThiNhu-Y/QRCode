using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.Extensions.DependencyInjection;
using QRCode.Categories;
using QRCode.Localization;
using QRCode.MultiTenancy;
using QRCode.Permissions;
using Volo.Abp.Identity.Web.Navigation;
using Volo.Abp.SettingManagement.Web.Navigation;
using Volo.Abp.TenantManagement.Web.Navigation;
using Volo.Abp.UI.Navigation;

namespace QRCode.Web.Menus
{

    public class QRCodeMenuContributor : IMenuContributor
    {
        public async Task ConfigureMenuAsync(MenuConfigurationContext context)
        {
            if (context.Menu.Name == StandardMenus.Main)
            {
                await ConfigureMainMenuAsync(context);
            }
        }

        private static async Task ConfigureMainMenuAsync(MenuConfigurationContext context)
        {
            var administration = context.Menu.GetAdministration();
            var l = context.GetLocalizer<QRCodeResource>();

            //call appservice
            var getAppServices = context.ServiceProvider.GetService<ICategoryRepository>();
            var listCategory = await getAppServices.GetListAsync();

            if (await context.IsGrantedAsync(QRCodePermissions.QRCode.Default))
            {
                context.Menu.Items.Insert(
                   0,
                   new ApplicationMenuItem(
                       QRCodeMenus.Home,
                       l["Menu:Home"],
                       "~/",
                       icon: "fas fa-home",
                       order: 0
                   )
                );
            }
               
            //danh mục giấy phép
            var Categories = new ApplicationMenuItem(
                "Categories",
                l["Menu:Category"],
                url:""
            );
            if (await context.IsGrantedAsync(QRCodePermissions.QRCode.Default))
            {
                context.Menu.AddItem(Categories);
                foreach (var item in listCategory)
                {
                    if (item.idParent != null && item.Status)
                    {
                        Categories
                       .AddItem(
                       new ApplicationMenuItem(
                               item.name,//"Categories.DrivingPracticeCars",
                               item.name,//l["Menu:DrivingPracticeCar"],
                               url: $"/DrivingPracticeCars?IdCater={item.Id}")
                           );
                    }

                }
            }
            
            //Categories
            //       .AddItem(
            //       new ApplicationMenuItem(
            //               "Categories.DrivingPracticeCars",
            //               l["Menu:DrivingPracticeCar"],
            //               url: "/DrivingPracticeCars")
            //           );

            


            var ManagerQrCode = new ApplicationMenuItem(
                "ManagerQrCode",
                l["Menu:ManagerQrCode"]
            );
            //var License = new ApplicationMenuItem(
            //    "Licenses",
            //    l["Menu:Licenses"],
            //    url:"/Licenses"
            //);
            //var DrivingPracticeCars = new ApplicationMenuItem(
            //    "DrivingPracticeCars",
            //    l["Menu:DrivingPracticeCar"],
            //    url: "/DrivingPracticeCars"
            //);
            
            if (await context.IsGrantedAsync(QRCodePermissions.QRCode.Default))
            {
                context.Menu.AddItem(ManagerQrCode);
                //context.Menu.AddItem(License);
                //context.Menu.AddItem(DrivingPracticeCars);

                ManagerQrCode
                        .AddItem(
                        new ApplicationMenuItem(
                                "ManagerQrCode.Categories",
                                l["Menu:Category"],
                                url: "/Categories")
                            )
                        //.AddItem(
                        //new ApplicationMenuItem(
                        //        "ManagerQrCode.Licenses",
                        //        l["Menu:Licenses"],
                        //        url: "/Licenses")
                        //    )
                        .AddItem(
                        new ApplicationMenuItem(
                                "ManagerQrCode.LicensingDepartmentAuthorities",
                                l["Menu:LicensingDepartmentAuthorities"],
                                url: "/LicensingDepartmentAuthorities")
                            )
                        .AddItem(
                        new ApplicationMenuItem(
                                "ManagerQrCode.ProcessingLevels",
                                l["Menu:ProcessingLevels"],
                                url: "/ProcessingLevels")
                            );

            }

            //.AddItem(
            //new ApplicationMenuItem(
            //        "ManagerQrCode.SubmitterInformations",
            //        l["Menu:SubmitterInformation"],
            //        url: "/SubmitterInformations")
            //    );

            if (MultiTenancyConsts.IsEnabled)
            {
                administration.SetSubItemOrder(TenantManagementMenuNames.GroupName, 1);
            }
            else
            {
                administration.TryRemoveMenuItem(TenantManagementMenuNames.GroupName);
            }

            administration.SetSubItemOrder(IdentityMenuNames.GroupName, 2);
            administration.SetSubItemOrder(SettingManagementMenuNames.GroupName, 3);
        }
    }
}