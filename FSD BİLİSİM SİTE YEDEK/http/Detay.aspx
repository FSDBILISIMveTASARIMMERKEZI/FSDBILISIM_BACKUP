<%@ Page Title="RESPONSİVE|MEGA MENÜ|SEO|CSS 3,HTML 5,JQuery,Ajax,Bootstrap" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Detay.aspx.cs" Inherits="Detay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- *** LOGIN MODAL END *** -->

    <div id="heading-breadcrumbs">
        <div class="container">
            <div class="row">
                <div class="col-md-7">
                    <h1>
                        <asp:Label ID="lkat" runat="server" Text=""></asp:Label></h1>
                </div>
                <div class="col-md-5">
                    <ul class="breadcrumb">
                        <li><a href="Default.aspx">Anasayfa</a>
                        </li>
                        <li><a href="">
                            <asp:Label ID="lkat2" runat="server" Text=""></asp:Label></a>
                        </li>
                        <li>
                            <asp:Label ID="lad" runat="server" Text=""></asp:Label></li>
                    </ul>

                </div>
            </div>
        </div>
    </div>

    <div id="content">
        <div class="container">

            <section class="no-mb">
                <div class="row">
                    <div class="col-md-12">

                        <p class="lead">
                            <asp:Label ID="ldetay" runat="server" Text=""></asp:Label>
                        </p>
                    </div>
                </div>


                <div class="image " style="border: 5px solid powderblue;">
                    <asp:Image ID="img" Width="100%" class="img-responsive " runat="server" />

                </div>


                <div class="row portfolio-project">
                    <div class="col-md-8">
                        <div class="heading">
                            <h3>
                                <asp:Label ID="lkat4" runat="server" Text=""></asp:Label></h3>
                        </div>



                        <p style="text-align:justify">
                            <asp:Label ID="lacıklama" runat="server" Text=""></asp:Label>

                        </p>

                    </div>
                    <div class="col-md-4 project-more">
                        <div class="heading">
                            <h3 >Detaylar</h3>
                        </div>
                        <h4>özellikler</h4>
                        <p style="text-align:justify">
                            <asp:Label ID="lsablonozellık" runat="server" Text=""></asp:Label></p>
                        <h4>içerik</h4>
                        <p style="text-align:justify">
                            <asp:Label ID="lsablonIcerık" runat="server" Text=""></asp:Label></p>
                        <h4>Teknolojiler</h4>
                        <p style="text-align:justify">
                            <asp:Label ID="lsablonteknoloji" runat="server" Text=""></asp:Label></p>
                        <h4>Tarih</h4>
                        <p style="text-align:justify">
                            <asp:Label ID="lsablontarih" runat="server" Text=""></asp:Label></p>
                    </div>
                </div>
            </section>

            <section>
                <div class="row portfolio">

                    <div class="col-md-12">
                        <div class="heading">
                            <h3>BUNA BAKAN BUNLARA DA BAKTI</h3>
                        </div>
                    </div>
                    <asp:Repeater ID="rptMusteriYorumları" runat="server">


                        <ItemTemplate>

                            <div class="col-sm-6 col-md-3">
                                <div class="box-image">
                                    <div class="image" style="overflow:hidden; height:200px;  border: 1px solid powderblue;" >
                                        <asp:Image CssClass="img-responsive" ID="Image1" ImageUrl=' <%# Eval("resim") %>' runat="server" />  
                                    </div>
                                    <div class="bg"></div>
                                    <div class="name">
                                        <h3>    <a href="Detay.aspx?id=<%# Eval("orjId") %>"> <%# Eval("urunAdi") %></a></h3>
                                    </div>
                                    <div class="text">
                                        <p class="buttons">
                                               <a href="Detay.aspx?id=<%# Eval("benzerId") %>" class="btn btn-template-transparent-primary">Detay</a>
                                            <a href=' <%# Eval("demoUrl") %>' class="btn btn-template-transparent-primary">Demo</a>
                                        </p>
                                    </div>
                                </div>
                                <!-- /.box-image -->

                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
        
                </div>
            </section>

        </div>
        <!-- /.container -->


    </div>
    <!-- /#content -->
</asp:Content>

