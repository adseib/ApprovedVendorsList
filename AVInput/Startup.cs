using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AVInput.Startup))]
namespace AVInput
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
