using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace SalesPerformanceUI
{
    public partial class Target_Fixing : System.Web.UI.Page
    {
        string ST = ConnectionString.GetConnectionString();
        int flag = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
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
                    ///  binddate(ViewState["Id"].ToString());
                }
                //DDProducer
                BindProducerDropDown();

            }

        }
        private long BindProducerDropDown()
        {
            long returnCode = -1;
            if (DDProducer.Items.Count.Equals(0))
            {
                SqlConnection con = new SqlConnection(ST);
                SqlDataAdapter sdaa = new SqlDataAdapter("select RoleId,RoleName From rolemaster where RoleName<>'Admin'", con);

                DataSet dsa = new DataSet();
                sdaa.Fill(dsa);
                DDProducer.DataSource = dsa;
                
                DDProducer.DataBind();
                DDProducer.DataTextField = "RoleName";
                DDProducer.DataValueField = "RoleId";
                DDProducer.DataBind();
                DDProducer.Items.Insert(0, "Select");
            }

            return returnCode;
        }
        private long BindProducerTypeDropDown(int ddlProducer)
        {
            long returnCode = -1;
            if (ddlProducer > 0)
            {

                SqlConnection con = new SqlConnection(ST);
                SqlDataAdapter sdaa = new SqlDataAdapter("select ProducerCodeId,ProducerName From [ProducerCodeMaster] where RoleId='" + ddlProducer + "'", con);
                DataSet dsa = new DataSet();
                sdaa.Fill(dsa);
                DDProducerName.DataSource = dsa;
                DDProducerName.DataBind();

                DDProducerName.DataTextField = "ProducerName";
                DDProducerName.DataValueField = "ProducerCodeId";
                DDProducerName.DataBind();
            }
            return returnCode;
        }
        public void binddate(String Id)
        {
            SqlConnection con = new SqlConnection(ST);
            SqlDataAdapter sda = new SqlDataAdapter("select * from TargetFixing where Id='" + Id + "'", con);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                BindProducerDropDown();
                DDBusinessType.Text = ds.Tables[0].Rows[0]["BusinessType"].ToString();
                DDProducer.SelectedItem.Text = ds.Tables[0].Rows[0]["Producer"].ToString();
                string Producer = ds.Tables[0].Rows[0]["Producer"].ToString();
                if (Producer.Equals("Agent"))
                {
                    BindProducerTypeDropDown(2);
                }
                else if (Producer.Equals("Broker"))
                {
                    BindProducerTypeDropDown(3);
                }
                else if (Producer.Equals("Branches"))
                {
                    BindProducerTypeDropDown(4);
                }
                else if (Producer.Equals("Bank assurance"))
                {
                    BindProducerTypeDropDown(5);
                }
                else if (Producer.Equals("Direct Head office"))
                {
                    BindProducerTypeDropDown(6);
                }
                else if (Producer.Equals("Direct corporate office"))
                {
                    BindProducerTypeDropDown(7);
                }
                else if (Producer.Equals("Direct retail office"))
                {
                    BindProducerTypeDropDown(8);
                }
                DDProducerName.SelectedItem.Value = ds.Tables[0].Rows[0]["ProducerName"].ToString();
                DropDownList2.Text = ds.Tables[0].Rows[0]["ProductName"].ToString();
                txtPolicyNumber.Text = ds.Tables[0].Rows[0]["PolicyNumber"].ToString();
                //txtPolicyStartDate.Text ds.Tables[0].Rows[0]["PolicyStartDate"].ToString("yyyy-MM-dd");
                txtPolicyStartDate.Text = DateTime.Parse((ds.Tables[0].Rows[0]["PolicyStartDate"].ToString())).ToString("yyyy-MM-dd");
                txtPolicyEndDate.Text = DateTime.Parse((ds.Tables[0].Rows[0]["PolicyEndDate"].ToString())).ToString("yyyy-MM-dd");

                //   txtPolicyStartDate.Text = ds.Tables[0].Rows[0]["PolicyStartDate"].ToString("yyyy-MM-dd");
                // txtPolicyEndDate.Text = ds.Tables[0].Rows[0]["PolicyEndDate"].ToString();
                txtRenewalBase.Text = ds.Tables[0].Rows[0]["RenewalBase"].ToString();
                txtProbableRenewal.Text = ds.Tables[0].Rows[0]["ProbableBase"].ToString();
                DDStatus.Text = ds.Tables[0].Rows[0]["Status"].ToString();
            }
        }

        protected void DDProducer_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (!DDProducer.SelectedItem.Value.Equals("Select"))
            {
                int ddlProducerValue = Convert.ToInt32(DDProducer.SelectedItem.Value);
                BindProducerTypeDropDown(ddlProducerValue);
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

        protected void BtnSave_Click(object sender, EventArgs e)
        {

            try
            {
                if (string.IsNullOrEmpty(txtRenewalBase.Text))
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Please enter mandatory fields');", true);
                }
                else
                {
                    SqlConnection con = new SqlConnection(ST);
                    try
                    {
                        con.Open();
                        SqlCommand cmd = new SqlCommand("SPTFInsert", con);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@BusinessType", SqlDbType.NVarChar).Value = DDBusinessType.SelectedItem.Text.ToString();
                        cmd.Parameters.Add("@Producer", SqlDbType.NVarChar).Value = DDProducer.SelectedItem.Value.ToString();
                        cmd.Parameters.Add("@ProducerName", SqlDbType.NVarChar).Value = DDProducerName.SelectedItem.Value.ToString();
                        cmd.Parameters.Add("@ProductName", SqlDbType.NVarChar).Value = DropDownList2.SelectedItem.Text.ToString();
                        cmd.Parameters.Add("@PolicyNumber", SqlDbType.NVarChar).Value = txtPolicyNumber.Text.ToString();

                        cmd.Parameters.Add("@PolicyStartDate", SqlDbType.DateTime).Value = txtPolicyStartDate.Text.ToString();
                        cmd.Parameters.Add("@PolicyEndDate", SqlDbType.DateTime).Value = txtPolicyEndDate.Text.ToString();
                        cmd.Parameters.Add("@RenewalBase", SqlDbType.NVarChar).Value = txtRenewalBase.Text.ToString();
                        cmd.Parameters.Add("@ProbableBase", SqlDbType.NVarChar).Value = txtProbableRenewal.Text.ToString();
                        cmd.Parameters.Add("@Status", SqlDbType.NVarChar).Value = DDStatus.SelectedItem.Text.ToString();
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

        protected void BtnClose_Click(object sender, EventArgs e)
        {
            Response.Redirect("Target Fixing Main.aspx");
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ST);
                try
                {

                    con.Open();
                    SqlCommand cmd = new SqlCommand("SPTFUpdate", con)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add("@Id", SqlDbType.NVarChar).Value = ViewState["Id"];
                    cmd.Parameters.Add("@BusinessType", SqlDbType.NVarChar).Value = DDBusinessType.Text;
                    cmd.Parameters.Add("@Producer", SqlDbType.NVarChar).Value = DDProducer.SelectedItem.Value;
                    cmd.Parameters.Add("@ProducerName", SqlDbType.NVarChar).Value = DDProducerName.SelectedItem.Value;
                    cmd.Parameters.Add("@ProductName", SqlDbType.NVarChar).Value = DropDownList2.Text;

                    cmd.Parameters.Add("@PolicyNumber", SqlDbType.NVarChar).Value = txtPolicyNumber.Text;
                    cmd.Parameters.Add("@PolicyStartDate", SqlDbType.DateTime).Value = txtPolicyStartDate.Text.ToString();
                    cmd.Parameters.Add("@PolicyEndDate", SqlDbType.DateTime).Value = txtPolicyEndDate.Text.ToString();
                    cmd.Parameters.Add("@RenewalBase", SqlDbType.NVarChar).Value = txtRenewalBase.Text;
                    cmd.Parameters.Add("@ProbableBase", SqlDbType.NVarChar).Value = txtProbableRenewal.Text;

                    cmd.Parameters.Add("@Status", SqlDbType.NVarChar).Value = DDStatus.Text;
                    int output12 = cmd.ExecuteNonQuery();
                    if (output12 > 0)
                    {

                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Claim Updated Successfully');", true);
                        //  Response.Redirect("ProspectAddScreen.aspx");
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



    }
}
