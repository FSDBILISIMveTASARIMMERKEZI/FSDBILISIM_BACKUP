using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BlogDetay : System.Web.UI.Page
{
    private SqlConnection baglanti;

    public DataTable tablo = new DataTable();

    fsdbilisim fsd = new fsdbilisim();
    protected void Page_Load(object sender, EventArgs e)
    {
        string connstr = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
        baglanti = new SqlConnection(connstr);
        lhata.Text = "";
        lhata2.Text = "";

        if (!IsPostBack)

            bilgi();

    }
    public void bilgi()
    {

        tablo = fsd.getDataTable("select * from blog where id=" + Request["id"]);

        lad.Text = tablo.Rows[0]["ad"].ToString();

        ltarih.Text = tablo.Rows[0]["tarih"].ToString();


        lmakale.Text = tablo.Rows[0]["makale"].ToString();

        if (tablo.Rows[0]["makale"].ToString() == null)
            lyazar.Text = "Fatma DEMİR";

        lyazar.Text = tablo.Rows[0]["yazar"].ToString();
      
        lkonu2.Text = tablo.Rows[0]["konu"].ToString();
        lkonu3.Text = tablo.Rows[0]["konu"].ToString();
        Image1.ImageUrl = tablo.Rows[0]["resim"].ToString();




        tablo = fsd.getDataTable("select * from blogYorum where blogId="+Request["id"]);
        lyorumsayisi.Text = tablo.Rows.Count.ToString();

        rptMusteriYorumları.DataSource = tablo;
        rptMusteriYorumları.DataBind();


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            if (CheckBox1.Checked != true)
            {
                lhata.Text = "Robot musunuz?";
                return;
            }

            string sql = "insert into blogYorum(ad,yorum,blogId,email) values(@ad,@yorum,@blogId,@email)";
            SqlCommand sorgu = new SqlCommand(sql, baglanti);

            sorgu.Parameters.AddWithValue("@ad", TextBox1.Text);
            sorgu.Parameters.AddWithValue("@email", TextBox2.Text);

            sorgu.Parameters.AddWithValue("@yorum", TextBox3.Text);

            sorgu.Parameters.AddWithValue("@blogId", Convert.ToInt32(Request["id"].ToString()));
            baglanti.Open();
            sorgu.ExecuteNonQuery();
            baglanti.Close();
            lhata2.Text = "Mesajınız tarafımıza başarılı bir şekilde ulaştı.";

            TextBox1.Text = "";
            TextBox2.Text = "";

            TextBox3.Text = "";
            CheckBox1.Checked = false;


        }
        catch (Exception)
        {

            throw;
        }
    }
}