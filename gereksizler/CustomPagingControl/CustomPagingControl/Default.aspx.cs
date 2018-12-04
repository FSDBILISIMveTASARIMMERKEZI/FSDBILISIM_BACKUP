using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page 
{
    public int AktifSayfa { get; set; }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["Page"] != null)
        {
            AktifSayfa = Convert.ToInt32(Request.QueryString["Page"]);
        }
        else 
        {
            AktifSayfa = 1;
        }

        UrunleriGetir(AktifSayfa, "Default.aspx?");
    }

    public void UrunleriGetir(int AktifSayfa, string SayfaDizin)
    {
        SqlConnection cnn = new SqlConnection("server=.; DataBase=AdventureWorks; Uid=sa; pwd=sa12345");
        SqlCommand cmd = new SqlCommand("GetProductSubCategories", cnn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@AktifSayfa", SqlDbType.Int).Value = AktifSayfa;
        cmd.Parameters.Add("@ToplamKayitSayisi", SqlDbType.Int).Direction = ParameterDirection.Output;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        dlProducts.DataSource = dt;
        dlProducts.DataBind();
        int ToplamKayitSayisi = (int)cmd.Parameters["@ToplamKayitSayisi"].Value;
        Paging1.Sayfala(AktifSayfa, ToplamKayitSayisi, SayfaDizin);
    }
}
