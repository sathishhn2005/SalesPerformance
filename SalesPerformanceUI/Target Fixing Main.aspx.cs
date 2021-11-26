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
            SqlDataAdapter sda = new SqlDataAdapter("select * from TargetFixing", con);
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
                SqlDataAdapter sdaa = new SqlDataAdapter("select * from TargetFixing where BusinessType='" + BusinessType + "' or Producer='" + Producer + "' or ProducerName='" + ProducerName + "'", con);
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
                SqlConnection con = new SqlConnection(ST);
                SqlDataAdapter sdaa = new SqlDataAdapter("select * from TargetFixing where BusinessType='" + BusinessType + "' or Producer='" + Producer + "' or ProducerName='" + ProducerName + "'", con);
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

        protected void btnClear_Click(object sender, EventArgs e)
        {

        }

        protected void btnClear_Click1(object sender, EventArgs e)
        {

        }
    }
}