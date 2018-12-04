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

public partial class Admin_YeniSliderEkle : System.Web.UI.Page
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
        lhata.Text = "";

    }
   
    protected void btnKAYDET_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtBaslik.Text == "" || txtAciklama.Text == "" || fupResim.HasFile == null)
            {
                lhata.Text = "Boş geçmeyiniz";
                return;
            }

            tablo = fsd.getDataTable("select * from slider where baslik='"+txtBaslik.Text+"' or aciklama='"+txtAciklama.Text+"'");
            if (tablo.Rows.Count != 0)
            {
                lhata.Text = "Böyle bir başlık veya acıklama daha önceden tanımlanmış. Başka bir başlık yazınız.";
                return;
            }
           
            string sql = "insert into slider(resim,baslik,aciklama) values" +
                                  "(@resim,@baslik,@aciklama)";
            SqlCommand sorgu = new SqlCommand(sql, baglanti);


            if (fupResim.HasFile)
            {
                //DbClass.ResimKirp(fupResim, 400, 400, "/urunresim", txtParcaKodu.Text);
                //imgResim.ImageUrl = "/urunresim/" + txtParcaKodu.Text + fupResim.FileName;
                fupResim.SaveAs(Server.MapPath("~/img/slider/" + txtBaslik.Text + ".png"));
                imgResim.ImageUrl = "~/img/slider/" + txtBaslik.Text + ".png";

            }

            sorgu.Parameters.AddWithValue("@resim", imgResim.ImageUrl);
            sorgu.Parameters.AddWithValue("@baslik", txtBaslik.Text);

            sorgu.Parameters.AddWithValue("@aciklama", txtAciklama.Text);


            baglanti.Open();
            sorgu.ExecuteNonQuery();
            baglanti.Close();



            lhata.Text = "Slider başarı ie eklendi";

            txtAciklama.Text = "";
            txtBaslik.Text = "";
          
           

        }
        catch (Exception ex)
        {

            lhata.Text = ex + " hatası";
        }
    }
    protected void btnVAZGEC_Click(object sender, EventArgs e)
    {
        Response.Redirect("Slider.aspx");
    }
}