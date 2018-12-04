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

public partial class Admin_YeniUrun : System.Web.UI.Page
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

    }

    protected void btnKAYDET_Click1(object sender, EventArgs e)
    {

        try
        {
            string sql = "insert into urunler(urunKodu,urunAdi,kategoriId,altKategoriId,fiyat,konuId,detay,resim,demoUrl) values" +
                                  "(@urunKodu,@urunAdi,@kategoriId,@altKategoriId,@fiyat,@konuId,@detay,@resim,@demoUrl)";
            SqlCommand sorgu = new SqlCommand(sql, baglanti);

            if (ddlKategori.SelectedValue == null || ddlKategori.SelectedValue == "")
            {
                lhata.Text = "Lütfen kategori seçiniz";
                return;
            }
            if (fupResim.HasFile)
            {

                if (ddlKategori.SelectedValue == "1")
                {
                    fupResim.SaveAs(Server.MapPath("~/imagesProduct/business-card/" + fupResim.FileName.ToString()));
                    imgResim.ImageUrl = "~/imagesProduct/business-card/" + fupResim.FileName.ToString();
                }

                else if (ddlKategori.SelectedValue == "2")
                {
                    fupResim.SaveAs(Server.MapPath("~/imagesProduct/web-site-screenshot/" + fupResim.FileName.ToString()));
                    imgResim.ImageUrl = "~/imagesProduct/web-site-screenshot/" + fupResim.FileName.ToString();
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


            }

            sorgu.Parameters.AddWithValue("@urunKodu", txtUrunKodu.Text);
            sorgu.Parameters.AddWithValue("@urunAdi", txtUrunAdi.Text);

            sorgu.Parameters.AddWithValue("@kategoriId", ddlKategori.SelectedValue);



            sorgu.Parameters.AddWithValue("@altKategoriId", ddlAltkategori.SelectedValue);

            sorgu.Parameters.AddWithValue("@fiyat", txtFiyat.Text);

            sorgu.Parameters.AddWithValue("@konuId", ddlKonu.SelectedValue);
            sorgu.Parameters.AddWithValue("@detay", txtDetay.Text);

            sorgu.Parameters.AddWithValue("@resim", imgResim.ImageUrl);

            //değişecek
            sorgu.Parameters.AddWithValue("@demoUrl", txtDemo.Text);

            baglanti.Open();
            sorgu.ExecuteNonQuery();
            baglanti.Close();



            lhata.Text = "Ürün başarı ie eklendi";

            txtUrunAdi.Text = "";
            txtUrunKodu.Text = "";
            txtFiyat.Text = "";
            txtDetay.Text = "";
            txtDemo.Text = "";
            ddlAltkategori.SelectedValue = "";
            ddlKategori.SelectedValue = "";
            ddlKonu.SelectedValue = "";
            imgResim.ImageUrl = "";

        }
        catch (Exception ex)
        {

            lhata.Text = ex + " hatası";
        }




    }

    protected void btnVAZGEC_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Product.aspx");

    }
}