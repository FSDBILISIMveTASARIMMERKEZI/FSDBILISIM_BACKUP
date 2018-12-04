<%@ WebHandler Language="C#" Class="marka" %>
using System;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;

public class marka : IHttpHandler {
    public void ProcessRequest (HttpContext context) {

        string prefixText = context.Request.QueryString["q"];
        using (SqlConnection conn = new SqlConnection())
        {
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "select Name from f_Marka where Name like @txtMarkaName + '%'";
                cmd.Parameters.AddWithValue("@txtMarkaName", prefixText);
                cmd.Connection = conn;
                StringBuilder sb = new StringBuilder();
                conn.Open();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        sb.Append(sdr["Name"])
                            .Append(Environment.NewLine);
                    }
                }
                conn.Close();
                context.Response.Write(sb.ToString());
            }
        }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}