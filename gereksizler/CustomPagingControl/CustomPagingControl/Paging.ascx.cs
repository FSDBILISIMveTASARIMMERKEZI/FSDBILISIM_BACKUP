using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Paging : System.Web.UI.UserControl
{
    public void Sayfala(int AktifSayfa, int ToplamKayitSayisi, string AktifDizin)
    {
        lblPaging.Text = "";
        int ToplamSayfaSayisi = 0;
        if ((ToplamKayitSayisi % 10) == 0)
        {
            ToplamSayfaSayisi = ToplamKayitSayisi / 10;
        }
        else
        {
            ToplamSayfaSayisi = (ToplamKayitSayisi / 10) + 1;
        }

        if (AktifSayfa != 1)
        {
            lblPaging.Text += "<a href='" + AktifDizin + "Page=1'>«</a>";
        } 

        for (int i = 1; i <= ToplamSayfaSayisi; i++)
        {
            if (AktifSayfa != i)
            {
                lblPaging.Text += "<a class='PagingBackground' href='" + AktifDizin + "Page=" + i.ToString() + "'>" + i.ToString() + "</a>";
            }
            else
            {
                lblPaging.Text += "<span class='text'>" + i.ToString() + "</span>";
            }
        }

        if (AktifSayfa != ToplamSayfaSayisi)
        {
            lblPaging.Text += "<a href='" + AktifDizin + "Page=" + ToplamSayfaSayisi + "' class='PagingFirstLast' >»</a>";
        } 
    }
}
