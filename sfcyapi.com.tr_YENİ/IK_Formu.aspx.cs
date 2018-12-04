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

public partial class IK_Formu : BasePage
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
    protected void btnGonder_Click(object sender, EventArgs e)
    {
        if (txtMail.Text == "" || txtAdSoyad.Text == "" || txtTel.Text == "" || txtAdres.Text == "" || txtsaglik.Text == "")
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
        if (CV.HasFile)
        {

            CVimg.ImageUrl = "/assets/img/cv/" + CV.FileName.ToString();
            CV.SaveAs(Server.MapPath("/assets/img/cv/" + CV.FileName));

        }

        string sql = "insert into SFC_IK_form(mail,adSoyad,adrs,tel,belgesrtfka,saglik,msj,cv) values(@mail,@adSoyad,@adrs,@tel,@belgesrtfka,@saglik,@msj,@cv)";
        SqlCommand sorgu = new SqlCommand(sql, baglanti);

        sorgu.Parameters.AddWithValue("@mail", txtMail.Text);
        sorgu.Parameters.AddWithValue("@adSoyad", txtAdSoyad.Text);
        sorgu.Parameters.AddWithValue("@tel", txtTel.Text);
        sorgu.Parameters.AddWithValue("@adrs", txtAdres.Text);
        sorgu.Parameters.AddWithValue("@belgesrtfka", txtMbelge.Text);
        sorgu.Parameters.AddWithValue("@saglik", txtsaglik.Text);

        sorgu.Parameters.AddWithValue("@msj", txtMesaj.Text);
        sorgu.Parameters.AddWithValue("@cv", CVimg.ImageUrl);


        MailMessage mesaj = new MailMessage();
        mesaj.From = new MailAddress("fsdbilisim@yandex.com.tr");

        mesaj.To.Add("ercan@sfcyapi.com");
        mesaj.To.Add("ayhan@sfcyapi.com");
        mesaj.Subject = "IK Form(Ad Soyad):" + txtAdSoyad.Text;
        mesaj.Body = " adlı kişi " + txtTel.Text + " numaralı telefon, " + txtMail.Text + " mail adresinden sizden " + txtMesaj.Text + " konulu mesaj ile iletişime geçmiştir. ";

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

        txtMail.Text = "";
        txtAdSoyad.Text = "";
        txtTel.Text = "";
        txtAdres.Text = "";
        txtMbelge.Text = "";
        txtsaglik.Text = "";
        txtMesaj.Text = "";
        CheckBox1.Checked = false;
    }
    protected void btnTemizle_Click(object sender, EventArgs e)
    {
        txtMail.Text = "";
        txtAdSoyad.Text = "";
        txtTel.Text = "";
        txtAdres.Text = "";
        txtMbelge.Text = "";
        txtsaglik.Text = "";
        txtMesaj.Text = "";
        CheckBox1.Checked = false;
    }
}