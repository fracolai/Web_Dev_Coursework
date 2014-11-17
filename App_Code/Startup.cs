using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Web_Dev_Coursework.Startup))]
namespace Web_Dev_Coursework
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
