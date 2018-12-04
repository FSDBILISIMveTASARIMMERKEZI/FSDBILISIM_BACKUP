<%@ Page Title="KARTVİZİT TASARIM|KURUMSAL KİMLİK|LOGO|ŞABLON|AFİŞ BROŞÜR REKLAM" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Kartvizit.aspx.cs" Inherits="Kartvizit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- *** LOGIN MODAL END *** -->

    <div id="heading-breadcrumbs">
        <div class="container">
            <div class="row">
                <div class="col-md-7">
                    <h1>KARTVİZİT</h1>
                </div>
                <div class="col-md-5">
                    <ul class="breadcrumb">
                        <li><a href="Default.aspx">Anasayfa</a>
                        </li>
                        <li>KARTVİZİT </li>
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
                            <h2>KARTVİZİT Hakkında</h2>
                        </div>

                        <p class="lead" style="text-align:justify;text-indent:30px">
                            Profesyonel yaşamın vazgeçilmez bir unsuru olan kartvizitler, her çalışanın sahip olması gereken kurumsal kimliktir.
                            Kartvizit tasarımı standart tasarımlardan farklı, özgün ve estetik  yapıda olmalı, kurumun logosunu taşımalı, temel iletişim bilgileriniz eksiksiz yazmalıdır.
                            Kartvizitinizde göreviniz, e-posta, adres bilgileri bulunması gereken en temel öğelerdendir.Kurumunuzun ve sosyal medya hesaplarınızın bilgilerini vermeyi unutmayın, böylelikle
                            yeni bir iletişim kanalı daha sunmuş olursunuz.Tabiki sosyal paylaşım adreslerinizin  güncel olmasına dikkat etmeniz gerekir.
                              
                     </p>
                    </div>
                </div>

                <div class="row portfolio">


                    <asp:Repeater ID="rptUrunler" runat="server" >

                        <ItemTemplate>

                            <div class="col-sm-4" >
                                <div class="box-image" style=" border: 1px solid powderblue;" >
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

                    <asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:connstr %>" SelectCommand="select * from urunler where kategoriId=1"></asp:SqlDataSource>

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
    <br />
        <!-- /.container -->

        <%--<section class="bar background-pentagon no-mb">
            <div class="container">
                <div class="row showcase">
                    <div class="col-md-3 col-sm-6">
                        <div class="item">
                            <div class="icon">
                                <i class="fa fa-align-justify"></i>
                            </div>
                            <h4><span class="counter">580</span><br>
                                Websites</h4>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="item">
                            <div class="icon">
                                <i class="fa fa-users"></i>
                            </div>
                            <h4><span class="counter">100</span><br>
                                Satisfied Clients</h4>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="item">
                            <div class="icon">
                                <i class="fa fa-copy"></i>
                            </div>
                            <h4><span class="counter">320</span><br>
                                Projects</h4>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="item">
                            <div class="icon">
                                <i class="fa fa-font"></i>
                            </div>
                            <h4><span class="counter">923</span><br>
                                Magazines and Brochures</h4>
                        </div>
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container -->
        </section>--%>
        <!-- /.bar -->

        <%--<section class="bar background-gray no-mb">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="heading text-center">
                            <h2>Our clients</h2>
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

