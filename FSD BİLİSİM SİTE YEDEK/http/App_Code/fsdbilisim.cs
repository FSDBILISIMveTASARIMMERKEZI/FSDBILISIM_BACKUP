using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for Class1
/// </summary>
public class fsdbilisim
{
    SqlConnection cnn = new SqlConnection();
    //string cnnstr = "Data Source=FADEMIRPC\\SQL;Initial Catalog=fsdbilisim;Integrated Security=True;User ID=sa;Password=Sami.6531216";


    public fsdbilisim()
	{
		
         string connstr =
ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
        cnn = new SqlConnection(connstr);

        //cnn.ConnectionString = cnnstr;
    }
    public void ExecuteNonQuery(string sql, params SqlParameter[] prms)
    { //hertürlü sorgu çalıştırır:DELETE UPDATE INSERT CREATE DROP ALTER
        SqlCommand cmd = new SqlCommand(sql, cnn);

        if (prms != null)
        {
            cmd.Parameters.AddRange(prms);
        }

        if (cnn.State == ConnectionState.Closed)
        {
            cnn.Open();
        }

        try
        {
            cmd.ExecuteNonQuery();
        }
        finally  //hata oluşsun ya da oluşmasın cnn kapatılırs
        {
            cnn.Close();
        }
    }

    public int ExecuteNonQueryWithID(string sql, params SqlParameter[] prms)
    { //hertürlü sorgu çalıştırır:DELETE UPDATE INSERT CREATE DROP ALTER
        int id = 0;
        SqlCommand cmd = new SqlCommand(sql, cnn);

        if (prms != null)
        {
            cmd.Parameters.AddRange(prms);
        }

        if (cnn.State == ConnectionState.Closed)
        {
            cnn.Open();
        }

        try
        {
            cmd.ExecuteNonQuery();
            SqlCommand cmd1 = new SqlCommand("SELECT @@IDENTITY AS SAYI", cnn);
            id = Convert.ToInt32(cmd1.ExecuteScalar());
        }
        finally  //hata oluşsun ya da oluşmasın cnn kapatılırs
        {
            cnn.Close();
        }

        return id;
    }
    public object ExecuteScalar(string sql)
    { //Tek değer döner tip object tir.
        object sonuc = null;
        SqlCommand cmd = new SqlCommand(sql, cnn);

        if (cnn.State == ConnectionState.Closed)
        {
            cnn.Open();
        }

        try
        {
            sonuc = cmd.ExecuteScalar();
        }
        finally  //hata oluşsun ya da oluşmasın cnn kapatılırs
        {
            cnn.Close();
        }
        return sonuc;
    }

    public SqlDataReader ExecuteReader(string sql)
    {   //İleri doğru okuma yapabilen sadece okunabilir kayıtlar getirir
        //tablonun başına konumlanır. Read komutuyla bir soraki satıra 
        //konumlanır.Okuma yapılırken bağlantı açık olmalıdır.
        SqlCommand cmd = new SqlCommand(sql, cnn);

        if (cnn.State == ConnectionState.Closed)
        {
            cnn.Open();
        }
        SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        //CommandBehavior.CloseConnection reader kapatılınca bağlantı da
        //kapatılacak demektir.
        return dr;
    }
    public void MesajBoxiButonaYukle(Button btn, string mesaj)
    {
        btn.Attributes.Add("OnClick", "return confirm('" + mesaj + "')");
    }

    public string MesajGoster(string mesaj)
    {
        string donecekmesaj = "";
        donecekmesaj = "<script type=\"text/javascript\" language=\"javascript\">alert('" + mesaj + "');</script>";
        return donecekmesaj;
    }

    public void VdMailGonder(string adres_to, string konu, string icerik)
    {
        SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
        client.EnableSsl = true;
        MailAddress from = new MailAddress("mesajformu@gmail.com");
        MailAddress to = new MailAddress("" + adres_to + "", "");
        System.Net.Mail.MailMessage message = new System.Net.Mail.MailMessage(from, to);
        message.Subject = konu;
        message.Body = icerik;
        message.IsBodyHtml = true;
        NetworkCredential myCreds = new NetworkCredential("mesajformu@gmail.com", "26Mart2014", "");
        client.Credentials = myCreds;

        try { client.Send(message); }
        catch (Exception) { }
    }


   
    public DataTable Fill(string sql, params SqlParameter[] prms)
    {
        SqlCommand cmd = new SqlCommand(sql, cnn);
        if (prms != null)
        {
            cmd.Parameters.AddRange(prms);
        }
        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataTable dt = new DataTable();

        da.Fill(dt);
        return dt;
    }
    public DataTable getDataTable(string sql)
    {

        SqlCommand sorgu = new SqlCommand(sql, cnn);

        DataTable tablo = new DataTable();
        SqlDataAdapter adpt = new SqlDataAdapter(sorgu);
        adpt.Fill(tablo);

        return tablo;
       
    }


    public string KarakterDuzelt(string metin)
    {
        return metin.Replace('ş', 's').Replace('Ş', 'S').Replace('ç', 'c').Replace("Ç", "C").Replace('ğ', 'g').Replace('Ğ', 'G').Replace(' ', '-').
            Replace('ü', 'u').Replace('Ü', 'U').Replace('ı', 'i').Replace('İ', 'I').Replace('ö', 'o').Replace('Ö', 'O').
            Replace(' ', '-').Replace("?", "").Replace(",", "").Replace("/", "").Replace(".", "").Replace("\"", "").Replace("&", "and").Replace(":", "");  //Gibi Gibi
    }
	
}