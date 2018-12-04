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

public partial class MusteriTalepFormu : System.Web.UI.Page
{
    private SqlConnection baglanti;

    public DataTable tablo = new DataTable();
    fsdbilisim fsd = new fsdbilisim();
    protected void Page_Load(object sender, EventArgs e)
    {
        string connstr = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
        baglanti = new SqlConnection(connstr);
        lhata.Text = "";
        hatal.Text = "";
        if (IsPostBack)
            return;
        lhata.Text = "";
        hatal.Text = "";
    }
    protected void btnGonder_Click(object sender, EventArgs e)
    {
     

        if (txtAdSoyad.Text == "" || txtTel.Text == "")
        {
            lhata.Text = "Lütfen isim ve telefon kısmını boş geçmeyiniz!";
            return;
        }
        if (CheckBox1.Checked==null)
        {
            lhata.Text = "Robot musunuz?";
            return;
        }

        string sql = "insert into musteriTalep(adSoyad,mail,telefon,adres,hizmetTuru,mesaj) values(@adSoyad,@mail,@telefon,@adres,@hizmetTuru,@mesaj)";
        SqlCommand sorgu = new SqlCommand(sql, baglanti);

        sorgu.Parameters.AddWithValue("@adSoyad", txtAdSoyad.Text);
        sorgu.Parameters.AddWithValue("@mail", txtMail.Text);

        sorgu.Parameters.AddWithValue("@telefon", txtTel.Text);

        sorgu.Parameters.AddWithValue("@adres", txtAdres.Text);

        sorgu.Parameters.AddWithValue("@hizmetTuru", ddlHizmet.SelectedValue);

        sorgu.Parameters.AddWithValue("@mesaj", txtMesaj.Text);



        baglanti.Open();
        sorgu.ExecuteNonQuery();
        baglanti.Close();
       
        hatal.Text = "Talebiniz başarılı bir şekilde iletilmiştir.";
        
        txtAdSoyad.Text = "";
        txtMail.Text = "";
        txtMesaj.Text = "";
        txtTel.Text = "";
        txtAdres.Text = "";
        CheckBox1.Checked = false;

    }
    
    protected void btnTemizle_Click(object sender, EventArgs e)
    {
            txtAdSoyad.Text = "";
            txtMail.Text = "";
            txtMesaj.Text = "";
            txtTel.Text = "";
            txtAdres.Text = "";
            CheckBox1.Checked = false;

    }
}