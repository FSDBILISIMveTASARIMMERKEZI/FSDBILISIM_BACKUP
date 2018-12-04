
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Slider : System.Web.UI.Page
{
    public DataTable tablo = new DataTable();
    public fsdbilisim fsd = new fsdbilisim();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
            return;
     
    }
  
    protected void btnSlinder_Click1(object sender, EventArgs e)
    {
        Response.Redirect("YeniSliderEkle.aspx");
    }
    public void rptSliderDoldur()
    {

      tablo=  fsd.getDataTable("select * from slider");
      rptSlider.DataSource = tablo;
      rptSlider.DataBind();
    }
  
}
  
  

