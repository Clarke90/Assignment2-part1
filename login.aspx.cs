using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//references 
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security.Cookies;

namespace workoutplanner
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //init owins userstore, usermanager and user variables 
            var userStore = new UserStore<IdentityUser>();
            var userManager = new UserManager<IdentityUser>(userStore);

            //see if the user is in the database 

            var user = userManager.Find(txtUsername.Text, txtPassword.Text);

            //if the user is in the db, create a cookie and store there id then log them in
            if (user != null)
            {
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

                authenticationManager.SignIn(new Microsoft.Owin.Security.AuthenticationProperties()
                {
                    IsPersistent = false
                }, userIdentity);

                //redirect to defualt page 
                Response.Redirect("default.aspx");

            }
            else
            {
             //   lblMessage.Text = "invalid login";
              //  lblMessage.CssClass = "alert alert-danger col-sm-offset-3";
            }
        }
    }
}