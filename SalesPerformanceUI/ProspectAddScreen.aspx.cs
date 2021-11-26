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

    public partial class ProspectAddScreen : System.Web.UI.Page
    {
        string ST = ConnectionString.GetConnectionString();

        protected void Page_Load(object sender, EventArgs e)
        {
            refreshdata();
        }

        public void refreshdata()
        {
            SqlConnection con = new SqlConnection(ST);
            SqlDataAdapter sda = new SqlDataAdapter("select * from AddProspect", con);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            ProspectGrid.DataSource = ds;
            ProspectGrid.DataBind();
        }

        protected void TargetFixGrid_RowEditing(object sender, GridViewEditEventArgs e)
        {
            
        }

        protected void TargetFixGrid_RowEditing1(object sender, GridViewEditEventArgs e)
        {

        }

        protected void ProspectGrid_RowEditing(object sender, GridViewEditEventArgs e)
        {
            int Id = Convert.ToInt32(ProspectGrid.DataKeys[e.NewEditIndex].Value);
            int flag = 0;
            Response.Redirect("ProspectAddScreenAdd.aspx?Val=" + Id + "&flag=" + flag + "");

            
        }

        protected void ButSearch_Click(object sender, EventArgs e)
        {
            try
            {
                ProspectGrid.Visible = true;
                string ProductName = txtproductName.Text;
                string CustomerName = txtCustName.Text;
                string PolicyType = txtPolicyType.Text;
                SqlConnection con = new SqlConnection(ST);
                SqlDataAdapter sdaa = new SqlDataAdapter("select * from AddProspect where ProductName='" + ProductName + "' or CustomerName='" + CustomerName + "' or PolicyType='" + PolicyType + "'", con);
                DataSet dsa = new DataSet();
                sdaa.Fill(dsa);
                ProspectGrid.DataSource = dsa;
                ProspectGrid.DataBind();



            }
            catch (Exception ex)
            {

                throw ex;
            }


        }

        protected void ButClear_Click(object sender, EventArgs e)
        {

        }

        protected void ButAddProspect_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProspectAddScreenAdd.aspx");
        }

        protected void ButClear_Click1(object sender, EventArgs e)
        {
            

        }

        protected void ButAddProspect_Click1(object sender, EventArgs e)
        {
            Response.Redirect("ProspectAddScreenAdd.aspx");
        }
    }
}