

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

public partial class Admin_SliderDetay : System.Web.UI.Page
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
       
        string sql = "select * from slider WHERE id =  " + Request["id"];

        tablo = fsd.getDataTable(sql);


        txtBaslık.Text = tablo.Rows[0]["baslik"].ToString();
        txtAcıklama.Text = tablo.Rows[0]["aciklama"].ToString();



        imgResim.ImageUrl = tablo.Rows[0]["resim"].ToString();




    }


   
    protected void btnKAYDET_Click(object sender, EventArgs e)
    {
        //Update

        try
        {
            string sql = "update slider set baslik=@baslik, aciklama=@aciklama, resim=@resim where id=" + Request["id"];


            SqlCommand sorgu = new SqlCommand(sql, baglanti);




            if (fupResim.HasFile)
            {
                //DbClass.ResimKirp(fupResim, 400, 400, "/urunresim", txtParcaKodu.Text);
                //imgResim.ImageUrl = "/urunresim/" + txtParcaKodu.Text + fupResim.FileName;
                fupResim.SaveAs(Server.MapPath("~/img/slider/" + txtBaslık.Text + ".png"));
                imgResim.ImageUrl = "~/img/slider/" + txtBaslık.Text + ".png";


            }
            sorgu.Parameters.AddWithValue("@baslik", txtBaslık.Text);
            sorgu.Parameters.AddWithValue("@aciklama", txtAcıklama.Text);
            sorgu.Parameters.AddWithValue("@resim", imgResim.ImageUrl);


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


        string sql = "delete from slider where id='" + Request["id"] + "'";
        SqlCommand sorgu = new SqlCommand(sql, baglanti);

        sorgu.Connection.Open();
        sorgu.ExecuteNonQuery();
        sorgu.Connection.Close();

        lhata.Text = "Ürün başarı ile silindi.";
        Response.Redirect("Slider.aspx");
    }
    protected void btnVAZGEC_Click(object sender, EventArgs e)
    {
        Response.Redirect("Slider.aspx");
    }

}