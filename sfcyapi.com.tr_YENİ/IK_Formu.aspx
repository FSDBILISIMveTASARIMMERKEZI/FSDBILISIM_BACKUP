<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="IK_Formu.aspx.cs" Inherits="IK_Formu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row">

            <div class="col-md-12">
                <ul class="breadcrumb">
                    <li>
                        <a href="Default.aspx"><asp:Label ID="Label8" runat="server" Text="<%$ Resources:anasayfa%>"></asp:Label></a>
                    </li>
                    <li style="font-size: 15px; color: #005C7B;"><asp:Label ID="Label1" runat="server" Text="<%$ Resources:insanform%>"></asp:Label></li>
                </ul>

            </div>
        </div>
    </div>

    <div id="content">
        <div class="container" id="ik_form">
            <section>

                <div class="row">
                    <div class="col-md-12">
                        <section>
                            <div class="col-md-8 col-md-offset-4" style="padding-bottom: 20px">
                                <h2 class="heading"><asp:Label ID="Label2" runat="server" Text="<%$ Resources:insanform2%>"></asp:Label></h2>
                            </div>


                        </section>
                    </div>
                </div>

            </section>

            <section>

                <div class="row text-center">
                    <div class="col-md-8 col-md-offset-2">

                        <div class="row">

                            <div class="col-sm-6">

                                <div class="form-group">

                                    <asp:TextBox class="form-control" ID="txtAdSoyad" placeholder="<%$ Resources:adsyad%>" runat="server"></asp:TextBox>
                                </div>
                            </div>


                            <div class="col-sm-6">

                                <div class="form-group">

                                    <asp:TextBox class="form-control" ID="txtMail" TextMode="Email" placeholder="<%$ Resources:mail%>" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">

                                    <asp:TextBox class="form-control" ID="txtTel" TextMode="Number" placeholder="<%$ Resources:tel%> " runat="server"></asp:TextBox>

                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">

                                    <asp:TextBox class="form-control" ID="txtAdres" placeholder="<%$ Resources:adres%> " runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-sm-6">

                                <div class="form-group">

                                    <asp:TextBox class="form-control" ID="txtMbelge" placeholder="<%$ Resources:belge%> " runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-sm-6">

                                <div class="form-group">

                                    <asp:TextBox class="form-control" ID="txtsaglik" placeholder=" <%$ Resources:saglik%> " runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-sm-12">
                                <div class="form-group">

                                    <asp:TextBox class="form-control" ID="txtMesaj" TextMode="MultiLine" placeholder=" <%$ Resources:msj%>" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-sm-12">


                                <div class="uk-grid">
                                    <div class="uk-width-medium-1-2">

                                        <asp:FileUpload ID="CV" runat="server" class="dropify" data-default-file="" />

                                    </div>

                                    <div class="uk-width-medium-1-2">
                                        <asp:Image ID="CVimg" runat="server" Width="50%" />
                                        <label style="margin-right: 545px; font-weight: normal; font-size: 12px;"><em><asp:Label ID="Label3" runat="server" Text="<%$ Resources:cv%>"></asp:Label></em></label>
                                    </div>



                                </div>
                            </div>



                            <div class="col-sm-12">


                                <center>
                        
                              <asp:CheckBox ID="CheckBox1" runat="server"></asp:CheckBox> <asp:Label ID="Label4" runat="server" Text="<%$ Resources:robot%>"></asp:Label>
                                </center>

                            </div>
                            <div class="col-sm-12 text-center">
                                <div class="form-group">

                                    <asp:HiddenField ID="HiddenField1" runat="server" />
                                    <p>
                                        <br />
                                    </p>
                                    <asp:Button class="btn btn-template-main" ID="btnGonder" runat="server" OnClick="btnGonder_Click" Text="<%$ Resources:gonder%>" />
                                    <asp:Button ID="btnTemizle" class="btn btn-template-main" OnClick="btnTemizle_Click" runat="server" Text="<%$ Resources:temiz%>" />
                                </div>
                                <div>
                                    <asp:Label ID="lhata" ForeColor="Red" runat="server" Text=""></asp:Label>
                                    <asp:Label ID="hatal" ForeColor="Green" runat="server" Text=""></asp:Label>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.row -->

            </section>

        </div>
    </div>
</asp:Content>

