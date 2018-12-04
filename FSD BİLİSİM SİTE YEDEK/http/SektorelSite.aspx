﻿<%@ Page Title="WEB TASARIM YAPMAK|ŞABLON BEYENİN|SEO KRİTERİ|WEB SİTE|MOBİL" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SektorelSite.aspx.cs" Inherits="WebTasarim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server" >

    <!-- *** LOGIN MODAL END *** -->

    <div id="heading-breadcrumbs">
        <div class="container">
            <div class="row">
                <div class="col-md-7">
                    <h1>SEKTÖREL WEB SİTELERİ </h1>
                </div>
                <div class="col-md-5">
                    <ul class="breadcrumb">
                        <li><a href="Default.aspx">Anasayfa</a>
                        </li>
                        <li>SEKTÖREL WEB SİTELERİ </li>
                    </ul>

                </div>
            </div>
        </div>
    </div>

    <div id="content" >
        <div class="container">

            <section>

                <div class="row">
                    <div class="col-md-12">
                        <div class="heading">
                            <h2>SEKTÖREL WEB SİTELERİNDE NELER VAR ?</h2>
                        </div>

                        <p class="lead" style="text-align:justify;text-indent:30px">
                            Sektörlere özel olarak hazırlanan   tasarımlar, sektörlerin işlerini  kolaylaştırarak hızlı ve profesyonel tasarımlar ile sektörün 
                            ihtiyac duydukları web uygulamalarını sunmaktadır.
                            Sektörel tasarımlar: Otel Web Tasarım, Emlakçı Web Tasarım, Avukat Web Tasarım,
                            Doktor Web Tasarım, Tekstil Web Tasarım, Sağlık Web Tasarım, Vakıf Web Tasarım, Oto Web Tasarım,
                            Esnaf Web Tasarım, Sigorta Web Tasarım, Zeytin Web Tasarım, Restorant/Cafe Web Tasarım, İnşaat Web Tasarım, Eczane Web Tasarım
                            Gıda Web Tasarım, Turizm Web Tasarım, Hukuk Web Tasarım, Galeri Web Tasarım, Elektronik E-Ticaret Sitesi,
                            Hediye E-Ticaret Sitesi, Giyim E-Ticaret Sitesi, Bilişim E-Ticaret Sitesi, Kozmetik E-Ticaret Sitesi, Mobilya E-Ticaret Sitesi,
                            Saat E-Ticaret Sitesi, Halı E-ticaret Sitesi, Beyaz Eşya E-Ticaret Sitesi ve daha nicelerini kapsamaktadır.
                        </p>
                    </div>
                </div>

                <div class="row portfolio">


                    <asp:Repeater ID="rptUrunler" runat="server" >

                        <ItemTemplate>
                            

                                        
                            <div class="col-sm-6" style=" border: 1px solid powderblue;">
                                <br />
                                     <CENTER>        <a href="<%# Eval("demoUrl") %>" target="_blank"><p  style="font-size:x-large;color:powderblue; "><ins><%# Eval("aciklama") %></ins></p> </CENTER></a>
                                 
                                <div class="box-image">

                                    <div class="image" style="height:500px">
                                   
                                        
                                          <a>
                                            <asp:Image ID="Image1" Width="100%" ImageUrl='<%#DataBinder.Eval(Container.DataItem,"resim") %>' class="img-responsive" AlternateText='<%#DataBinder.Eval(Container.DataItem,"urunAdi") %>' runat="server" />
                                        </a>
                                    </div>
                                    <div class="bg"></div>
                                    <div class="name" >
                                        <h3 style="font-size:xx-large"><a href="<%# Eval("demoUrl") %>" target="_blank" title="Web tasarım"+<%# Eval("urunAdi") %>><%# Eval("urunAdi") %></a></h3>
                                    </div>
                                    <div class="text">
                                        <p class="hidden-sm" style="font-size:x-large"><%# Eval("detay") %></p>
                                        <p class="buttons">
                                            
                                            <a href="<%# Eval("demoUrl") %>" class="btn btn-template-transparent-primary" target="_blank">Demo</a>
                                        </p>
                                    </div>

                                </div>
                                <!-- /.box-image -->

                            </div>


                        </ItemTemplate>
                    </asp:Repeater>
                  
                    <asp:SqlDataSource  runat="server" ConnectionString="<%$ ConnectionStrings:connstr %>" SelectCommand="select * from urunler where kategoriId=9"></asp:SqlDataSource>
                    
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

