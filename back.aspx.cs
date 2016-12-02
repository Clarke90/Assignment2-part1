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
    public partial class back : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //get the table and display it in the gridview 
            getback();
        }
        protected void getback()
        {
            //connect to db
            var conn = new workoutsEntities();

            var back = from b in conn.backs
                       select b;
            // display the query result
            grdback.DataSource = back.ToList();
            grdback.DataBind();


        }
          return back;
    }
}