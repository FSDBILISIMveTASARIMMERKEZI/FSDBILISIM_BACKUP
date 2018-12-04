<%@ Page Title="AFİŞ,BROŞÜR,REKLAM|PAZARLAMA|PRESTİJ|REKABET" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Reklam.aspx.cs" Inherits="Reklam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <div id="heading-breadcrumbs">
        <div class="container">
            <div class="row">
                <div class="col-md-7">
                    <h1>REKLAM, AFİŞ , BROŞÜR, DAVETİYE </h1>
                </div>
                <div class="col-md-5">
                    <ul class="breadcrumb">
                        <li><a href="Default.aspx">Anasayfa</a>
                        </li>
                        <li>REKLAM</li>
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
                            <h2>İMAJINIZI FARK EDİLEBİLİR YAPMAK İSTER MİSİNİZ?</h2>
                        </div>

                        <p class="lead" style="text-align:justify;text-indent:30px">
                            Reklam, kurum ve kuruluşların hedef kitleleri olan tüketicilerine ulaşmak için kullandıkları doğrudan pazarlama faaliyetlerine geneline denir.
                            Kurum ve kuruluşların prestijini gösteren, hafızalarda kalma çabası olan, gelişen teknoloji ile birlikte ürün ve hizmetleri  anlatan, rekabet ortamında etkili kullanılan sanata 
                            denir
                        </p
                    </div>
                </div>

                <div class="row portfolio">


                    <asp:Repeater ID="rptUrunler" runat="server" >

                        <ItemTemplate>

                            <div class="col-sm-4">
                                <div class="box-image" style=" border: 1px solid powderblue; height:350px" >
                                    <div class="image">
                                        <%--   <img src="img/portfolio-1.jpg" alt="" class="img-responsive">--%>

                                        <a href="Detay.aspx?id=<%# Eval("id") %>">
                                            <asp:Image ID="Image1" Width="100%" ImageUrl='<%#DataBinder.Eval(Container.DataItem,"resim") %>' class="img-responsive" AlternateText='<%#DataBinder.Eval(Container.DataItem,"urunAdi") %>' runat="server" />
                                        </a>
                                    </div>
                                    <div class="bg"></div>
                                    <div class="name">
                                        <h3><a href="Detay.aspx?id=<%# Eval("id") %>"><%# Eval("urunAdi") %></a></h3>
                                    </div>
                                    <div class="text">
                                        <p class="hidden-sm"><%# Eval("detay") %></p>
                                        <p class="buttons">
                                            <a href="Detay.aspx?id=<%# Eval("id") %>" class="btn btn-template-transparent-primary">Detay</a>
                                         
                                        </p>
                                    </div>
                                </div>
                                <!-- /.box-image -->

                            </div>

                        </ItemTemplate>
                    </asp:Repeater>

                    <asp:SqlDataSource  runat="server" ConnectionString="<%$ ConnectionStrings:connstr %>" SelectCommand="select * from urunler where kategoriId=6"></asp:SqlDataSource>

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
       <%-- 
        <section class="bar background-gray no-mb">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="heading text-center">
                            <h2>Referanslarımız</h2>
                        </div>

                        <ul class="owl-carousel customers">
                            <li class="item">
                                <img src="img/customer-1.png" alt="" class="img-responsive">
                            </li>
                            <li class="item">
                                <img src="img/customer-2.png" alt="" class="img-responsive">
                            </li>
                            <li class="item">
                                <img src="img/customer-3.png" alt="" class="img-responsive">
                            </li>
                            <li class="item">
                                <img src="img/customer-4.png" alt="" class="img-responsive">
                            </li>
                            <li class="item">
                                <img src="img/customer-5.png" alt="" class="img-responsive">
                            </li>
                            <li class="item">
                                <img src="img/customer-6.png" alt="" class="img-responsive">
                            </li>
                        </ul>
                        <!-- /.owl-carousel -->

                    </div>

                </div>
            </div>
        </section>--%>

    </div>
    <!-- /#content -->
</asp:Content>

