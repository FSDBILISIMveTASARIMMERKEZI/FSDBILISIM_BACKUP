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

public partial class Admin_YeniKampanya : System.Web.UI.Page
{
    private SqlConnection baglanti;

    public DataTable tablo = new DataTable();
    fsdbilisim fsd = new fsdbilisim();
    protected void Page_Load(object sender, EventArgs e)
    {
        string connstr =
ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
        baglanti = new SqlConnection(connstr);
        lhata.Text = "";
        if (IsPostBack)
            return;
    }
    protected void btnKAYDET_Click(object sender, EventArgs e)
    {
        try
        {
            string sql = "insert into kampanyalar(basTarih,bitisTarih,icerik,fiyat,kategoriId,resim,ad) values" +
                                           "(@basTarih,@bitisTarih,@icerik,@fiyat,@kategoriId,@resim,@ad)";
            SqlCommand sorgu = new SqlCommand(sql, baglanti);


            if (fupResim.HasFile)
            {
               
                fupResim.SaveAs(Server.MapPath("~/img/kampanya/" + txtKampanyaAdi.Text + ".png"));
                imgResim.ImageUrl = "~/img/kampanya/" + txtKampanyaAdi.Text + ".png";

            }

            if (clndrBas.SelectedDate >= clndrBitis.SelectedDate)
            {
                lhata.Text = "Bitiş tarihi başlangıç tarihinden önce olamaz.";
                return;
            }

          
            sorgu.Parameters.AddWithValue("@basTarih", Convert.ToDateTime(clndrBas.SelectedDate));
            sorgu.Parameters.AddWithValue("@bitisTarih", Convert.ToDateTime(clndrBitis .SelectedDate));

            sorgu.Parameters.AddWithValue("@icerik", txtİcerik.Text);

            sorgu.Parameters.AddWithValue("@fiyat", txtFiyat.Text);

            sorgu.Parameters.AddWithValue("@kategoriId", ddlKonu.SelectedValue);

            sorgu.Parameters.AddWithValue("@resim", imgResim.ImageUrl);

            sorgu.Parameters.AddWithValue("@ad", txtKampanyaAdi.Text);
         

            baglanti.Open();
            sorgu.ExecuteNonQuery();
            baglanti.Close();



            lhata.Text = "Ürün başarı ie eklendi";

            //txtUrunAdi.Text = "";
            //txtUrunKodu.Text = "";
            //txtFiyat.Text = "";
            //txtDetay.Text = "";
            //txtDemo.Text = "";
            //ddlAltkategori.SelectedValue = "";
            //ddlKategori.SelectedValue = "";
            //ddlKonu.SelectedValue = "";
            //imgResim.ImageUrl = "";

        }
        catch (Exception ex)
        {

            lhata.Text = ex + " hatası";
        }



    }
    protected void btnVAZGEC_Click(object sender, EventArgs e)
    {
        Response.Redirect("Kampanya.aspx");
    }
}