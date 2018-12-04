<%@ Page Title="WEB TASARIM|DESİNG|YORUM|TASARIM MERKEZİ|SEO UYUMU" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BlogDetay.aspx.cs" Inherits="BlogDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="heading">
                    <h1>
                        <asp:Label ID="lkonu2" runat="server" Text=""></asp:Label></h1>
                </div>
            </div>
            <div class="col-md-6">
                <ul class="breadcrumb">
                    <li><a href="Default.aspx">Anasayfa</a>
                    </li>
                    <li>
                        <asp:Label ID="lkonu3" runat="server" Text=""></asp:Label></li>
                </ul>

            </div>
        </div>
    </div>
    <div id="content">
        <div class="container">

            <div class="row">

                <!-- *** LEFT COLUMN ***
			_________________________________________________________ -->

                <div class="col-md-9" id="blog-post">
                    <p class="text-muted text-uppercase mb-small text-right">
                        Yazar: <a href="#">
                            <asp:Label ID="lyazar" runat="server" Text=""></asp:Label></a> |
                        <asp:Label ID="ltarih" runat="server" Text=""></asp:Label>
                    </p>


                    <div id="post-content">
                        <div class="col-md-12 row">
                            
                            <div class="col-md-6 col-sm-12 col-xs-12 " style=" border: 1px solid powderblue;">
                                
                                <asp:Image ID="Image1"  Width="690" Height="300" CssClass="img-responsive" runat="server"  />
                            </div>
                            <div class="col-md-6 col-sm-12 col-xs-12 " >
                                <h2>
                                    <asp:Label ID="lad" runat="server" Text=""></asp:Label></h2>
                                <p style="text-align: justify;">
                                    <asp:Label ID="lmakale" runat="server" Text=""></asp:Label>
                                </p>



                            </div>

                        </div>




                    </div>
                    <!-- /#post-content -->

                    <div id="comments" class="col-md-12">
                        <h4 class="text-uppercase">
                            <asp:Label ID="lyorumsayisi" runat="server" Text=""></asp:Label>
                            Yorum</h4>

                        <asp:Repeater ID="rptMusteriYorumları" runat="server">


                            <ItemTemplate>
                                <div class="row comment">
                                    <div class="col-sm-3 col-md-2 text-center-xs">
                                        <p>
                                            <img src="img/blog-avatar2.png" class="img-responsive img-circle" alt="">
                                        </p>
                                    </div>
                                    <div class="col-sm-9 col-md-10">
                                        <h5 class="text-uppercase">
                                            <%# Eval("ad") %></h5>
                                        <p class="posted"><i class="fa fa-clock-o"></i>
                                            <%# Eval("tarih") %></p>
                                        <p>
                                           <%# Eval("yorum") %>
                                        </p>

                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>

                         <!-- /.comment -->




                    </div>
                    <!-- /#comments -->


                    <div id="comment-form">

                        <h4 class="text-uppercase">Yorum Yap</h4>


                        <div class="row">

                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="name">
                                        Ad Soyad <span class="required">*</span>
                                    </label>
                                    <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="email">
                                        Email <span class="required">*</span>
                                    </label>
                                    <asp:TextBox ID="TextBox2" class="form-control" TextMode="Email" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="comment">
                                        Yorum <span class="required">*</span>
                                    </label>
                                    <asp:TextBox ID="TextBox3" TextMode="MultiLine" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                         <div class="col-sm-12">


                            
                        
                              <asp:CheckBox ID="CheckBox1" runat="server"></asp:CheckBox> Robot Değilim
                        

                                </div>
                        
                        <div class="col-sm-6">
                            <div class="col-sm-12 text-right">
                                <asp:Button OnClick="Button1_Click" class="btn btn-template-main" ID="Button1" runat="server" Text="Yorum Yap" /><i class="fa fa-comment-o"></i>

                            </div>
                        </div>

                         <div class="col-sm-12">
                        <asp:Label ID="lhata" ForeColor="red" runat="server" Text="Label"></asp:Label>
                        <asp:Label ID="lhata2" ForeColor="Green" runat="server" Text="Label"></asp:Label>

                              </div>


                    </div>
                    <!-- /#comment-form -->


                </div>
                <!-- /#blog-post -->

                <!-- *** LEFT COLUMN END *** -->

                <!-- *** RIGHT COLUMN ***
				_________________________________________________________ -->

                <div class="col-md-3">

                    <!-- *** MENUS AND WIDGETS ***
 _________________________________________________________ -->
                    <div class="panel panel-default sidebar-menu">

                        <div class="panel-heading">
                            <h3 class="panel-title">Son  Yazılar</h3>
                        </div>

                        <div class="blog-entries">
                            <div class="item same-height-row clearfix">

                                <div class="name same-height-always">
                                    <h5><a href="Blog.aspx">Web Tasarım ve SEO Uyumu</a></h5>
                                </div>
                            </div>

                            <div class="item same-height-row clearfix">

                                <div class="name same-height-always">
                                    <h5><a href="Blog.aspx">Web Sitesi Nasıl Çalışır?</a></h5>
                                </div>
                            </div>

                            <div class="item same-height-row clearfix">
                                <div class="name same-height-always">
                                    <h5><a href="Blog.aspx">İyi Bir Makale Nasıl Olmalıdır?</a></h5>
                                </div>
                            </div>
                        </div>


                    </div>

                    <div class="panel panel-default sidebar-menu">

                        <div class="panel-heading">
                            <h3 class="panel-title">Ara</h3>
                        </div>

                        <div class="panel-body">
                            <form role="search">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Site içi Arama">
                                    <span class="input-group-btn">

                                        <button type="submit" class="btn btn-template-main"><i class="fa fa-search"></i></button>

                                    </span>
                                </div>
                            </form>
                        </div>
                    </div>

                    <div class="panel panel-default sidebar-menu">

                        <div class="panel-heading">
                            <h3 class="panel-title">Kategoriler</h3>
                        </div>

                        <div class="panel-body">
                            <ul class="nav nav-pills nav-stacked">
                                <li><a href="WebTasarim.aspx">Ankara Web Tasarım</a>
                                </li>
                                <li><a href="E-Ticaret.aspx">Ankara E-Ticaret</a>
                                </li>
                                <li><a href="MobilTasarim.aspx">Ankara Mobil Tasarım</a>
                                </li>
                                <li><a href="KisiselTasarim.aspx">Ankara Kişisel Site Tasarım</a>
                                </li>

                                <li><a href="Seo.aspx">Ankara Seo/Sem</a>
                                </li>
                                <li><a href="Kartvizit.aspx">Ankara Kartvizit Tasarım</a>
                                </li>
                                <li><a href="Logo.aspx">Ankara Logo & Kurumsal Kimlik Tasarım</a>
                                </li>
                                <li><a href="SosyalMedya.aspx">Ankara Sosyal Medya Danışmanlığı</a>
                                </li>

                                <li><a href="MailHizmeti.aspx">Ankara Bilişim & E-mail Hizmetleri</a>
                                </li>
                                <li><a href="Reklam.aspx">Ankara Afiş, Broşür, Reklam, Davetiye Tasarımı </a>
                                </li>

                                <li><a href="WebTasarim.aspx">Ankara web Sitesi, Profesyonel Seo Hizmeti, E-Ticaret, Responsive Site, Mobil Tasarım  </a>
                                </li>
                                <li><a href="WebTasarim.aspx">Çankaya-Yenimahalle-Keçiören-Mamak-Şentepe Web Tasarım, Seo, E-Ticaret, Kartivit-Afiş-Broşür Tasarım </a>
                                </li>
                                <li><a href="WebTasarim.aspx">Türkiye Web Tasarım, Mobil Tasarım, Seo, Web Sitesi </a>
                                </li>

                                <li><a href="WebTasarim.aspx">Ankara Web Sitesi Tasarım, Hazır Web Sitesi, Web Yazılım, Hazır Site </a>
                                </li>
                                <li><a href="WebTasarim.aspx">Ankara Site Kur, Web Sitesi Kurma, Web Sitesi Fiyatları, Web Tasarım Ajansı </a>
                                </li>
                                <li><a href="WebTasarim.aspx">Ankara Kurumsal Web Tasarım, Web Dizayn </a>
                                </li>

                                <li><a href="WebTasarim.aspx">Ankara Responsive, Web Sitede Kampanya </a>
                                </li>
                                <li><a href="WebTasarim.aspx">Ankara Web Tasarımda Kampanya, E-Ticaret </a>
                                </li>
                                <li><a href="WebTasarim.aspx">Ankara Web Tasarım Merkezi, Kartvizit,Afiş,Broşür Tasarım </a>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="panel sidebar-menu">
                        <div class="panel-heading">
                            <h3 class="panel-title">Etiket Bulutu</h3>
                        </div>

                        <div class="panel-body">
                            <ul class="tag-cloud">
                                <li><a href="#"><i class="fa fa-tags"></i>html5</a>
                                </li>
                                <li><a href="#"><i class="fa fa-tags"></i>css3</a>
                                </li>
                                <li><a href="#"><i class="fa fa-tags"></i>jquery</a>
                                </li>
                                <li><a href="#"><i class="fa fa-tags"></i>ajax</a>
                                </li>
                                <li><a href="#"><i class="fa fa-tags"></i>aspx</a>
                                </li>
                                <li><a href="#"><i class="fa fa-tags"></i>responsive</a>
                                </li>
                                <li><a href="#"><i class="fa fa-tags"></i>visio</a>
                                </li>
                                <li><a href="#"><i class="fa fa-tags"></i>bootstrap</a>
                                </li>
                                <li><a href="#"><i class="fa fa-tags"></i>web </a>
                                </li>
                                <li><a href="#"><i class="fa fa-tags"></i>e-ticaret</a>
                                </li>
                                <li><a href="#"><i class="fa fa-tags"></i>logo</a>
                                </li>
                                <li><a href="#"><i class="fa fa-tags"></i>seo</a>
                                </li>
                                <li><a href="#"><i class="fa fa-tags"></i>sem</a>
                                </li>
                                <li><a href="#"><i class="fa fa-tags"></i>tasarım</a>
                                </li>
                                <li><a href="#"><i class="fa fa-tags"></i>Medya</a>
                                </li>
                                <li><a href="#"><i class="fa fa-tags"></i>bilişim</a>
                                </li>
                                <li><a href="#"><i class="fa fa-tags"></i>e-mail </a>
                                </li>
                                <li><a href="#"><i class="fa fa-tags"></i>hizmet</a>
                                </li>
                                <li><a href="#"><i class="fa fa-tags"></i>afiş</a>
                                </li>
                                <li><a href="#"><i class="fa fa-tags"></i>braşür</a>
                                </li>
                                <li><a href="#"><i class="fa fa-tags"></i>reklam</a>
                                </li>
                                <li><a href="#"><i class="fa fa-tags"></i>davetiye</a>
                                </li>
                                <li><a href="#"><i class="fa fa-tags"></i>form</a>
                                </li>
                                <li><a href="#"><i class="fa fa-tags"></i>blog</a>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="panel sidebar-menu">
                        <div class="panel-heading">
                            <h3 class="panel-title">Takip Et</h3>
                        </div>

                        <div class="panel-body">
                            <ul class="tag-cloud">
                                <li><a href="#"><i class="fa fa-twitter"></i>fsdbilişim</a>
                                </li>
                                <li><a href="#"><i class="fa fa-facebook"></i>fsdbilişim</a>
                                </li>
                                <li><a href="#"><i class="fa fa-google-plus"></i>fsdbilişim</a>
                                </li>
                                <li><a href="#"><i class="fa fa-instagram"></i>fsdbilişim</a>
                                </li>


                            </ul>
                        </div>
                    </div>

                    <!-- *** MENUS AND FILTERS END *** -->

                </div>
                <!-- /.col-md-3 -->

                <!-- *** RIGHT COLUMN END *** -->


            </div>
            <!-- /.row -->

        </div>
        <!-- /.container -->
    </div>
</asp:Content>

