using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace workoutplanner
{
    public partial class shoulders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // get the chest workouts and display in grid
            getchest();
        }
        protected void getchest()
        {
            //connect to the db 
            var conn = new workoutsEntities();
            //linq query 
            var chests = from c in conn.chests
                         select c;
            //display the result in the gridview
            grdShoulders.DataSource = chests.ToList();
            grdShoulders.DataBind();
        }
        //delete function 
        protected void grdChest_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //which row in the grid the user clicked

            Int32 gridIndex = e.RowIndex;

            //find the ID value in the selected row

            Int32 workout_num = Convert.ToInt32(grdShoulders.DataKeys[gridIndex].Value);

            //connect to the db

            var conn = new workoutsEntities();

            chest d = new chest();

            d.workout_num = workout_num;

            conn.chests.Attach(d);

            conn.chests.Remove(d);

            conn.SaveChanges();

            // refresh the gridview
            getchest();


        }
    }
}
    
