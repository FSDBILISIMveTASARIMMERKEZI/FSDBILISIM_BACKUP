
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Routing;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class Iletisim : System.Web.UI.Page
{
    private SqlConnection baglanti;

    public DataTable tablo = new DataTable();
    fsdbilisim fsd = new fsdbilisim();
    protected void Page_Load(object sender, EventArgs e)
    { 
        
        
        
        
        

        //v.tanı ekleme
        string connstr = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
        baglanti = new SqlConnection(connstr);
        lhata.Text = "";
        hatal.Text = "";
        if (IsPostBack)
            return;
        lhata.Text = "";
        hatal.Text = "";


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
           
            if (txtEmail.Text == "" || txtAd.Text == "" || txtTel.Text == "" || txtKOnu.Text == "")
            {
                lhata.Text = "Lütfen isim, mail ve telefon kısmını boş geçmeyiniz!";
                return;
            }
        if(CheckBox1.Checked!=true)
        {
            lhata.Text = "Robot musunuz?";
            return;
        }
            string sql = "insert into Iletisim(mail,adSoyad,mesaj,telefon,konu) values(@mail,@adSoyad,@mesaj,@telefon,@konu)";
            SqlCommand sorgu = new SqlCommand(sql, baglanti);

            sorgu.Parameters.AddWithValue("@mail", txtEmail.Text);
            sorgu.Parameters.AddWithValue("@adSoyad", txtAd.Text);

            sorgu.Parameters.AddWithValue("@mesaj", txtMsj.Text);
            sorgu.Parameters.AddWithValue("@telefon", txtTel.Text);
            sorgu.Parameters.AddWithValue("@konu", txtKOnu.Text);

            MailMessage mesaj = new MailMessage();
            mesaj.From = new MailAddress("fsdbilisim@yandex.com.tr");

            mesaj.To.Add("sami.demir@fsdbilisim.com");
            mesaj.To.Add("fatma.demir@fsdbilisim.com");
            mesaj.Subject = "Müşteri Talep Formu:" + txtKOnu.Text;
            mesaj.Body = txtAd.Text + " adlı kişi " + txtTel.Text + " numaralı telefon, " + txtEmail.Text + " mail adresinden sizden " + txtMsj.Text + " konulu mesaj ile talepte bulunmaktadır.";

            mesaj.IsBodyHtml = true; // giden mailin içeriği html olmasını istiyorsak true kalması lazım
            SmtpClient client = new SmtpClient("smtp.yandex.ru", 587);
            client.Credentials = new NetworkCredential("fsdbilisim@yandex.com.tr", "fsd.bilisim");
            client.EnableSsl = true;
            client.Send(mesaj);


            baglanti.Open();
            sorgu.ExecuteNonQuery();
            baglanti.Close();
            hatal.Text = "Mesajınız tarafımıza başarılı bir şekilde ulaştı.";

            txtAd.Text = "";
            txtEmail.Text = "";
            txtMsj.Text = "";
            txtTel.Text = "";
            txtKOnu.Text = "";
            CheckBox1.Checked = false;
        
    }
    protected void btnTemizle_Click(object sender, EventArgs e)
    {
        txtAd.Text = "";
        txtEmail.Text = "";
        txtMsj.Text = "";
        txtTel.Text = "";
        txtKOnu.Text = "";
        CheckBox1.Checked = false;

    }
}