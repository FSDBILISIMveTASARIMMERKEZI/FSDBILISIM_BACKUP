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

public partial class Detay : System.Web.UI.Page
{
    private SqlConnection baglanti;

    public DataTable tablo = new DataTable();

    fsdbilisim fsd = new fsdbilisim();
 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bilgi();
            benzer();
        }
    }


    public void bilgi()
    {
        string sql = "select * from urunler where id=" + Request["id"];

        tablo = fsd.getDataTable(sql);

        lad.Text = tablo.Rows[0]["urunAdi"].ToString();
        ldetay.Text = tablo.Rows[0]["detay"].ToString();
    lacıklama.Text = tablo.Rows[0]["aciklama"].ToString();
    img.ImageUrl = tablo.Rows[0]["resim"].ToString();

        //şablon özellikleri
    lsablonozellık.Text = tablo.Rows[0]["sablonOzellık"].ToString();
    lsablonIcerık.Text = tablo.Rows[0]["sablonIcerık"].ToString();
    lsablonteknoloji.Text = tablo.Rows[0]["sablonTeknolojı"].ToString();
    lsablontarih.Text = tablo.Rows[0]["sablonTarıh"].ToString();

   
        
 
        //lfiyat.Text = tablo.Rows[0]["fiyat"].ToString() + " TL";

        if (tablo.Rows[0]["kategoriId"].ToString() == "1")
            lkat.Text = "Kartvizit";
        else   if (tablo.Rows[0]["kategoriId"].ToString() == "2")

            lkat.Text = "Web Tasarım";
        else if (tablo.Rows[0]["kategoriId"].ToString() == "3")

            lkat.Text = "Logo";
        else if (tablo.Rows[0]["kategoriId"].ToString() == "4")

            lkat.Text = "E - Ticaret";

        else if (tablo.Rows[0]["kategoriId"].ToString() == "5")

            lkat.Text = "Seo";
        else if (tablo.Rows[0]["kategoriId"].ToString() == "6")

            lkat.Text = "Reklam , Afiş, Broşür, Davetiye";

        else if (tablo.Rows[0]["kategoriId"].ToString() == "7")

            lkat.Text = "Kişisel Site";

        else
           

            lkat.Text = "Size Özel";

        lkat2.Text = lkat.Text;

      
        lkat4.Text = lkat.Text;


        img.AlternateText = lkat.Text + "da en güzel şablonlar"; ;


    }


    public void benzer()
    {

        tablo = fsd.getDataTable("SELECT  top 4      map.orjId, urunler.urunAdi, urunler.urunKodu, urunler.kategoriId, urunler.altKategoriId, urunler.resim, urunler.fiyat, urunler.detay, urunler.demoUrl, urunler.konuId,    urunler.aciklama, urunler.sablonOzellık, urunler.sablonIcerık, urunler.sablonTeknolojı, map.benzerId, map.kategoriId AS Expr1, map.benzerId FROM            map INNER JOIN urunler ON map.benzerId = urunler.id WHERE        map.orjId = " + Request["id"]);
        if (tablo.Rows.Count != 0)
        {
            rptMusteriYorumları.DataSource = tablo;
            rptMusteriYorumları.DataBind();
        }
        else
        {

            tablo = fsd.getDataTable("SELECT  top 4      map.orjId, urunler.urunAdi, urunler.urunKodu, urunler.kategoriId, urunler.altKategoriId, urunler.resim, urunler.fiyat, urunler.detay, urunler.demoUrl, urunler.konuId,    urunler.aciklama, urunler.sablonOzellık, urunler.sablonIcerık, urunler.sablonTeknolojı, map.benzerId, map.kategoriId AS Expr1,map.benzerId FROM            map INNER JOIN urunler ON map.orjId = urunler.id WHERE        map.benzerId = " + Request["id"]);


            rptMusteriYorumları.DataSource = tablo;
            rptMusteriYorumları.DataBind();
        }


    
    }
}