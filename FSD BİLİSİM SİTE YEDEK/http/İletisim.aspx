<%@ Page Title="FSD BİLİŞİM ve TASARIM MERKEZİ|İLETİŞİM|ADRESİMİZ" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="İletisim.aspx.cs" Inherits="Iletisim" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div id="all">


        <!-- *** LOGIN MODAL ***
_________________________________________________________ -->

        <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="Login" aria-hidden="true">
            <div class="modal-dialog modal-sm">

                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="Login">Customer login</h4>
                    </div>
                    <div class="modal-body">
                        <form action="customer-orders.html" method="post">
                            <div class="form-group">
                                <input type="text" class="form-control" id="email_modal" placeholder="email">
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control" id="password_modal" placeholder="password">
                            </div>

                            <p class="text-center">
                                <button class="btn btn-template-main"><i class="fa fa-sign-in"></i>Log in</button>
                            </p>

                        </form>

                        <p class="text-center text-muted">Not registered yet?</p>
                        <p class="text-center text-muted"><a href="customer-register.html"><strong>Register now</strong></a>! It is easy and done in 1&nbsp;minute and gives you access to special discounts and much more!</p>

                    </div>
                </div>
            </div>
        </div>

        <!-- *** LOGIN MODAL END *** -->

        <div id="heading-breadcrumbs">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <h1>İLETİŞİM</h1>
                    </div>
                    <div class="col-md-5">
                        <ul class="breadcrumb">
                            <li><a href="Default.aspx">Anasayfa</a>
                            </li>
                            <li>İletişim</li>
                        </ul>

                    </div>
                </div>
            </div>
        </div>

        <div id="content">
            <div class="container" id="contact">

                <section>

                    <div class="row">
                        <div class="col-md-12">
                            <section>
                                <div class="heading">
                                    <h2>SİZE NASIL YARDIMCI OLABİLİRİZ?</h2>
                                </div>

                                <p class="lead" style="text-align: left">
                                    Çalışmalarımızda merkezi noktası olan siz müşterilerimiz ile yüz yüze görüşerek başarıya daha hızlı adımlar ile ulaşabileceğimize inanıyoruz.
                                 Öneri, istek ve görüşlerinizi bizimle paylaşmak için iletişime geçebilirsiniz .
                                </p>
                                <p style="text-align: justify">
                                    Lütfen bizim ile iletişime geçmekten çekinmeyiniz.Merak ettiğiniz konularda e-mail adresimiz ile 7/24 iletişime geçebilirsiniz...<br />
                                    Size bir telefon kadar uzaktayız.
                                </p>
                            </section>
                        </div>
                    </div>

                </section>

                <section>

                    <div class="row">
                        <div class="col-md-4">
                            <div class="box-simple">
                                <div class="icon">
                                    <i class="fa fa-map-marker"></i>
                                </div>
                                <h3>FSD BİLİŞİM ve TASARIM MERKEZİ
                                <br />
                                    ADRESİMİZ</h3>
                                <address>
                                    
                                    <br />
                                    <p><strong>Korkutreis Mah. Sezenler Caddesi No:12/7</strong></p>
                                   <p><strong> Çankaya, ANKARA  </strong></p> 
                                </address>
                            </div>
                            <!-- /.box-simple -->
                        </div>


                        <div class="col-md-4">

                            <div class="box-simple">
                                <div class="icon">
                                    <i class="fa fa-phone"></i>
                                </div>
                                <h3>FSD BİLİŞİM ve TASARIM MERKEZİ
                                <br />
                                    ÇAĞRI MERKEZİMİZ</h3>
                                <p class="text-muted">Hafta içi 08:00-21:00, hafta sonu 08:00-20:00 saatleri arasında ulaşabileceğiniz telefon numaralarımız: </p>
                                <p><strong>Telefon :</strong> 0 850 466 20 18</p>
                                <p><strong>         </strong>0553 984 20 16 / 0553 860 30 83 </p>
                                



                            </div>
                        </div>

                        <div class="col-md-4">

                            <div class="box-simple">
                                <div class="icon">
                                    <i class="fa fa-envelope"></i>
                                </div>
                                <h3>FSD BİLİŞİM ve TASARIM MERKEZİ
                                <br />
                                    E-MAİL ADRESİMİZ </h3>
                                <p class="text-muted" style="text-align: justify">Her türlü sorunuz veya önerinizde 7/24 kullanabileceğiniz e-mail adreslerimiz:</p>
                                <ul class="list-style-none">
                                    <li><strong><a href="mailto:">info@fsdbilisim.com</a></strong>
                                    </li>
                                    <li><strong><a href="mailto:">sami.demir@fsdbilisim.com</a></strong>
                                    </li>
                                    <li><strong><a href="mailto:">fatma.demir@fsdbilisim.com</a></strong>
                                    </li>
                                   
                                </ul>
                            </div>
                            <!-- /.box-simple -->
                        </div>
                    </div>
                </section>
               
                <section>
                    
                    
                    
                
                    
                    <div class="row text-center">
                        
                        <div class="col-md-12">
                            <div class="heading">
                                <h2>SİTE İLETİŞİM FORMU</h2>
                            </div>
                        </div>

                        <div class="col-md-8 col-md-offset-2">
                            <%--     <form action="customer-orders.html">--%>
                            <div class="row">
                                <div class="col-sm-6">

                                    <div class="form-group">

                                        <asp:TextBox ID="txtAd" class="form-control" placeholder="İsim ve Soyisiminizi Giriniz..." runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">

                                        <asp:TextBox ID="txtEmail" class="form-control" TextMode="Email" placeholder="Mail Adresinizi Giriniz... " runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">

                                        <asp:TextBox ID="txtTel" class="form-control" TextMode="Number" placeholder="Telefon Numaranızı Giriniz..." runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">

                                        <asp:TextBox ID="txtKOnu" class="form-control" TextMode="MultiLine" placeholder="Mesajınızın Konusunu Giriniz..." runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="message">Mesajınız</label>
                                        <asp:TextBox ID="txtMsj" class="form-control" TextMode="MultiLine" placeholder="Mesajınızı Giriniz..." runat="server"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-sm-12">


                                    <center>
                        
                              <asp:CheckBox ID="CheckBox1" runat="server"></asp:CheckBox> Robot Değilim
                                </center>

                                </div>


                                <div class="col-sm-12 text-center">
                                    <asp:Button ID="Button1" class="btn btn-template-main" runat="server" OnClick="Button1_Click" Text="Gönder" />
                                    <asp:Button ID="btnTemizle" class="btn btn-template-main" OnClick="btnTemizle_Click" runat="server" Text="Temizle" />

                                </div>
                                <div>
                                    <asp:Label ID="lhata" ForeColor="Red" runat="server" Text=""></asp:Label>
                                    <asp:Label ID="hatal" ForeColor="Green" runat="server" Text=""></asp:Label>
                                </div>

                            </div>
                            <!-- /.row -->
                            <%--  </form>--%>
                        </div>
                    </div>
                    <!-- /.row -->
                    <br />
                    <div >



                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d764.9108360257127!2d32.85117882918892!3d39.926997027157576!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14d34eff3374cd8b%3A0xcc3d80ec4512fea2!2sKorkutreis+Mahallesi%2C+Sezenler+Sk.+No%3A12%2C+06430+%C3%87ankaya%2FAnkara!5e0!3m2!1str!2str!4v1489242866937" width="1220" height="600" frameborder="0" style="border: 0" allowfullscreen></iframe>


                    </div>
                </section>


            </div>
            <!-- /#contact.container -->
        </div>
        <!-- /#content -->

        
    </div>
</asp:Content>

