using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_product : System.Web.UI.Page
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

        string sql = "select * from urunler where id=" + Request["id"];

        

        SqlDataAdapter adapter = new SqlDataAdapter("select * from talep", connection);
        DataTable ds = new DataTable();
        adapter.Fill(ds);
        PagedDataSource pds = new PagedDataSource();
        pds.DataSource = ds.DefaultView;
        




        rptYazdır.DataSource = pds;
        rptYazdır.DataBind();

    }



    protected void rptURUNLER_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {

    }

    
    protected void btnYeni_Click(object sender, EventArgs e)
    {

    }
    protected void rptURUNLER_ItemDataBound1(object sender, RepeaterItemEventArgs e)
    {

    }
    protected void btnYeni_Click1(object sender, EventArgs e)
    {
        
    }
}