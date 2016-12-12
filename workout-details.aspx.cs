using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// referencing the model binding library
using System.Web.ModelBinding;

namespace workoutplanner
{
    public partial class workout_details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //connect to db 
            var conn = new workoutsEntities();

            //create a new workout object 
            chest w = new chest();

            //fill the properties of the new object 
            w.workout_num = Convert.ToInt32(txtNum.Text); 
            w.workout_name = txtName.Text;
            w.sets_num = txtSetsNum.Text;
            w.intensity_num = txtIntensity.Text;
            w.link_url = txtUrl.Text;
            //save the new object to the db
            conn.chests.Add(w);
            conn.SaveChanges();
            Response.Redirect("chest.aspx");
        }
    }
}