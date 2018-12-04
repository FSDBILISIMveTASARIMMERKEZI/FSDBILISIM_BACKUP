<%@ Page Title="BİZE ULAŞMAK MI İSTEDİNİZ?|MÜŞTERİLERİMİZ|İLETİŞİM fsdbilisim.com" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MusteriTalepFormu.aspx.cs" Inherits="MusteriTalepFormu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container" id="contact">

        <section>

            <div class="row">
                <div class="col-md-12">
                    <section>
                        <div class="heading">
                            <h2>BİZE ULAŞMAK MI İSTEDİNİZ?</h2>
                        </div>

                        <p class="lead" style="text-align: justify">
                            Çalışmalarımızda merkezi noktası olan siz müşterilerimiz ile yüz yüze görüşerek başarıya daha hızlı adımlar ile ulaşabileceğimize inanıyoruz.
                                 Öneri, istek ve görüşlerinizi bizimle paylaşmak için iletişime geçebilirsiniz .
                        </p>
                        <p style="text-align: justify">
                            Lütfen bizim ile iletişime geçmekten çekinmeyiniz.Merak ettiğiniz konularda e-mail adresimiz ile 7/24 iletişime geçebilirsiniz.
                        <br />
                            Size bir telefon kadar uzaktayız...<br />
                            www.fsdbilisim.com
                        </p>
                    </section>
                </div>
            </div>

        </section>

        <%-- <section>

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
                                <%--<p><strong>E-mail:</strong> info@fsdbilisim.com.tr</p>
                                <p><strong>Telefon :</strong> 0553.........</p>
                                <p><strong>Faks :</strong> 0553......</p>
                                <p>Pınarbaşı Mah.
                                    <br />
                                    Bolayır Sok. No:23/6
                                    <br />
                                    <strong>Keçiören,Ankara</strong></p>
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
                            <p class="text-muted">Hafta içi 08:00-21:00, hafta sonu 08:00-20:00 saatleri arasında ulaşabileceğiniz telefon/faks numaralarımız: </p>
                            <p><strong>Telefon :</strong> 0553 860 30 83</p>
                            <p><strong>Telefon :</strong> 0553 860 30 83</p>
                            <p><strong>Faks :</strong> 0553 860 30 83</p>
                        </div>
                        <!-- /.box-simple -->

                    </div>

                    <div class="col-md-4">

                        <div class="box-simple">
                            <div class="icon">
                                <i class="fa fa-envelope"></i>
                            </div>
                            <h3>FSD BİLİŞİM ve TASARIM MERKEZİ
                                <br />
                                E-MAİL ADRESİMİZ </h3>
                            <p class="text-muted">Her türlü sorunuz veya önerinizde 7/24 kullanabileceğiniz e-mail adreslerimiz:</p>
                            <ul class="list-style-none">
                                <li><strong><a href="mailto:">info@fsdbilisim.com</a></strong>
                                </li>
                                <li><strong><a href="mailto:">samidemir@fsdbilisim.com</a></strong>
                                </li>
                                <li><strong><a href="mailto:">fatmademir@fsdbilisim.com</a></strong>
                                </li>

                            </ul>
                        </div>
                        <!-- /.box-simple -->
                    </div>
                </div>

            </section>---%>

        <section>

            <div class="row text-center">

                <div class="col-md-12">
                    <div class="heading">
                        <h2>MÜŞTERİ TALEP FORMU</h2>
                    </div>
                </div>

                <div class="col-md-8 col-md-offset-2">

                    <div class="row">

                        <div class="col-sm-6">

                            <div class="form-group">
                                <%-- <label for="firstname">Adınız</label>
                                        <input type="text" class="form-control" id="firstname">--%>
                                <asp:TextBox class="form-control" ID="txtAdSoyad" placeholder="İsim ve Soyisiminizi Giriniz..." runat="server"></asp:TextBox>
                            </div>
                        </div>

                        <%--<div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="lastname">Soyadınz</label>
                                        <input type="text" class="form-control" id="lastname">
                                    </div>
                                </div>--%>
                        <div class="col-sm-6">

                            <div class="form-group">
                                <%--<label for="email">Email Adresiniz</label>
                                        <input type="text" class="form-control" id="email">--%>
                                <asp:TextBox class="form-control" ID="txtMail" TextMode="Email" placeholder="Mail Adresinizi Giriniz... " runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <%--<label for="subject">Mesajın Konusu</label>
                                        <input type="text" class="form-control" id="subject">--%>
                                <asp:TextBox class="form-control" ID="txtTel" TextMode="Number" placeholder="Telefon Numaranızı Giriniz..." runat="server"></asp:TextBox>

                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <%-- <label for="firstname">Adınız</label>
                                        <input type="text" class="form-control" id="firstname">--%>
                                <asp:TextBox class="form-control" ID="txtAdres" placeholder="Adresi Giriniz..." runat="server"></asp:TextBox>
                            </div>
                        </div>



                        <div class="col-sm-12">
                            <div class="form-group">
                                <%--<label for="message">Mesaj</label>
                                        <textarea id="message" class="form-control"></textarea>--%>
                                <asp:TextBox class="form-control" ID="txtMesaj" TextMode="MultiLine" placeholder="Mesajınızı Giriniz..." runat="server"></asp:TextBox>
                            </div>
                        </div>


                        <div class="col-sm-12">
                            <div class="form-group">
                                <asp:DropDownList ID="ddlHizmet" title="Hizmet Türünü Seçiniz" AppendDataBoundItems="True" class="dropdown" runat="server" DataSourceID="SqlDataSource1" DataTextField="kategoriAdi" DataValueField="id">
                                    <asp:ListItem Value="0">Hizmet Türü Seçiniz</asp:ListItem>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connstr %>" SelectCommand="SELECT [id], [kategoriAdi] FROM [kategoriler]"></asp:SqlDataSource>

                            </div>
                        </div>

                        <div class="col-sm-12">


                                    <center>
                        
                              <asp:CheckBox ID="CheckBox1" runat="server"></asp:CheckBox> Robot Değilim
                                </center>

                                </div>
                        <div class="col-sm-12 text-center">
                            <div class="form-group">
                                <%--<button type="submit" class="btn btn-template-main"><i class="fa fa-envelope-o"></i>Send message</button>--%>
                               
                                <asp:HiddenField ID="HiddenField1" runat="server" />
                                <p>
                                    <br />
                                </p>
                                <asp:Button class="btn btn-template-main" ID="btnGonder" runat="server" OnClick="btnGonder_Click" Text="Gönder" />
                                <asp:Button ID="btnTemizle" class="btn btn-template-main" OnClick="btnTemizle_Click" runat="server" Text="Temizle" />
                            </div>
                            <div>
                                <asp:Label ID="lhata" ForeColor="Red" runat="server" Text=""></asp:Label>
                                <asp:Label ID="hatal" ForeColor="Green" runat="server" Text=""></asp:Label>
                            </div>

                        </div>
                    </div>
                    <!-- /.row -->


                    <%--<form id="form2" class="customform" runat="server">

                            <div class="s-4" style="width: 350px">



                                <asp:TextBox class="s-4" ID="txtMail" TextMode="Email" placeholder="Mail Adresinizi Giriniz... " runat="server"></asp:TextBox>
                                <asp:TextBox class="s-4" ID="txtAdSoyad" placeholder="İsim ve Soyisiminizi Giriniz..." runat="server"></asp:TextBox>
                                <asp:TextBox class="s-4" ID="txtTel" TextMode="Number" placeholder="Telefon Numaranızı Giriniz..." runat="server"></asp:TextBox>


                                <asp:TextBox class="s-4" ID="txtMesaj" TextMode="MultiLine" placeholder="Mesajınızı Giriniz..." runat="server"></asp:TextBox>
                            </div>



                            <div class="s-4" style="width: 350px">

                                <center>
                        <%--    <img src="captcha.png" alt="sayi" title="sayi" />--%>
                    <%--       <asp:CheckBox ID="CheckBox1" runat="server"></asp:CheckBox> Robot Değilim
                                </center>
                                <asp:HiddenField ID="HiddenField1" runat="server" />
                                <p>
                                    <br />
                                </p>

                                <%--   <asp:TextBox class="s-4" ID="TextBox6" placeholder="Güvenlik Resmi" runat="server"></asp:TextBox>--%>


                    <%--  <asp:Button class="color-btn" ID="btnGonder" runat="server" OnClick="btnGonder_Click" Text="Gönder" />

                            </div>



                        </form>--%>
                </div>
            </div>
            <!-- /.row -->

        </section>


    </div>
</asp:Content>

