<%@ Page Title="WEB DESING|E-TİCARET|SEO-SEM|MOBİL|KİŞİSEL|KARTVİZİT " Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Blog.aspx.cs" Inherits="Blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="heading">
                <h1>BLOK LİSTESİ</h1>
            </div></div>
            <div class="col-md-6">
                <ul class="breadcrumb">
                    <li><h6><a href="Default.aspx">Anasayfa</a></h6>
                    </li>
                    <li>BLOK LİSTESİ</li>
                </ul>

            </div>
        </div>
    </div>
    <br />
    <div id="content">
        <div class="container">
            <div class="row">
                <!-- *** LEFT COLUMN ***
			 _________________________________________________________ -->

                <div class="col-md-9" id="blog-listing-medium">

                    <asp:Repeater ID="Repeater1" runat="server" >


                        <ItemTemplate>

                            <section class="post">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="image" style=" border: 1px solid powderblue;">
                                            <a >
                                                <asp:Image  ID="Image1" Width="300" Height="180" ImageUrl='<%# Eval("resim") %>'   runat="server" class="img-responsive" alt='<%# Eval("konu") %>' />  
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <h2><a <%--href="BlogDetay.aspx?id=<%# Eval("id") %>"--%>><%# Eval("konu") %></a></h2>
                                        <div class="clearfix">
                                            <p class="author-category">
                                                <a href="BlogDetay.aspx?id=<%# Eval("id") %>"><%# Eval("ad") %></a>
                                            </p>
                                            <p class="date-comments">
                                                <a <%--href="BlogDetay.aspx?id=<%# Eval("id") %>"--%>><i class="fa fa-calendar-o"></i><%# Eval("tarih") %></a>
                                                <a href="BlogDetay.aspx?id=<%# Eval("id") %>"><i class="fa fa-comment-o"></i>Yorumlar</a>
                                            </p>
                                        </div>
                                        <p class="intro" style="text-align:justify">
                                            <%#Devamı( Eval("makale").ToString()) %>
                                        </p>
                                        <p class="read-more">
                                            <a href="BlogDetay.aspx?id=<%# Eval("id") %>" class="btn btn-template-main">Devamı</a>
                                        </p>
                                    </div>
                                </div>
                            </section>

                        </ItemTemplate>
                    </asp:Repeater>
                     <asp:SqlDataSource  runat="server" ConnectionString="<%$ ConnectionStrings:connstr %>" SelectCommand="select  *  from blog"></asp:SqlDataSource>
       

                    


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
                <!-- /.col-md-9 -->

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

                        <div class="blog-entries"  >
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
                                <li><a href="WebTasarim.aspx">Web Tasarım</a>
                                </li>
                                <li ><a href="E-Ticaret.aspx">E-Ticaret</a>
                                </li>
                                <li><a href="MobilTasarim.aspx">Mobil Tasarım</a>
                                </li>
                                <li><a href="KisiselTasarim.aspx">Kişisel Site Tasarım</a>
                                </li>

                                <li><a href="Seo.aspx">Seo/Sem</a>
                                </li>
                                <li ><a href="Kartvizit.aspx">Kartvizit Tasarım</a>
                                </li>
                                <li><a href="Logo.aspx">Logo & Kurumsal Kimlik Tasarım</a>
                                </li>
                                <li><a href="SosyalMedya.aspx">Sosyal Medya Danışmanlığı</a>
                                </li>

                                <li><a href="MailHizmeti.aspx">Bilişim & E-mail Hizmetleri</a>
                                </li>
                                <li><a href="Reklam.aspx">Afiş, Broşür, Reklam, Davetiye Tasarımı </a>
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
    <!-- /#content -->


    <!-- *** GET IT ***
_________________________________________________________ -->

    
</asp:Content>

