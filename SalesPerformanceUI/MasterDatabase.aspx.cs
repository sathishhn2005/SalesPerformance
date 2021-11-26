using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.OleDb;

namespace SalesPerformanceUI
{
    public partial class MasterDatabase : System.Web.UI.Page
    {
        string ST = ConnectionString.GetConnectionString();

        protected void Page_Load(object sender, EventArgs e)
        {
            refreshdata();


        }
   
        public void refreshdata()
        {
            SqlConnection con = new SqlConnection(ST);
            SqlDataAdapter sda = new SqlDataAdapter("select * from TargetFixing", con);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void TransGrid_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void TransGrid_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void TransGrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void TransGrid_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //string ClaimNo;
            //int flag = 0;
            //Response.Redirect("AddClaims.aspx?Val=" + ClaimNo + "&flag=" + flag + "");
            Response.Redirect("AddMasterDatabase");
        }

        protected void btnMotSearch_Click(object sender, EventArgs e)
        {

        }

        protected void btnMotClear_Click(object sender, EventArgs e)
        {

        }

        protected void btnBulkUpload_Click(object sender, EventArgs e)
        {

        }

        protected void btnBulkUpload_Click1(object sender, EventArgs e)
        {

        }

        protected void btnAddNewPolicy_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddMasterDatabase");

        }
    }
}