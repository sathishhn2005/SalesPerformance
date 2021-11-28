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
    public partial class Target_Fixing_Main : System.Web.UI.Page
    {
        string ST = ConnectionString.GetConnectionString();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                refreshdata();
            }

        }
        public void refreshdata()
        {
            SqlConnection con = new SqlConnection(ST);
            SqlDataAdapter sda = new SqlDataAdapter("select * from TargetFixing where PolicyEndDate between DATEADD(month, -2, GETDATE()) and DATEADD(month, 2, GETDATE())", con);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            TargetFixGrid.DataSource = ds;
            TargetFixGrid.DataBind();
        }

        protected void TargetFixGrid_RowEditing(object sender, GridViewEditEventArgs e)
        {

            int Id = Convert.ToInt32(TargetFixGrid.DataKeys[e.NewEditIndex].Value);

            int flag = 0;
            Response.Redirect("Target Fixing.aspx?Val=" + Id + "&flag=" + flag + "");


        }




        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                TargetFixGrid.Visible = true;
                string BusinessType = txtBusinesssType.Text;
                string Producer = txtProducer.Text;
                string ProducerName = txtProducerName.Text;
                SqlConnection con = new SqlConnection(ST);
                SqlDataAdapter sdaa = new SqlDataAdapter("select * from TargetFixing where PolicyEndDate between DATEADD(month, -2, GETDATE()) and DATEADD(month, 2, GETDATE()) and BusinessType='" + BusinessType + "' or Producer='" + Producer + "' or ProducerName='" + ProducerName + "'", con);
                DataSet dsa = new DataSet();
                sdaa.Fill(dsa);
                TargetFixGrid.DataSource = dsa;
                TargetFixGrid.DataBind();



            }
            catch (Exception ex)
            {

                throw ex;
            }

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                TargetFixGrid.Visible = true;
                string BusinessType = txtBusinesssType.Text;
                string Producer = txtProducer.Text;
                string ProducerName = txtProducerName.Text;
                DateTime StartDate = new DateTime();
                DateTime EndDate = new DateTime();
                if (!string.IsNullOrEmpty(txtPolicyFromDate.Text) && !string.IsNullOrEmpty(txtPolicyToDate.Text))
                {
                    StartDate = DateTime.Parse(txtPolicyFromDate.Text);
                    EndDate = DateTime.Parse(txtPolicyToDate.Text);
                }

                DateTime PolicyFDate = StartDate == Convert.ToDateTime("01-01-0001 12.00.00 AM") ? Convert.ToDateTime("01-01-1753 12.00.00 AM") : StartDate;
                DateTime PolicyTDate = EndDate == Convert.ToDateTime("01-01-0001 12.00.00 AM") ? Convert.ToDateTime("01-01-1753 12.00.00 AM") : EndDate;

                SearchTargetFixing(Producer, BusinessType, ProducerName, PolicyFDate, PolicyTDate);

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
        private long SearchTargetFixing(string Producer, string BusinessType, string ProducerName, DateTime StartDate, DateTime EndDate)
        {
            long returnCode = -1;
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(ST))
            {
                SqlCommand cmd = new SqlCommand
                {
                    CommandText = "SP_GetTargetFixing"
                };
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = con;
                cmd.Parameters.AddWithValue("@BusinessType", BusinessType);
                cmd.Parameters.AddWithValue("@Producer", Producer);
                cmd.Parameters.AddWithValue("@ProducerName", ProducerName);
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
                    TargetFixGrid.DataSource = ds;
                    TargetFixGrid.DataBind();

                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
            }
            return returnCode;
        }
        protected void btnClear_Click(object sender, EventArgs e)
        {

        }

        protected void btnClear_Click1(object sender, EventArgs e)
        {

        }
    }
}