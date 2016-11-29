using System;
using System.Threading.Tasks;
using Microsoft.Owin;
using Owin;

//got to add some references 
using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security.Cookies;

[assembly: OwinStartup(typeof(workoutplanner.Startup))]

namespace workoutplanner
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            // set up the cookie config for tracking users 
            app.UseCookieAuthentication(new CookieAuthenticationOptions
            {
                AuthenticationType = DefaultAuthenticationTypes.ApplicationCookie,
                LoginPath = new PathString("/login.aspx")
            });

        }
    }
}
