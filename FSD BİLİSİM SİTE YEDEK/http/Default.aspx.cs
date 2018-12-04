using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
   

      
    }





    public string Calculate(string metin)
    {

        metin = Regex.Replace(metin, @"<(.\n)*?>", string.Empty);

        if (metin.Length > 250)
            
            metin = metin.Substring(0, 250);

        metin = metin + "...";

        return metin;

    } 
}