using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Blog : BasePage
{

    public DataTable tablo = new DataTable();
    sfcyapi sfcyapi = new sfcyapi();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            rptDoldur();


        }
    }

    public void rptDoldur()
    {
                
        string sql = "";
        if (Session["lang"] == "tr")
        {
            sql = "select *   from SFC_Referans";
        }
        if (Session["lang"] == "en")
        {
            sql = "select  ad_en as ad, url_en as url, mtn_en as mtn   from SFC_Referans_dil";
        }
        if (Session["lang"] == "ar")
        {
            sql = "select  ad_ar as ad, url_ar as url, mtn_ar as mtn   from SFC_Referans_dil";
        }
       
        tablo = sfcyapi.getDataTable(sql);
        rptreferans.DataSource = tablo;
        rptreferans.DataBind();          
    }
}