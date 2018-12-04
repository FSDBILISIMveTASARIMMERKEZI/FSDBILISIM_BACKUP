<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row">

            <div class="col-md-12">
                <ul class="breadcrumb">
                    <li>
                        <a href="Default.aspx"><asp:Label ID="Label2" runat="server" Text="<%$ Resources:anasayfa%>"></asp:Label></a>
                    </li>
                    <li style="font-size: 15px; color: #005C7B;">


                        <asp:Label ID="Label1" runat="server" Text="<%$ Resources:iletisim%>"></asp:Label>
                    </li>
                </ul>

            </div>
        </div>
    </div>


    <div id="content">
        <div class="container" id="contact">

            <section>

                <div class="row">
                    <div class="col-md-12">
                        <section>
                            <div class="col-md-10 col-md-offset-2" style="padding-bottom: 20px">
                                <h2 class="heading"><asp:Label ID="Label3" runat="server" Text="<%$ Resources:iletisim2%>"></asp:Label>

                                </h2>
                            </div>

                            <p class="lead" style="text-align: justify; text-indent: 35px;">
                                <asp:Label ID="Label4" runat="server" Text="<%$ Resources:mtn%>"></asp:Label>

                            </p>
                            <p style="text-align: justify;">
                                <asp:Label ID="Label5" runat="server" Text="<%$ Resources:mtn2%>"></asp:Label>

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
                                <img src="assets/img/icons/maps-and-flags.png" />
                            </div>
                            <h3><i><asp:Label ID="Label6" runat="server" Text="<%$ Resources:sfc%>"></asp:Label></i>
                                <br />
                                <asp:Label ID="Label7" runat="server" Text="<%$ Resources:adres%>"></asp:Label></h3>
                            <address>

                                <br />
                                <p><strong>Sancak Mah. Cidde Cad. No:20/A</strong></p>
                                <p><strong>Çankaya, ANKARA  </strong></p>
                            </address>
                        </div>

                    </div>


                    <div class="col-md-4">

                        <div class="box-simple">
                            <div class="icon">
                                <img src="assets/img/icons/phone-receiver.png" />

                            </div>
                            <h3><i><asp:Label ID="Label8" runat="server" Text="<%$ Resources:sfc%>"></asp:Label></i>
                                <br />
                                <asp:Label ID="Label9" runat="server" Text="<%$ Resources:cagri%>"></asp:Label></h3>
                            <p class="text-muted"><asp:Label ID="Label10" runat="server" Text="<%$ Resources:msj%>"></asp:Label></p>
                            <p><strong><asp:Label ID="Label11" runat="server" Text="<%$ Resources:tel%>"></asp:Label></strong> 0 312 441 58 59</p>
                            <p><strong><asp:Label ID="Label12" runat="server" Text="<%$ Resources:fax%>"></asp:Label></strong> 0 312 441 58 56</p>

                            <p><strong><asp:Label ID="Label13" runat="server" Text="<%$ Resources:gsm%>"></asp:Label></strong> </p>




                        </div>
                    </div>

                    <div class="col-md-4">

                        <div class="box-simple">
                            <div class="icon">
                                <img src="assets/img/icons/close-envelope.png" />

                            </div>
                            <h3><i><asp:Label ID="Label14" runat="server" Text="<%$ Resources:sfc%>"></asp:Label></i>
                                <br />
                                <asp:Label ID="Label15" runat="server" Text="<%$ Resources:mail%>"></asp:Label> </h3>
                            <p class="text-muted"><asp:Label ID="Label16" runat="server" Text="<%$ Resources:msj2%>"></asp:Label></p>
                            <ul class="list-style-none">
                                <li><strong><a href="mailto:">info@sfcyapi.com</a></strong>
                                </li>
                                


                            </ul>
                        </div>

                    </div>
                </div>
            </section>

            <section>





                <div class="row text-center">

                    <div class="col-md-12">
                        <div style="padding-bottom: 20px">
                            <h2 class="heading"><asp:Label ID="Label17" runat="server" Text="<%$ Resources:form%>"></asp:Label></h2>
                        </div>
                    </div>

                    <div class="col-md-8 col-md-offset-2">

                        <div class="row">
                            <div class="col-sm-6">

                                <div class="form-group">

                                    <asp:TextBox ID="txtAd" class="form-control" placeholder="<%$ Resources:adsyad%>" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">

                                    <asp:TextBox ID="txtEmail" class="form-control" TextMode="Email" placeholder="<%$ Resources:mail2%>" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">

                                    <asp:TextBox ID="txtTel" class="form-control" TextMode="Number" placeholder="<%$ Resources:tel2%>" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">

                                    <asp:TextBox ID="txtKOnu" class="form-control" TextMode="MultiLine" placeholder="<%$ Resources:msj3%>" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="message">

                                        <asp:Label ID="Label19" runat="server" Text="<%$ Resources:mesaj%>"></asp:Label>

                                    </label>
                                    <asp:TextBox ID="txtMsj" class="form-control" TextMode="MultiLine" placeholder="<%$ Resources:msj4%>" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-sm-12" style="padding: 5px">


                                <center>
                        
                              <asp:CheckBox ID="CheckBox1" runat="server"></asp:CheckBox> <asp:Label ID="Label18" runat="server" Text="<%$ Resources:robot%>"></asp:Label>
                                </center>

                            </div>


                            <div class="col-sm-12 text-center" style="padding-bottom: 10px;">
                                <asp:Button ID="btnGONDER" class="btn btn-template-main" runat="server" OnClick="btnGONDER_Click" Text="<%$ Resources:gonder%>" />
                                <asp:Button ID="btnTemizle" class="btn btn-template-main" OnClick="btnTemizle_Click" runat="server" Text="<%$ Resources:temiz%>" />

                            </div>
                            <div>
                                <asp:Label ID="lhata" ForeColor="Red" runat="server" Text=""></asp:Label>
                                <asp:Label ID="hatal" ForeColor="Green" runat="server" Text=""></asp:Label>
                            </div>

                        </div>

                    </div>
                </div>

                <br />
                <div>



                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6124.557460173303!2d32.86052887499362!3d39.867994052377576!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14d34571f97d5987%3A0x57bb8d35e3d4ced8!2sSancak+Mahallesi%2C+Cidde+Cd.+No%3A20%2C+06550+%C3%87ankaya%2FAnkara!5e0!3m2!1str!2str!4v1503321342201" width="1220" height="600" frameborder="0" style="border: 0" allowfullscreen></iframe>


                </div>
            </section>


        </div>
        <!-- /#contact.container -->
    </div>
    <!-- /#content -->



</asp:Content>

