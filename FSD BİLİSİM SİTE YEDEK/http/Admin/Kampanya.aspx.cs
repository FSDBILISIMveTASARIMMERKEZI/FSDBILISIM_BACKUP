using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class Admin_Kampanya : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void rptKampanya_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {

    }
    protected void btnYeni_Click(object sender, EventArgs e)
    {
        Response.Redirect("YeniKampanya.aspx");
    }
    protected void ddlHizmet_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}