<%@ Page Title="MOBİL WEB TASARIM|MOBİL UYUMLU|AKILLI TELEFON|TABLET" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MobilTasarim.aspx.cs" Inherits="MobilTasarim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div id="heading-breadcrumbs">
        <div class="container">
            <div class="row">
                <div class="col-md-7">
                    <h1>MOBİL Web Tasarım</h1>
                </div>
                <div class="col-md-5">
                    <ul class="breadcrumb">
                        <li><a href="Default.html">Anasayfa</a>
                        </li>
                        <li>MOBİL</li>
                    </ul>

                </div>
            </div>
        </div>
    </div>

    <div id="content">
        <div class="container">

            <section>

                <div class="row">
                    <div class="col-md-12">
                        <div class="heading">
                            <h2>MOBİL Uyumlu Web SİTE NEDİR?</h2>
                        </div>

                        <p class="lead" style="text-align:justify;text-indent:30px">
                            <span class="accent">Mobil uyumluluk </span>, kullanıcılarınız sitenize  akıllı telefon, tabletleri vs. mobil cihazlar ile  giriş yaptığında,
                            sitenin ekran boyutlarının cihazın ekran boyutlarına göre şekil alması demektir. Mobil uyumlu web tasarım kullanıcı dostudur ve günümüzde çok tercih edilir.
                            Kullanıcıların zorlanmadan siteye ait tüm sayfalara rahatlıkla ulaşabilmelerine olanak sağlar. Mobil cihazarlara uyumlu olmayan sitelerin kullanımı zordur.
                            Kullanıcıların çok çabuk sıkılarak siteyi hemen terk etmesine sebebiyet verir.
                            
                        </p>
                    </div>
                </div>

                <div class="row portfolio">


                    <asp:Repeater ID="rptUrunler" runat="server" >

                        <ItemTemplate>
                            <div class="col-sm-6" style=" border: 1px solid powderblue;">
                                <div class="box-image">
                                    <div class="image" style="height:500px">
                                    <%--    <img src='<%# Eval("resim") %>' alt="responsive web tasarım, mobil tasarım, e ticaret" title="Web tasarım" class="img-responsive">--%>



                                        
                                          <a href="Detay.aspx?id=<%# Eval("id") %>">
                                            <asp:Image ID="Image1" Width="100%" ImageUrl='<%#DataBinder.Eval(Container.DataItem,"resim") %>' class="img-responsive" AlternateText='<%#DataBinder.Eval(Container.DataItem,"urunAdi") %>' runat="server" />
                                        </a>
                                    </div>
                                    <div class="bg"></div>
                                    <div class="name" >
                                        <h3 style="font-size:xx-large"><a href="Detay.aspx?id='<%# Eval("id") %>'" title="Web tasarım"+<%# Eval("urunAdi") %>><%# Eval("urunAdi") %></a></h3>
                                    </div>
                                    <div class="text">
                                        <p class="hidden-sm" style="font-size:x-large"><%# Eval("detay") %></p>
                                        <p class="buttons">
                                            <a href="Detay.aspx?id=<%# Eval("id") %>" class="btn btn-template-transparent-primary">Detay</a>
                                            <a href="<%# Eval("demoUrl") %>" class="btn btn-template-transparent-primary">Demo</a>
                                        </p>
                                    </div>
                                </div>
                                <!-- /.box-image -->

                            </div>


                        </ItemTemplate>
                    </asp:Repeater>
                    <asp:SqlDataSource  runat="server" ConnectionString="<%$ ConnectionStrings:connstr %>" SelectCommand="select * from urunler where kategoriId=2"></asp:SqlDataSource>
                     
                </div>
                

            </section>
             <div>

                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <ul class="pager">
                        <li class="previous"><asp:HyperLink ID="linkPrev" runat="server"    >&larr; GERİ</asp:HyperLink>
                        </li>
                        <li class="next "><asp:HyperLink ID="linkNext" runat="server"  >İLERİ &rarr;</asp:HyperLink>
                        </li>
                    </ul>
            </div>
         
                </div>
    
        </div>
        
</asp:Content>

