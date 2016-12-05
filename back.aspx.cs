using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//test
using System.Data.SqlClient;

// access the database 
using System.Web.ModelBinding;

namespace workoutplanner
{
    public partial class back : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void GridviewBind()
        {
            using (SqlConnection con = new SqlConnection("data source=chadsworkoutplanner.database.windows.net;initial catalog=workouts;user id=chad;password=St@ysTr0ng7070;"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * FROM back", con);
                SqlDataReader dr = cmd.ExecuteReader();
                grdback.DataSource = dr;
                grdback.DataBind();
                con.Close();
            }
        }


    }
}