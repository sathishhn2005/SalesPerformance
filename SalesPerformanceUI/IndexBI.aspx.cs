using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SalesPerformanceUI
{
    public partial class IndexBI : System.Web.UI.Page
    {
        static string ST = ConnectionString.GetConnectionString();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //BindProducerDropDown();
                //BindProducerTypeDropDown();
                //GetMISDashBoardLoad("", "");
            }
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static string GetBIDasbBoard()
        {
            //List<BIDashboard> lstBIDashBoard = (List<BIDashboard>)HttpContext.Current.Session["data"];
            List<DataPoint> dataPoints = new List<DataPoint>();
            long returnCode = Get(out List<BIDashboard> lstBIDashBoard);
            if (lstBIDashBoard.Count > 0)
            {
                dataPoints = (from item in lstBIDashBoard

                              select new DataPoint()
                              {
                                  y = item.MonthName,
                                  a = item.Available,
                                  b = item.Renewed,
                                  BusinessType = item.BusinessType
                              }).ToList();
            }
            JavaScriptSerializer js = new JavaScriptSerializer();
            //return js.Serialize(lstBIDashBoard);
            
            return js.Serialize(new
            {
                BrokerList = dataPoints.Where(x => x.BusinessType == "Broker"),
                AgentsList = dataPoints.Where(x => x.BusinessType == "Agents"),
                BranchList = dataPoints.Where(x => x.BusinessType == "Branch"),
                BankAssurance = dataPoints.Where(x => x.BusinessType == "BankAssurance"),
                DirectHeadOffice = dataPoints.Where(x => x.BusinessType == "DirectHeadOffice"),
                DirectCorporateSales = dataPoints.Where(x => x.BusinessType == "DirectCorporateSales"),
                DirectRetailSales = dataPoints.Where(x => x.BusinessType == "DirectRetailSales")
            });
        }
      
        public static long Get(out List<BIDashboard> lstBIDashBoard)
        {
            long returnCode = -1;
            lstBIDashBoard = new List<BIDashboard>();
            try
            {
                DataSet ds = new DataSet();
                string[] strBussType = { "Renewal", "Direct", "Branches", "Agent" };
                foreach (var item in strBussType)
                {
                    using (SqlConnection con = new SqlConnection(ST))
                    {
                        con.Open();
                        SqlCommand cmd = new SqlCommand
                        {
                            CommandText = "SP_GetBIDashBoardMonthWise"
                        };

                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Connection = con;
                        cmd.Parameters.AddWithValue("@BusinessType", item);

                        SqlDataAdapter sdaAdapter = new SqlDataAdapter
                        {
                            SelectCommand = cmd
                        };
                        sdaAdapter.Fill(ds);
                        //ds.Tables[0].Rows.Count;

                        if (ds.Tables[0].Rows.Count > 0)
                        {
                            lstBIDashBoard = (from DataRow dr in ds.Tables[0].Rows
                                              select new BIDashboard()
                                              {
                                                  CalenderId = Convert.ToInt32(dr["CalenderId"]),
                                                  Renewed = Convert.ToInt32(dr["Renewed"]),
                                                  Available = Convert.ToInt32(dr["Available"]),
                                                  MonthName = dr["MonthName"].ToString(),
                                                  BusinessType = dr["BusinessType"].ToString(),
                                              }).ToList();
                        }
                    }
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
            return returnCode;
        }
    }
}