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

public partial class MasterPage : System.Web.UI.MasterPage
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
       
        tablo = sfcyapi.getDataTable("select COUNT(id)  from SFC_Projeler where durum=1");
        int count = Convert.ToInt16(tablo.Rows[0][0].ToString());
        int first = count / 2;
        int second = count - first;
        string sql = "";
        if (Session["lang"] == "tr")
        {
             sql = "select top " + first + " id, ad   from SFC_Projeler where durum=1";
        }
        if (Session["lang"] == "en")
        {
            sql = "select top " + first + " id, adIng as ad   from SFC_Projeler where durum=1";
        }
        if (Session["lang"] == "ar")
        {
            sql = "select top " + first + " id, adArapca as ad   from SFC_Projeler where durum=1";
        }
       
        tablo = sfcyapi.getDataTable(sql);
        rptProjelerTamamlanmis1.DataSource = tablo;
        rptProjelerTamamlanmis1.DataBind();


        if (Session["lang"] == "tr")
        {
            tablo = sfcyapi.getDataTable("select top " + second + " id, ad  from SFC_Projeler where durum=1 ORDER BY id desc");
        }
        if (Session["lang"] == "en")
        {
            tablo = sfcyapi.getDataTable("select top " + second + " id, adIng as ad  from SFC_Projeler where durum=1 ORDER BY id desc");

        }
        if (Session["lang"] == "ar")
        {
            tablo = sfcyapi.getDataTable("select top " + second + " id, adArapca as ad  from SFC_Projeler where durum=1 ORDER BY id desc");

        }
       
      
        rptProjelerTamamlanmis2.DataSource = tablo;
        rptProjelerTamamlanmis2.DataBind();
    }
    protected void btnArapca_Click(object sender, EventArgs e)
    {
        Session["lang"] = "ar";
        Response.Redirect(Request.Url.AbsoluteUri);

    }
    protected void btnTurkce_Click(object sender, EventArgs e)
    {
        Session["lang"] = "tr";
        Response.Redirect(Request.Url.AbsoluteUri);

    }
    protected void btnIng_Click(object sender, EventArgs e)
    {
        Session["lang"] = "en";
        Response.Redirect(Request.Url.AbsoluteUri);
    }
}
