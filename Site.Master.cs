using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//reference owin to see if the user is logged into the site 
using Microsoft.Owin.Security;
namespace workoutplanner
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //show only certin links 
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                plhPrivate.Visible = true;
                plhPublic.Visible = false;
            }
            else
            {
                plhPrivate.Visible = false;
                plhPublic.Visible = true; 
            }
        }
    }
}