using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_product : System.Web.UI.Page
{
    public DataTable tablo = new DataTable();
    public fsdbilisim fsd = new fsdbilisim();
    protected void Page_Load(object sender, EventArgs e)
        
    {
        if (IsPostBack)
            return;
        rpturunDoldur();
    }
    protected void rptURUNLER_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {

    }

    public void rpturunDoldur()
    {
        string sql = "SELECT * from talep";


        tablo = fsd.getDataTable(sql);

        rptTALEPLER.DataSource = tablo;
        rptTALEPLER.DataBind();


    }
    protected void btnYeni_Click(object sender, EventArgs e)
    {

    }
    protected void rptURUNLER_ItemDataBound1(object sender, RepeaterItemEventArgs e)
    {

    }
    protected void btnYeni_Click1(object sender, EventArgs e)
    {
        Response.Redirect("YeniUrun.aspx");
    }
    protected void rptTALEPLER_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {

    }
    protected void btnYeni_Click2(object sender, EventArgs e)
    {

    }
}