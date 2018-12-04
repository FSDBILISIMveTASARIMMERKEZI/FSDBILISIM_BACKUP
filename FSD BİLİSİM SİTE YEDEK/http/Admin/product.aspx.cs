using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_product : System.Web.UI.Page
{
    private SqlConnection baglanti;

    public DataTable tablo = new DataTable();
    public fsdbilisim fsd = new fsdbilisim();
    protected void Page_Load(object sender, EventArgs e)
    {
        string connstr =
           ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
        baglanti = new SqlConnection(connstr);
        if (IsPostBack)
            return;
        rpturunDoldur();
       
    }
    protected void rptURUNLER_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {

    }


  
    public void rpturunDoldur()
    {
        string sql;

        if (ddlHizmet.SelectedValue == "")
            sql = "SELECT * from urunler";
        else
            sql = "SELECT * from urunler where kategoriId=" + Convert.ToInt32(ddlHizmet.SelectedValue);


        tablo = fsd.getDataTable(sql);

        rptURUNLER.DataSource = tablo;
        rptURUNLER.DataBind();


    }

    protected void rptURUNLER_ItemDataBound1(object sender, RepeaterItemEventArgs e)
    {

    }
    protected void btnYeni_Click1(object sender, EventArgs e)
    {
        Response.Redirect("YeniUrun.aspx");
    }
    protected void ddlHizmet_SelectedIndexChanged(object sender, EventArgs e)
    {

        rpturunDoldur();
    }
}