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
        string sql = "SELECT        urunler.kategoriId, urunler.altKategoriId, urunler.konuId, urunler.id, urunler.urunAdi, urunler.urunKodu, urunler.resim, urunler.fiyat, urunler.detay, urunler.demoUrl, kategoriler.kategoriAdi, konu.ad AS konuAd, altKategori.altKategoriAdi FROM    urunler         INNER JOIN kategoriler ON kategoriler.id = urunler.kategoriId INNER JOIN altKategori ON urunler.altKategoriId = altKategori.id INNER JOIN konu ON urunler.konuId = konu.id WHERE urunler.id =  "+Request["id"];
        tablo = fsd.getDataTable(sql);

        txtUrunKodu.Text = tablo.Rows[0]["urunKodu"].ToString();
        txtUrunAdi.Text = tablo.Rows[0]["urunAdi"].ToString();

        txtFiyat.Text = tablo.Rows[0]["fiyat"].ToString();


        //imagesProduct/business-card/back-business-red-shapes.png


        //    Admin/imagesProduct/business-card/black.png




        imgResim.ImageUrl = tablo.Rows[0]["resim"].ToString().Replace("Admin/"," ");

        ddlKategori.SelectedValue = tablo.Rows[0]["kategoriId"].ToString();

        ddlAltkategori.SelectedValue = tablo.Rows[0]["altKategoriId"].ToString();
        txtDetay.Text = tablo.Rows[0]["detay"].ToString();

        txtDemo.Text = tablo.Rows[0]["demoUrl"].ToString();
        ddlKonu.SelectedValue = tablo.Rows[0]["konuId"].ToString();


    }
    protected void btnKAYDET_Click(object sender, EventArgs e)
    {
        //Update

        try
        {
            string sql = "update urunler set urunKodu=@urunKodu, urunAdi=@urunAdi,demoUrl=@demoUrl,fiyat=@fiyat, kategoriId=@kategoriId, altKategoriId=@altKategoriId, resim=@resim where id=" + Request["id"];


            SqlCommand sorgu = new SqlCommand(sql, baglanti);

            if (fupResim.HasFile)
            {

                if (ddlKategori.SelectedValue == "1")
                {
                    fupResim.SaveAs(Server.MapPath("~/imagesProduct/business-card/" + fupResim.FileName.ToString()));
                    imgResim.ImageUrl = "~/imagesProduct/business-card/" + fupResim.FileName.ToString();
                }

                else if (ddlKategori.SelectedValue == "2")
                {
                    fupResim.SaveAs(Server.MapPath("~/imagesProduct/web-site/" + fupResim.FileName.ToString()));
                    imgResim.ImageUrl = "~/imagesProduct/web-site/" + fupResim.FileName.ToString();
                }
                else if (ddlKategori.SelectedValue == "3")
                {
                    fupResim.SaveAs(Server.MapPath("~/imagesProduct/logos/" + fupResim.FileName.ToString()));
                    imgResim.ImageUrl = "~/imagesProduct/logos/" + fupResim.FileName.ToString();
                }
                else if (ddlKategori.SelectedValue == "4")
                {
                    fupResim.SaveAs(Server.MapPath("~/imagesProduct/e-ticaret/" + fupResim.FileName.ToString()));
                    imgResim.ImageUrl = "~/imagesProduct/e-ticaret/" + fupResim.FileName.ToString();
                }
                else if (ddlKategori.SelectedValue == "5")
                {
                    fupResim.SaveAs(Server.MapPath("~/imagesProduct/seo/" + fupResim.FileName.ToString()));
                    imgResim.ImageUrl = "~/imagesProduct/seo/" + fupResim.FileName.ToString();
                }

                else if (ddlKategori.SelectedValue == "6")
                {
                    fupResim.SaveAs(Server.MapPath("~/imagesProduct/afis/" + fupResim.FileName.ToString()));
                    imgResim.ImageUrl = "~/imagesProduct/afis/" + fupResim.FileName.ToString();
                }
                else if (ddlKategori.SelectedValue == "10")
                {
                    fupResim.SaveAs(Server.MapPath("~/imagesProduct/size-özel/" + fupResim.FileName.ToString()));
                    imgResim.ImageUrl = "~/imagesProduct/size-özel/" + fupResim.FileName.ToString();
                }

                sorgu.Parameters.AddWithValue("@resim", imgResim.ImageUrl);
            }
            else
                sorgu.Parameters.AddWithValue("@resim", imgResim.ImageUrl);


            sorgu.Parameters.AddWithValue("@urunKodu", txtUrunKodu.Text);
            sorgu.Parameters.AddWithValue("@fiyat", txtFiyat.Text);
            sorgu.Parameters.AddWithValue("@urunAdi", txtUrunAdi.Text);
            sorgu.Parameters.AddWithValue("@demoUrl",txtDemo.Text);
            sorgu.Parameters.AddWithValue("@kategoriId", Convert.ToInt32(ddlKategori.SelectedValue));
            sorgu.Parameters.AddWithValue("@altKategoriId", Convert.ToInt32(ddlAltkategori.SelectedValue));

           


            sorgu.Connection.Open();
            sorgu.ExecuteNonQuery();
            sorgu.Connection.Close();

            lhata.Text = "Ürün başarı ile güncellendi.";
        }
        catch (Exception ex)
        {

            lhata.Text = ex + " Hatası";
        }
      




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