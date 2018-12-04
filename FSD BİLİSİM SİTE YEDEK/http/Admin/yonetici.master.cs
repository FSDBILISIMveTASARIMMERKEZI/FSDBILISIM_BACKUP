using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Configuration;

public partial class yonetici_yonetici : System.Web.UI.MasterPage
{
    private SqlConnection baglanti;
    fsdbilisim fsd = new fsdbilisim();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        string connstr =
ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
        baglanti = new SqlConnection(connstr);

        if (Session["kullanici_adi"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        //else
        //{

        //    string refno = Session["kullanici_adi"].ToString();
           
        //    DataTable tablo = new DataTable();
        //    tablo = parca.get_dt("select * from yp_Kullanicilar where id=" + refno);
           

         
        //}
    }
}
