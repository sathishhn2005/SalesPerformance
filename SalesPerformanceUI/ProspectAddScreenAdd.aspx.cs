using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace SalesPerformanceUI
{
    public partial class ProspectAddScreenAdd : System.Web.UI.Page
    {
        string ST = ConnectionString.GetConnectionString();
        int flag = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                refreshdata();
                var yourFile = this.Request.Files["excel-file"];

            }


            if (!IsPostBack)
            {



                if (Request.QueryString["Val"] != null && Request.QueryString["Val"] != string.Empty)
                {
                    ViewState["Id"] = Request.QueryString["Val"];
                    binddate(ViewState["Id"].ToString());
                }
                if (Request.QueryString["flag"] != null)
                {
                    flag = Convert.ToInt32(Request.QueryString["flag"]);
                    binddate(ViewState["Id"].ToString());
                }

            }


        }

        public void refreshdata()
        {
        }
            public void binddate(String Id)
        {
            SqlConnection con = new SqlConnection(ST);
            SqlDataAdapter sda = new SqlDataAdapter("select * from AddProspect where Id='" + Id + "'", con);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                DDProducer.Text = ds.Tables[0].Rows[0]["Producer"].ToString();
                DDProducerName.Text = ds.Tables[0].Rows[0]["ProducerName"].ToString();
                PoliciesName.Text = ds.Tables[0].Rows[0]["ProductName"].ToString();
                txtCustName.Text = ds.Tables[0].Rows[0]["CustomerName"].ToString();
                txtEstPremium.Text = ds.Tables[0].Rows[0]["EstdPremium"].ToString();
                txtExpDateOfConv.Text = ds.Tables[0].Rows[0]["ExpDateOfConv"].ToString();
                txtPolicyType.Text = ds.Tables[0].Rows[0]["PolicyType"].ToString();
                txtExpDate.Text = ds.Tables[0].Rows[0]["ExpiryDate"].ToString();
                txtExpRate.Text = ds.Tables[0].Rows[0]["ExpiryRate"].ToString();
                DDStatus.Text = ds.Tables[0].Rows[0]["Status"].ToString();
            }
        }
        protected void ButClear_Click(object sender, EventArgs e)
        {
         
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void ButClear_Click1(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                if (string.IsNullOrEmpty(txtCustName.Text) || string.IsNullOrEmpty(txtEstPremium.Text))
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Please enter mandatory fields');", true);
                }
                else
                {
                    SqlConnection con = new SqlConnection(ST);
                    try
                    {
                        con.Open();
                        SqlCommand cmd = new SqlCommand("SPAPInsert", con);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@Producer", SqlDbType.NVarChar).Value = DDProducer.Text.ToString();
                        cmd.Parameters.Add("@ProducerName", SqlDbType.NVarChar).Value = DDProducerName.Text.ToString();
                        cmd.Parameters.Add("@ProductName", SqlDbType.NVarChar).Value = PoliciesName.Text.ToString();
                        cmd.Parameters.Add("@CustomerName", SqlDbType.NVarChar).Value = txtCustName.Text.ToString();
                        cmd.Parameters.Add("@EstdPremium", SqlDbType.Float).Value = txtEstPremium.Text.ToString();
                        cmd.Parameters.Add("@ExpDateOfConv", SqlDbType.NVarChar).Value = txtExpDateOfConv.Text.ToString();
                        cmd.Parameters.Add("@PolicyType", SqlDbType.NVarChar).Value = txtPolicyType.Text.ToString();
                        cmd.Parameters.Add("@ExpiryDate", SqlDbType.NVarChar).Value = txtExpDate.Text.ToString();
                        cmd.Parameters.Add("@ExpiryRate", SqlDbType.NVarChar).Value = txtExpRate.Text.ToString();
                        cmd.Parameters.Add("@Status", SqlDbType.NVarChar).Value = DDStatus.Text.ToString();

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
            }
            catch (Exception ex)
            {
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ST);
                try
                {

                    con.Open();
                    SqlCommand cmd = new SqlCommand("SPAPUpdate", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@Id", SqlDbType.NVarChar).Value = ViewState["Id"];
                    cmd.Parameters.Add("@Producer", SqlDbType.NVarChar).Value = DDProducer.Text;
                    cmd.Parameters.Add("@ProducerName", SqlDbType.NVarChar).Value = DDProducerName.Text;
                    cmd.Parameters.Add("@ProductName", SqlDbType.NVarChar).Value = PoliciesName.Text;
                    cmd.Parameters.Add("@CustomerName", SqlDbType.NVarChar).Value = txtCustName.Text;
                    cmd.Parameters.Add("@EstdPremium", SqlDbType.Float).Value = txtEstPremium.Text;
                    cmd.Parameters.Add("@ExpDateOfConv", SqlDbType.NVarChar).Value = txtExpDateOfConv.Text;
                    cmd.Parameters.Add("@PolicyType", SqlDbType.NVarChar).Value = txtPolicyType.Text;
                    cmd.Parameters.Add("@ExpiryDate", SqlDbType.NVarChar).Value = txtExpDate.Text;
                    cmd.Parameters.Add("@ExpiryRate", SqlDbType.NVarChar).Value = txtExpRate.Text;
                    cmd.Parameters.Add("@Status", SqlDbType.NVarChar).Value = DDStatus.Text;
                    int output12 = cmd.ExecuteNonQuery();
                    if (output12 > 0)
                    {

                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Claim Updated Successfully');", true);
                        Response.Redirect("ProspectAddScreen.aspx");
                    }
                    else if (output12 < 0)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Errror');", true);
                    }



                }
                catch (Exception ex)
                {

                    throw ex;
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
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
    }
}