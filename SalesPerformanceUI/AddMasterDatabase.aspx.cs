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
    public partial class AddMasterDatabase : System.Web.UI.Page
    {
        string ST = ConnectionString.GetConnectionString();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void BindProducerName(string SpName, string Value, string Text)
        {
            SqlConnection con = new SqlConnection(ST);
            con.Open();

            SqlCommand cmdEmp = new SqlCommand(SpName, con);
            cmdEmp.CommandType = CommandType.StoredProcedure;
            SqlDataReader drEmp = cmdEmp.ExecuteReader();
            if (drEmp.HasRows)
            {
                DDProducerName.DataSource = drEmp;
                DDProducerName.DataTextField = Text;
                DDProducerName.DataValueField = Value;
                DDProducerName.DataBind();

            }
            cmdEmp.Dispose();
            drEmp.Dispose();
            con.Close();
        }
        protected void DDProducer_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DDProducer.SelectedValue == "Agent")
            {
                BindProducerName("SP_AgentName", "AgentCode", "AgentName");
            }

            else if (DDProducer.SelectedValue == "Broker")
            {
                BindProducerName("SP_BrokerName", "BrokerCode", "BrokerName");
            }
            else
            {
                DDProducerName.Items.Clear();
            }
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(ST);
                try
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("AMDBInsert", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@BusinessType", SqlDbType.NVarChar).Value = DDBusinessType.Text.ToString();
                    cmd.Parameters.Add("@Producer", SqlDbType.NVarChar).Value = DDProducer.Text.ToString();
                    cmd.Parameters.Add("@ProducerName", SqlDbType.NVarChar).Value = DDProducerName.Text.ToString();
                    cmd.Parameters.Add("@ProductName", SqlDbType.NVarChar).Value = DropDownList2.Text.ToString();
                    cmd.Parameters.Add("@PolicyNumber", SqlDbType.NVarChar).Value = txtPolicyNumber.Text.ToString();
                    cmd.Parameters.Add("@PolicyStartDate", SqlDbType.DateTime).Value = txtPolicyStartDate.Text.ToString();
                    cmd.Parameters.Add("@PolicyEndDate", SqlDbType.DateTime).Value = txtPolicyEndDate.Text.ToString();
                    cmd.Parameters.Add("@Status", SqlDbType.DateTime).Value = ddstatus.Text.ToString();

                    int output1 = cmd.ExecuteNonQuery();
                    if (output1 > 0)
                    {

                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Data added Successfully');", true);
                        Response.Redirect("ProspectAddScreen.aspx");
                    }
                    else if (output1 == 0)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('null output');", true);
                    }
                    else
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Error');", true);

                }
                catch (Exception ex)
                {
                }

            }
            catch (Exception ex)
            {
            }
        }

        protected void BtnClose_Click(object sender, EventArgs e)
        {

        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {

        }
    }
}