using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//identity reference 
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace workoutplanner
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // Use the connection from the web.config file to make a new identity user
            var userStore = new UserStore<IdentityUser>();
            var manager = new UserManager<IdentityUser>(userStore);

            // populate the new user from the register form 
            var user = new IdentityUser()
            {
                UserName = txtUsername.Text
            };
            //save the user 
            IdentityResult result = manager.Create(user, txtPassword.Text);

            // evaluate the result
            if (result.Succeeded)
            {

                Response.Redirect("login.aspx");
            }
            else
            {
                lblMessage.Text = result.Errors.FirstOrDefault();
                lblMessage.CssClass = "alert alert-danger";
            }
        }
    }
}