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
            int Id = 0;
            int flag = 0;
            Id = Convert.ToInt32(GridView1.DataKeys[e.NewEditIndex].Value);

            //int flag = 0;
            Response.Redirect("AddMasterDatabase?Val=" + Id + "&flag=" + flag + "");

            //Response.Redirect("AddMasterDatabase");
        }
        private long SearchTargetFixing(string BusinessType, string PolicyNo, DateTime StartDate, DateTime EndDate)
        {
            long returnCode = -1;
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(ST))
            {
                SqlCommand cmd = new SqlCommand
                {
                    CommandText = "SP_GetTransaction"
                };
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = con;
                cmd.Parameters.AddWithValue("@BusinessType", BusinessType);
                cmd.Parameters.AddWithValue("@PolicyNo", PolicyNo);
                
                cmd.Parameters.AddWithValue("@PolicyFromDate", StartDate);
                cmd.Parameters.AddWithValue("@PolicyToDate", EndDate);
                // BusinessType = '" + BusinessType + "' or Producer = '" + Producer + "' or ProducerName = '" + ProducerName 
                try
                {
                    con.Open();
                    SqlDataAdapter sdaAdapter = new SqlDataAdapter
                    {
                        SelectCommand = cmd
                    };
                    sdaAdapter.Fill(ds);
                    GridView1.DataSource = ds;
                    GridView1.DataBind();

                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
            }
            return returnCode;
        }

        protected void btnMotSearch_Click(object sender, EventArgs e)
        {
            try
            {
                GridView1.Visible = true;
                string PolicyNo = txtPolicyNum.Text;
                string BusinessType = txtBusinesstype.Text;
                DateTime StartDate = new DateTime();
                DateTime EndDate = new DateTime();
                if (!string.IsNullOrEmpty(txtPolicyFromDate.Text) && !string.IsNullOrEmpty(txtPolicyToDate.Text))
                {
                    StartDate = DateTime.Parse(txtPolicyFromDate.Text);
                    EndDate = DateTime.Parse(txtPolicyToDate.Text);
                }

                DateTime PolicyFDate = StartDate == Convert.ToDateTime("01-01-0001 12.00.00 AM") ? Convert.ToDateTime("01-01-1753 12.00.00 AM") : StartDate;
                DateTime PolicyTDate = EndDate == Convert.ToDateTime("01-01-0001 12.00.00 AM") ? Convert.ToDateTime("01-01-1753 12.00.00 AM") : EndDate;

                SearchTargetFixing(BusinessType, PolicyNo, PolicyFDate, PolicyTDate);

                //SqlConnection con = new SqlConnection(ST);
                //SqlDataAdapter sdaa = new
                //    SqlDataAdapter("select * from TargetFixing where BusinessType='" + BusinessType + "' or Producer='" + Producer + "' or ProducerName='" + ProducerName + "'", con);
                //DataSet dsa = new DataSet();
                //sdaa.Fill(dsa);
                //TargetFixGrid.DataSource = dsa;
                //TargetFixGrid.DataBind();
            }
            catch (Exception ex)
            {

                throw ex;
            }
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