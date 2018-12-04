using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Blog : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        rptGetir();
    }

    private void rptGetir()
    {
        string connectionString = ConfigurationManager.ConnectionStrings["connstr"].ToString();
        SqlConnection connection = new SqlConnection(connectionString);
        connection.Open();
        SqlDataAdapter adapter = new SqlDataAdapter("select * from blog", connection);
        DataTable ds = new DataTable();
        adapter.Fill(ds);
        PagedDataSource pds = new PagedDataSource();
        pds.DataSource = ds.DefaultView;
        pds.AllowPaging = true;
        pds.PageSize = 5;
        int sayfa;
        if (Request.QueryString["sayfa"] != null)
        {

            sayfa = Int32.Parse(Request.QueryString["sayfa"]);
        }
        else
        {
            sayfa = 1;
        }

        pds.CurrentPageIndex = sayfa - 1;
        Label1.Text = "Sayfa: " + sayfa + " / " + pds.PageSize;

        if (!pds.IsFirstPage)
        {
            linkPrev.NavigateUrl = "Blog.aspx?sayfa=" + (sayfa - 1);
        }

        if (!pds.IsLastPage)
        {
            linkNext.NavigateUrl = "Blog.aspx?sayfa=" + (sayfa + 1);
        }



        Repeater1.DataSource = pds;
        Repeater1.DataBind();

    }

    public string Devamı(string metin)
    {

        metin = Regex.Replace(metin, @"<(.\n)*?>", string.Empty);

        if (metin.Length > 300)

            metin = metin.Substring(0, 300);

        metin = metin + "...";

        return metin;

    } 

}