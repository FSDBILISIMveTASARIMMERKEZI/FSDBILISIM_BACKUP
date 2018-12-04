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

public partial class iletisim : BasePage
{
    private SqlConnection baglanti;

    public DataTable tablo = new DataTable();
    sfcyapi fsd = new sfcyapi();
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
    
    protected void btnTemizle_Click(object sender, EventArgs e)
    {
        txtAd.Text = "";
        txtEmail.Text = "";
        txtMsj.Text = "";
        txtTel.Text = "";
        txtKOnu.Text = "";
        CheckBox1.Checked = false;
        if (Session["lang"] == "tr")
        {
            hatal.Text = "Bütün alanlar temizlendi.";
        }
        if (Session["lang"] == "en")
        {
            lhata.Text = "All areas were cleaned.";
            
        }
        if (Session["lang"] == "ar")
        {
            lhata.Text = "وتم تنظيف جميع المناطق.";
           
        }
       

    }
    protected void btnGONDER_Click(object sender, EventArgs e)
    {
        if (txtEmail.Text == "" || txtAd.Text == "" || txtTel.Text == "" || txtKOnu.Text == "")
        {
            if (Session["lang"] == "tr")
            {
                lhata.Text = "Lütfen tüm alanlarını doldurunuz!";
                return;
            }
            if (Session["lang"] == "en")
            {
                lhata.Text = "Please fill in all fields?";
                return;
            }
            if (Session["lang"] == "ar")
            {
                lhata.Text = "يرجى ملء جميع الحقول";
                return;
            }
        }
        if (CheckBox1.Checked != true)
        {
            if (Session["lang"] == "tr")
            {
                lhata.Text = "Robot musunuz?";
                return;
            }
            if (Session["lang"] == "en")
            {
                lhata.Text = "Are you a robot?";
                return;
            }
            if (Session["lang"] == "ar")
            {
                lhata.Text = "هل أنت روبوت؟";
                return;
            }
        }
        string sql = "insert into SFC_IletisimForm(mail,adSoyad,msj,tel,msjKonu) values(@mail,@adSoyad,@msj,@tel,@msjKonu)";
        SqlCommand sorgu = new SqlCommand(sql, baglanti);

        sorgu.Parameters.AddWithValue("@mail", txtEmail.Text);
        sorgu.Parameters.AddWithValue("@adSoyad", txtAd.Text);
        sorgu.Parameters.AddWithValue("@tel", txtTel.Text);
        sorgu.Parameters.AddWithValue("@msjKonu", txtKOnu.Text);
        sorgu.Parameters.AddWithValue("@msj", txtMsj.Text);

       

        MailMessage mesaj = new MailMessage();
        mesaj.From = new MailAddress("fsdbilisim@yandex.com.tr");

        mesaj.To.Add("ercan@sfcyapi.com");
        mesaj.To.Add("ayhan@sfcyapi.com");
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
        if (Session["lang"] == "tr")
        {
            hatal.Text = "Mesajınız tarafımıza başarılı bir şekilde ulaştı.";
        }
        if (Session["lang"] == "en")
        {
            hatal.Text = "Your message has been successful.";
        }
        if (Session["lang"] == "ar")
        {
            hatal.Text = "لقد وصلت رسالتك إلى خاتمة ناجحة.";
        }

        txtAd.Text = "";
        txtEmail.Text = "";
        txtMsj.Text = "";
        txtTel.Text = "";
        txtKOnu.Text = "";
        CheckBox1.Checked = false;
    }
}