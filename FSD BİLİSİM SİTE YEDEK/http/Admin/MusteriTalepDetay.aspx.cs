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
public partial class Admin_Detay : System.Web.UI.Page
{
    private SqlConnection baglanti;

    public DataTable tablo = new DataTable();
    fsdbilisim fsd = new fsdbilisim();
    protected void Page_Load(object sender, EventArgs e)
    {
        string connstr =
            ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
        baglanti = new SqlConnection(connstr);
        if (IsPostBack)
            return;
        detay();
    }

    public void detay()
    {
        string sql = "SELECT        * FROM kategoriler INNER JOIN musteriTalep ON kategoriler.id = musteriTalep.hizmetTuru WHERE musteriTalep.id =  " + Request["id"];
        tablo = fsd.getDataTable(sql);

        txtAdSyd.Text = tablo.Rows[0]["adSoyad"].ToString();
        txtMail.Text = tablo.Rows[0]["mail"].ToString();

        txtTel.Text = tablo.Rows[0]["telefon"].ToString();

        txtTrh.Text = tablo.Rows[0]["tarih"].ToString();
        txtArs.Text = tablo.Rows[0]["adres"].ToString();
        txtAciklama.Text = tablo.Rows[0]["mesaj"].ToString();
        ddKategori.SelectedValue = tablo.Rows[0]["hizmetTuru"].ToString();
       



      

        

     


    }
    protected void btnKAYDET_Click(object sender, EventArgs e)
    {
        //Update

        //try
        //{
        //    string sql = "update urunler set urunKodu=@urunKodu, urunAdi=@urunAdi,demoUrl=@demoUrl,fiyat=@fiyat, kategoriId=@kategoriId, altKategoriId=@altKategoriId, resim=@resim where id=" + Request["id"];


        //    SqlCommand sorgu = new SqlCommand(sql, baglanti);

        //    if (fupResim.HasFile)
        //    {

        //        if (ddlKategori.SelectedValue == "1")
        //        {
        //            fupResim.SaveAs(Server.MapPath("~/imagesProduct/business-card/" + fupResim.FileName.ToString()));
        //            imgResim.ImageUrl = "~/imagesProduct/business-card/" + fupResim.FileName.ToString();
        //        }

        //        else if (ddlKategori.SelectedValue == "2")
        //        {
        //            fupResim.SaveAs(Server.MapPath("~/imagesProduct/web-site/" + fupResim.FileName.ToString()));
        //            imgResim.ImageUrl = "~/imagesProduct/web-site/" + fupResim.FileName.ToString();
        //        }
        //        else if (ddlKategori.SelectedValue == "3")
        //        {
        //            fupResim.SaveAs(Server.MapPath("~/imagesProduct/logos/" + fupResim.FileName.ToString()));
        //            imgResim.ImageUrl = "~/imagesProduct/logos/" + fupResim.FileName.ToString();
        //        }
        //        else if (ddlKategori.SelectedValue == "4")
        //        {
        //            fupResim.SaveAs(Server.MapPath("~/imagesProduct/e-ticaret/" + fupResim.FileName.ToString()));
        //            imgResim.ImageUrl = "~/imagesProduct/e-ticaret/" + fupResim.FileName.ToString();
        //        }
        //        else if (ddlKategori.SelectedValue == "5")
        //        {
        //            fupResim.SaveAs(Server.MapPath("~/imagesProduct/seo/" + fupResim.FileName.ToString()));
        //            imgResim.ImageUrl = "~/imagesProduct/seo/" + fupResim.FileName.ToString();
        //        }

        //        else if (ddlKategori.SelectedValue == "6")
        //        {
        //            fupResim.SaveAs(Server.MapPath("~/imagesProduct/afis/" + fupResim.FileName.ToString()));
        //            imgResim.ImageUrl = "~/imagesProduct/afis/" + fupResim.FileName.ToString();
        //        }
        //        else if (ddlKategori.SelectedValue == "10")
        //        {
        //            fupResim.SaveAs(Server.MapPath("~/imagesProduct/size-özel/" + fupResim.FileName.ToString()));
        //            imgResim.ImageUrl = "~/imagesProduct/size-özel/" + fupResim.FileName.ToString();
        //        }

        //        sorgu.Parameters.AddWithValue("@resim", imgResim.ImageUrl);
        //    }
        //    else
        //        sorgu.Parameters.AddWithValue("@resim", imgResim.ImageUrl);


        //    sorgu.Parameters.AddWithValue("@urunKodu", txtUrunKodu.Text);
        //    sorgu.Parameters.AddWithValue("@fiyat", txtFiyat.Text);
        //    sorgu.Parameters.AddWithValue("@urunAdi", txtUrunAdi.Text);
        //    sorgu.Parameters.AddWithValue("@demoUrl",txtDemo.Text);
        //    sorgu.Parameters.AddWithValue("@kategoriId", Convert.ToInt32(ddlKategori.SelectedValue));
        //    sorgu.Parameters.AddWithValue("@altKategoriId", Convert.ToInt32(ddlAltkategori.SelectedValue));

           


        //    sorgu.Connection.Open();
        //    sorgu.ExecuteNonQuery();
        //    sorgu.Connection.Close();

        //    lhata.Text = "Ürün başarı ile güncellendi.";
        //}
        //catch (Exception ex)
        //{

        //    lhata.Text = ex + " Hatası";
        //}
      




    }
    protected void btnSIL_Click(object sender, EventArgs e)
    {


        string sql = "delete from urunler where id='" + Request["id"] + "'";
        SqlCommand sorgu = new SqlCommand(sql, baglanti);

        sorgu.Connection.Open();
        sorgu.ExecuteNonQuery();
        sorgu.Connection.Close();


        Response.Redirect("product.aspx");
    }
    protected void btnVAZGEC_Click(object sender, EventArgs e)
    {

    }
   
}