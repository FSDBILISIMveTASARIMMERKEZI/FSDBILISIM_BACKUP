using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Yorumlar : System.Web.UI.Page
{
    private SqlConnection baglanti;

    public DataTable tablo = new DataTable();
    public fsdbilisim fsd = new fsdbilisim();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        //ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
        //baglanti = new SqlConnection(connstr);
        //if (IsPostBack)
        //    return;
    //    Detay();

    //}
    //public void Detay()
    //{

    //    tablo = fsd.getDataTable("select * from yorum where id="+ Request["id"]);

    //    l
    //    lad.Text = tablo.Rows[0]["adSoyad"].ToString();
    //    lmakale.Text = tablo.Rows[0]["yorum"].ToString();
    //}




        for (int i = 0; i < rptMusteriYorumları.Controls.Count; i++)
        {
            Label lgun = (Label)rptMusteriYorumları.Controls[i].FindControl("lgun");

            Label lay = (Label)rptMusteriYorumları.Controls[i].FindControl("lay");
            Label lyıl = (Label)rptMusteriYorumları.Controls[i].FindControl("lyıl");

            Label ltarih = (Label)rptMusteriYorumları.Controls[i].FindControl("ltarih");


            DateTime tarih = Convert.ToDateTime(ltarih.Text.ToString());

            string[] t = tarih.ToString().Split(' ');

            string[] t2 = t[0].Split('.');
            lgun.Text = t2[0].ToString();


            lay.Text = t2[1].ToString();

            if (lay.Text == "01")
                lay.Text = "Ocak";
            else if (lay.Text == "02")
                lay.Text = "Şubat";
            else if (lay.Text == "03")
                lay.Text = "Mart";
            else if (lay.Text == "04")
                lay.Text = "Nisan";
            else if (lay.Text == "05")
                lay.Text = "Mayıs";
            else if (lay.Text == "06")
                lay.Text = "Haziran";
            else if (lay.Text == "07")
                lay.Text = "Temmuz";
            else if (lay.Text == "08")
                lay.Text = "Ağustos";
            else if (lay.Text == "09")
                lay.Text = "Eylül";
            else if (lay.Text == "10")
                lay.Text = "Ekim";
            else if (lay.Text == "11")
                lay.Text = "Kasım";
            else if (lay.Text == "12")
                lay.Text = "Aralık";


            lyıl.Text = t2[2].ToString();
        }
    }
    protected void rptMusteriYorumları_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {

    }
}