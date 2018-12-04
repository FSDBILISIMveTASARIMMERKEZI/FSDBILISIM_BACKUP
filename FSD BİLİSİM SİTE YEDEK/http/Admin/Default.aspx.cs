using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_Default2 : System.Web.UI.Page
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


       

        if (tablo.Rows.Count > 0)
        {
            Session["Kullanici_Adi"] = tablo.Rows[0]["id"].ToString();
            Response.Redirect("Default2.aspx");
          
        }
        else
        {
            lblMESAJ.Text = "Hay!!! aksi. Kullanıcı Adını / Şifreyi yanlış girdiniz.Login bilgilerinizi unutuysanız yöneticiye başvurunuz.";
            txtYONETICI_ADI.Text = "";
            txtSIFRESI.Text = "";
            Session["Kullanici_Adi"] = null;

        }

       
    }
}