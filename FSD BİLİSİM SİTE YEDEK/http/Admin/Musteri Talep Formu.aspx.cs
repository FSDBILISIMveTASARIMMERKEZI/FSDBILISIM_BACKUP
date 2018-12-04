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
        string sql = "SELECT * from musteriTalep";


        tablo = fsd.getDataTable(sql);

        rptMstrTlp.DataSource = tablo;
        rptMstrTlp.DataBind();


    }
   
   
   
    protected void rptMstrTlp_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {

    }
   
}