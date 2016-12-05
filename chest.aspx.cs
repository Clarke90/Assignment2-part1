using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// access the database 
using System.Web.ModelBinding;

namespace workoutplanner
{
    public partial class chest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // get the chest wokrouts and display in grid
            getchest();
        }

        protected void getchest()
        {
            //connect to the chest db 
            var conn = new workoutsEntities();
            //linq query 
            var chests = from c in conn.backs
                         select c;
            //display the result in the gridview
            grdChest.DataSource = chests.ToList();
            grdChest.DataBind();

        }
    }
}