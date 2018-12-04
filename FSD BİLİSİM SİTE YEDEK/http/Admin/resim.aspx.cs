using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;

public partial class Admin_resim : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //DataTable tablo = new DataTable();
        //fsdbilisim fsd = new fsdbilisim();
        //tablo = fsd.getDataTable("select * from urunler ");

           
    }

    public static void ResimKirp(FileUpload fu, int genis, int yuksek, string yol, string dosyaonek)
    {
        Size yeniboyut = new Size(genis, yuksek);
        Size eskiboyut = new Size();
        yol = HttpContext.Current.Request.PhysicalApplicationPath + yol;
        if (fu.HasFile)
        {
            //fu.SaveAs(yol + "/e" + fu.FileName);
            //Bitmap bmpeski = new Bitmap(yol + "/e" + fu.FileName);
            fu.SaveAs(yol + "/e" + ".Jpeg");
            Bitmap bmpeski = new Bitmap(yol + "/e" + ".png");

            eskiboyut.Width = bmpeski.Width;
            eskiboyut.Height = bmpeski.Height;

            float genislikoran = (float)eskiboyut.Width / yeniboyut.Width;
            float yukseklikoran = (float)eskiboyut.Height / yeniboyut.Height;

            if (genislikoran < yukseklikoran)
            {
                int yukseklik = Convert.ToInt32(eskiboyut.Height / genislikoran);
                int a = (yukseklik - yeniboyut.Height) / 2;
                Bitmap bmpyeni = new Bitmap(bmpeski, yeniboyut.Width, yukseklik);

                Rectangle r = new Rectangle(0, a, yeniboyut.Width, yeniboyut.Height);

                Bitmap bmpson = bmpyeni.Clone(r, System.Drawing.Imaging.PixelFormat.Format24bppRgb);
                bmpson.SetResolution(72, 72);
                //bmpson.Save(yol + "/" + dosyaonek + fu.FileName, System.Drawing.Imaging.ImageFormat.Jpeg);
                bmpson.Save(yol + "/" + dosyaonek + ".Jpeg", System.Drawing.Imaging.ImageFormat.Jpeg);
                bmpeski.Dispose();
                bmpson.Dispose();
                bmpyeni.Dispose();
            }
            else
            {
                int genislik = Convert.ToInt32(eskiboyut.Width / yukseklikoran);
                int a = (genislik - yeniboyut.Width) / 2;
                Bitmap bmpyeni = new Bitmap(bmpeski, genislik, yeniboyut.Height);

                Rectangle r = new Rectangle(a, 0, yeniboyut.Width, yeniboyut.Height);

                Bitmap bmpson = bmpyeni.Clone(r, System.Drawing.Imaging.PixelFormat.Format24bppRgb);
                bmpson.SetResolution(72, 72);
                //bmpson.Save(yol + "/" + dosyaonek + fu.FileName, System.Drawing.Imaging.ImageFormat.Jpeg);
                bmpson.Save(yol + "/" + dosyaonek + ".Jpeg", System.Drawing.Imaging.ImageFormat.Jpeg);

                bmpeski.Dispose();
                bmpson.Dispose();
                bmpyeni.Dispose();
            }
            //File.Delete(yol + "/e" + fu.FileName);
            File.Delete(yol + "/e" + ".Jpeg");

        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        ResimKirp(FileUpload1, 500, 500, "~/imagesProduct", "deneme");   
    }
}