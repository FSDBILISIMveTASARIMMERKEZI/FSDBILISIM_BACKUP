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
    public void rptDoldur()
    {


        string sql = "";
        if (Session["lang"] == "tr")
        {
            sql = "select * from SFC_Projeler where faaliyetAlanid=" + Request["id"];
        }
        if (Session["lang"] == "en")
        {
            sql = "select id, ad_en as ad from SFC_Projeler_dil where faaliyetAlanid=" + Request["id"];
        }
        if (Session["lang"] == "ar")
        {
            sql = "select id, ad_ar as ad from SFC_Projeler_dil where faaliyetAlanid=" + Request["id"];
        }



        tablo = sfcyapi.getDataTable(sql);
        if (tablo.Rows.Count == 0)
        {
            if (Session["lang"] == "tr")
            {
                lad.Text = "Bu alanda herhangi bir projemiz bulunmamaktadır.";

            }
            if (Session["lang"] == "en")
            {
                lad.Text = "We do not have any project in this area.";
            }
            if (Session["lang"] == "ar")
            {
                lad.Text = "ليس لدينا أي مشروع في هذا المجال.";
            }
        }
        rptDetay.DataSource = tablo;
        rptDetay.DataBind();

    }
    public void rptDoldur2()
    {
        //tablo2 = sfcyapi.getDataTable("select * from SFC_Resimler where faaliyetAlanid=" + Request["id"]);
        //rptProjeResim.DataSource = tablo2;
        //rptProjeResim.DataBind();
    }
    public void rptDoldur3()
    {
        string sql = "";
        if (Session["lang"] == "tr")
        {
            sql = "select * from SFC_FaaliyetAlan where id=" + Request["id"];
        }
        if (Session["lang"] == "en")
        {
            sql = "select ad_en as ad from SFC_FaaliyetAlan_dil where id=" + Request["id"];
        }
        if (Session["lang"] == "ar")
        {
            sql = "select ad_ar as ad from SFC_FaaliyetAlan_dil where id=" + Request["id"];
        }
        tablo2 = sfcyapi.getDataTable(sql);
        rptProjeAd.DataSource = tablo2;
        rptProjeAd.DataBind();
    }
}