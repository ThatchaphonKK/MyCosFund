using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MyCosFund.Startup))]
namespace MyCosFund
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
