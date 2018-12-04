using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_yorum : System.Web.UI.Page
{
    public DataTable tablo = new DataTable();
    public fsdbilisim fsd = new fsdbilisim();
    protected void Page_Load(object sender, EventArgs e)
    {
        string connstr =
ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
        if (IsPostBack)
            return;
    }



    //protected void btnOnayla_Click(object sender, EventArgs e)
    //{
    //    try
    //    {
    //        string sql = "update yorum set onay=@onay id=" + Request["id"];


    //        SqlCommand sorgu = new SqlCommand(sql, baglanti);

    //        sorgu.Parameters.AddWithValue("@urunKodu", txtUrunKodu.Text);
           



    //        sorgu.Connection.Open();
    //        sorgu.ExecuteNonQuery();
    //        sorgu.Connection.Close();

    //        lhata.Text = "Ürün başarı ile güncellendi.";
    //    }
    //    catch (Exception ex)
    //    {

    //        lhata.Text = ex + " Hatası";
    //    }
      
    //}
    //protected void rptYorum_ItemDataBound(object sender, RepeaterItemEventArgs e)
    //{
    //    for (int i = 0; i < rptYorum.Controls.Count; i++)
    //    {
    //        Label lid = (Label)rptYorum.Controls[i].FindControl("lid");


    //        //Button btnOnayla = (Button)rptYorum.Controls[i].FindControl("btnOnayla");

    //        Button btnOnayla = (Button)sender;
    //    }
    //}
}