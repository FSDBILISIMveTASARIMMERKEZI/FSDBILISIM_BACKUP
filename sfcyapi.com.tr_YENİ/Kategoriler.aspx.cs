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

public partial class Kategoriler : BasePage
{
    public DataTable tablo = new DataTable();
    public DataTable tablo2 = new DataTable();


    sfcyapi sfcyapi = new sfcyapi();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            rptDoldur();
            rptDoldur2();
            rptDoldur3();

        }
    }
    public void rptDoldur() {

        string sql = "";
        if (Session["lang"] == "tr")
        {
            sql = "select * from SFC_Projeler where id=" + Request["id"];
        }
        if (Session["lang"] == "en")
        {
            sql = "select projeAd_en as projeAd, isveren_en as isveren, trh_en as trh, lokasyn_en as lokasyn, iskapsami_en as iskapsami, tamamlanmisisler_en as tamamlanmisisler from SFC_Projeler_dil where id=" + Request["id"];
        }
        if (Session["lang"] == "ar")
        {
            sql = "select projeAd_ar as projeAd, isveren_ar as isveren, trh_ar as trh, lokasyn_ar as lokasyn, iskapsami_ar as iskapsami, tamamlanmisisler_ar as tamamlanmisisler from SFC_Projeler_dil where id=" + Request["id"];
        }

        tablo = sfcyapi.getDataTable(sql);
        rptDetay.DataSource = tablo;
        rptDetay.DataBind();
    }
    public void rptDoldur2()
    {
        tablo2 = sfcyapi.getDataTable("select * from SFC_Resimler where projeId=" + Request["id"]);
        rptProjeResim.DataSource = tablo2;
        rptProjeResim.DataBind();
    }
    public void rptDoldur3()
    {
        string sql = "";
        if (Session["lang"] == "tr")
        {
            sql = "select * from SFC_Projeler where id=" + Request["id"];
        }
        if (Session["lang"] == "en")
        {
            sql = "select ad_en as ad from SFC_Projeler_dil where id=" + Request["id"];
        }
        if (Session["lang"] == "ar")
        {
            sql = "select ad_ar as ad from SFC_Projeler_dil where id=" + Request["id"];
        }


        tablo2 = sfcyapi.getDataTable(sql);
        rptProjeAd.DataSource = tablo2;
        rptProjeAd.DataBind();
    }
}