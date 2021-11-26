using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SalesPerformanceUI
{
    public partial class Index : System.Web.UI.Page
    {
        string ST = ConnectionString.GetConnectionString();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindProducerDropDown();
                BindProducerTypeDropDown();
                GetMISDashBoardLoad("", "");
            }
        }
        private long BindProducerDropDown() {
            long returnCode = -1;
          
            SqlConnection con = new SqlConnection(ST);
            SqlDataAdapter sdaa = new SqlDataAdapter("select RoleId,RoleName From rolemaster where RoleName<>'Admin'", con);
            
            DataSet dsa = new DataSet();
            sdaa.Fill(dsa);
            ddlProducer.DataSource = dsa;
            ddlProducer.DataBind();
            ddlProducer.DataTextField = "RoleName";
            ddlProducer.DataValueField = "RoleId";
            ddlProducer.DataBind();
            return returnCode;
        }
        private long BindProducerTypeDropDown()
        {
            long returnCode = -1;

            SqlConnection con = new SqlConnection(ST);
            SqlDataAdapter sdaa = new SqlDataAdapter("select ProducerCodeId,ProducerName From [ProducerCodeMaster]", con);
            DataSet dsa = new DataSet();
            sdaa.Fill(dsa);
            ddlProducerType.DataSource = dsa;
            ddlProducerType.DataBind();

            ddlProducerType.DataTextField = "ProducerName";
            ddlProducerType.DataValueField = "ProducerCodeId";
            ddlProducerType.DataBind();
            return returnCode;
        }
        private long GetMISDashBoardLoad(string Producer, string ProducerType)
        {
            long returnCode = -1;
            using (SqlConnection con = new SqlConnection(ST))
            {
                SqlCommand cmd = new SqlCommand
                {
                    CommandText = "SP_GetMISDashBoard"
                };
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = con;
                cmd.Parameters.AddWithValue("@Producer", Producer);
                cmd.Parameters.AddWithValue("@ProducerName", ProducerType);
                try
                {
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        
                        TotalAvailableProspects.InnerText = reader.GetValue(0).ToString();
                        TotalConvertedProspects.InnerText = reader.GetValue(1).ToString();
                        //To be changed
                        TotalAvailableProspects.InnerText = reader.GetValue(3).ToString();

                        TotalAvailableProspects.InnerText = reader.GetValue(4).ToString();
                        TotalAvailableProspects.InnerText = reader.GetValue(5).ToString();
                        TotalAvailableProspects.InnerText = reader.GetValue(6).ToString();

                        TotalAvailableProspects.InnerText = reader.GetValue(7).ToString();
                        TotalAvailableProspects.InnerText = reader.GetValue(8).ToString();
                        TotalAvailableProspects.InnerText = reader.GetValue(9).ToString();

                        TotalAvailableProspects.InnerText = reader.GetValue(10).ToString();
                        TotalAvailableProspects.InnerText = reader.GetValue(11).ToString();
                        TotalAvailableProspects.InnerText = reader.GetValue(12).ToString();
                        //EmailId = reader.GetValue(1).ToString();
                    }
                    reader.Close();
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
            }
            return returnCode;
        }

        protected void ProducerType_TextChanged(object sender, EventArgs e)
        {
            string Producer = string.Empty;
            string ProducerType = string.Empty;
            Producer = ddlProducer.SelectedItem.Text;
            ProducerType = ddlProducerType.SelectedItem.Text;
            GetMISDashBoardLoad(Producer, ProducerType);
        }
    }
}

