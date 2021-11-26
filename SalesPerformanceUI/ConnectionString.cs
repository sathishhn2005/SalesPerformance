using System.Configuration;

namespace SalesPerformanceUI
{
    public class ConnectionString
    {
        public static string GetConnectionString()
        {
            string conStr = ConfigurationManager.ConnectionStrings["SalesConnection"].ConnectionString.ToString();
            return conStr;
        }
    }
}