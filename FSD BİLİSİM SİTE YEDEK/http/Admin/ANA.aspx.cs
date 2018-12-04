using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class yonetici_Default : System.Web.UI.Page
{
    private SqlConnection baglanti;
    protected void Page_Load(object sender, EventArgs e)
    {
        string connstr =
ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
        baglanti = new SqlConnection(connstr);
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        SqlCommand sorgu2 = new SqlCommand("select * from Kullanicilar where Kullanici_Adi=@P1 and Sifre=@P2", baglanti);

        sorgu2.Parameters.AddWithValue("@P1", txtYONETICI_ADI.Text);
        sorgu2.Parameters.AddWithValue("@P2", txtSIFRESI.Text);

        DataTable tablo = new DataTable();
        SqlDataAdapter adpt2 = new SqlDataAdapter(sorgu2);
        adpt2.Fill(tablo);


        //string sql = "select * from yp_Kullanicilar where Adi=@P1 and Sifre=@P2";
        //SqlParameter prm1 = new SqlParameter("@P1", txtYONETICI_ADI.Text);
        //SqlParameter prm2 = new SqlParameter("@P2", txtSIFRESI.Text);
        //DataTable dt = db.Fill(sql, prm1, prm2);

        if (tablo.Rows.Count > 0)
        {
            Session["Kullanici_Adi"] = tablo.Rows[0]["id"].ToString();
            Response.Redirect("Default.aspx");
        }
        else
        {
            lblMESAJ.Text = "Kullanıcı Adını ve/veya Şifresini yanlış girdiniz";
            txtYONETICI_ADI.Text = "";
            txtSIFRESI.Text = "";

        }
    }
}