<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Iletisim.aspx.cs" Inherits="Iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="all">
        <header>

        </header>

        <!-- *** LOGIN MODAL ***
_________________________________________________________ -->

        

        <!-- *** LOGIN MODAL END *** -->

        <div id="heading-breadcrumbs">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <h1>İLETİŞİM</h1>
                    </div>
                    <div class="col-md-5">
                        <ul class="breadcrumb">
                            <li><a href="index.html">Anasayfa</a>
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
                                    <h2>Size nasıl yardımcı olabiliriz</h2>
                                </div>

                                <p class="lead">Are you curious about something? Do you have some kind of problem with our products? As am hastily invited settled at limited civilly fortune me. Really spring in extent an by. Judge but built gay party world. Of so am
                                    he remember although required. Bachelor unpacked be advanced at. Confined in declared marianne is vicinity.</p>
                                <p>Please feel free to contact us, our customer service center is working for you 24/7.</p>
                            </section>
                        </div>
                    </div>

                </section>

                <section>

                    <div class="row">
                        <div class="col-md-4">
                            <div class="box-simple">
                                <div class="icon" style="color:#ea6d25; text-align:center">
                                    <i class="fa fa-map-marker"></i>
                                </div>
                                <h3>Adres</h3>
                                <p>13/25 Örnek Mahallesi
                                    <br>Örnek Sokak, 45Y 73J
                                    <br>Çankaya, <strong>Ankara</strong>
                                </p>
                            </div>
                            <!-- /.box-simple -->
                        </div>


                        <div class="col-md-4">

                            <div class="box-simple">
                                <div class="icon"style="color:#ea6d25; text-align:center">
                                    <i class="fa fa-phone"></i>
                                </div>
                                <h3>Telefon</h3>
                                <p class="text-muted">7 /24 danışma hattı</p>
                                <p><strong>+33 555 444 333</strong>
                                </p>
                            </div>
                            <!-- /.box-simple -->

                        </div>

                        <div class="col-md-4">

                            <div class="box-simple">
                                <div class="icon" style="color:#ea6d25; text-align:center">
                                    <i class="fa fa-envelope"></i>
                                </div>
                                <h3>E- Mail</h3>
                                <p class="text-muted">E-maillerinize en geç 24 saat içerisinde dönüş yapılmaktadır.</p>
                                <ul class="list-style-none">
                                    <li><strong><a href="mailto:">info@örnekcatring.com</a></strong>
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
                                <h2>İletişim Formu</h2>
                            </div>
                        </div>

                        <div class="col-md-8 col-md-offset-2">
                            <form>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="firstname">Ad</label>
                                            <input type="text" class="form-control" id="firstname">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="lastname">Soyad</label>
                                            <input type="text" class="form-control" id="lastname">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="email">Email</label>
                                            <input type="text" class="form-control" id="email">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="subject">Konu</label>
                                            <input type="text" class="form-control" id="subject">
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label for="message">Mesaj</label>
                                            <textarea id="message" class="form-control"></textarea>
                                        </div>
                                    </div>

                                    <div class="col-sm-12 text-center">
                                        <button type="submit" class="btn btn-template-main"><i class="fa fa-envelope-o"></i> Gönder</button>

                                    </div>
                                </div>
                                <!-- /.row -->
                            </form>



                        </div>
                    </div>
                    <!-- /.row -->

                </section>


            </div>
            <!-- /#contact.container -->
        </div>
        <!-- /#content -->

        <div id="map">

        </div>




    </div>
</asp:Content>

