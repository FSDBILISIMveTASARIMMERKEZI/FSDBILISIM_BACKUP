<%@ Page Title="WEB TASARIM YAPMAK|ŞABLON BEYENİN|SEO KRİTERİ|WEB SİTE|MOBİL" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="WebTasarim.aspx.cs" Inherits="WebTasarim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server" >

    <!-- *** LOGIN MODAL END *** -->

    <div id="heading-breadcrumbs">
        <div class="container">
            <div class="row">
                <div class="col-md-7">
                    <h1>Web Tasarım </h1>
                </div>
                <div class="col-md-5">
                    <ul class="breadcrumb">
                        <li><a href="Default.aspx">Anasayfa</a>
                        </li>
                        <li>Web Tasarım </li>
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
                            <h2>WEB  SİTESİ Mİ YAPMAK İSTEDİNİZ?</h2>
                        </div>

                        <p class="lead" style="text-align:justify;text-indent:30px">
                            Beğendiğiniz şablonlar ile yapılan web siteleriniz şaşırtıcı tasarımlar ile her türlü cihaza uyumlu ve ekran çözünürlüklerine tamamen duyarlı yapıda olsun. 
Oluşturduğunuz siteler arama motorların kriterlerine uygun tasarlanarak en üst sıralarda listelenebilir olsun. Doğal popülarite sağlayarak geliştirilen siteleriniz sunduğu hizmetler ve satışlar ile geniş kitlelere ulaşşın...
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
                                            <a href="<%# Eval("demoUrl") %>" class="btn btn-template-transparent-primary" target="_blank">Demo</a>
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

