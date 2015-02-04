using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CommunityMedicineBangladesh.Startup))]
namespace CommunityMedicineBangladesh
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
