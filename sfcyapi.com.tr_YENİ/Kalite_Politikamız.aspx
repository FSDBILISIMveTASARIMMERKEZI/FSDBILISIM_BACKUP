<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Kalite_Politikamız.aspx.cs" Inherits="Kalite_Politikamız" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container">
        <div class="row">
           
            <div class="col-md-12">
                <ul class="breadcrumb">
                    <li>
                       <a href="Default.aspx"><asp:Label ID="Label11" runat="server" Text="<%$ Resources:anasayfa%>"></asp:Label></a>
                    </li>
                    <li style="font-size: 15px; color: #005C7B;"><asp:Label ID="Label1" runat="server" Text="<%$ Resources:kalite%>"></asp:Label></li>
                </ul>

            </div>
        </div>
    </div>


    <br />
    <div id="Div1">
        <div class="container">
            <div class="row">
                <!-- *** LEFT COLUMN ***
			 _________________________________________________________ -->

                <div class="col-md-12" id="Div2">

                    <%--<asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>--%>

                    <section class="post">
                        <div class="col-md-" id="blog-post">

                            <div class="col-md-6 col-md-offset-6" id="blog-listing-medium">
                                <center> <p class="lead" style="margin-left: 20px;     display: inline-block;
    border-bottom: solid 5px #cbd739;
    line-height: 1.1;
    margin-bottom: 0;
    padding-bottom: 10px;
    vertical-align: middle;
    text-transform: uppercase;
    letter-spacing: 0.06em;"> <strong ><asp:Label ID="Label2" runat="server" Text="<%$ Resources:kalite2%>"></asp:Label></p></center>
                            </div>

                            <div class="col-md-6" style="padding-bottom: 15px;">
                                <center>
                                            <a href="assets/img/SFC_LOGO.jpg">
                            <img src="assets/img/SFC_LOGO.jpg"  class="img-responsive" style=" border-radius: 10px;    margin-top: 15px;"; alt="Saray Tavan" title="Saray Tavan Ailesi">
                        </a></center>
                            </div>


                            <div class="col-md-6" id="post-content">

                                <p class="lead" style="margin-left: 20px; text-align: justify; margin-top: 10px; text-indent: 35px;">
                                    <asp:Label ID="Label3" runat="server" Text="<%$ Resources:mtn%>"></asp:Label>
                            </div>



                        </div>
                    </section>

                    <%-- </ItemTemplate>
                    </asp:Repeater>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connstr %>" SelectCommand="select  *  from Saray_hakkimizda where id=2"></asp:SqlDataSource>--%>
                </div>
            </div>
        </div>
    </div>



    <%--<div id="content">
        <div class="container">
            <div class="row">
                <!-- *** LEFT COLUMN ***
			 _________________________________________________________ -->

                <div class="col-md-12">

                    <%-- <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>

                    <section class="post">
                        <div class="col-md-" id="blog-post">

                            <div class="col-md-6" style="padding-bottom: 15px;">
                                <center>
                                            <a href="assets/img/SFC_LOGO.jpg">
                            <img src="assets/img/SFC_LOGO.jpg"  class="img-responsive"  alt="SFC YAPI" title="SFC Yapi Logo ">
                        </a></center>
                            </div>

                            <div class="col-md-6" id="blog-listing-medium">
                                <center>  <p class="lead" style="margin-left: 20px;"> <strong>KALİTE POLİTİKAMIZ</strong></p></center>
                            </div>
                            <div class="col-md-6" id="post-content">

                                <p class="lead" style="margin-left: 20px; text-align: justify; margin-top: -15px; text-indent: 35px;">
                                    SFC Yapı Ankara’da kurulmuştur. Başlangıçta, kurucularının eski profesyonel yaşam deneyimleri ve başarıları şirketin altyapısını oluşturmuştur.
Bugün, inşaat piyasasında 10 yılını tamamlamış olan SFC Yapı, çeşitli ülkelerde profesyonel ve yerleşik teknik personel de dahil olmak üzere altı farklı milletlerden yaklaşık 800 çalışanı ile önemli bir iş gücü kapasitesine ulaşmıştır.
Türkiye'nin yanı sıra SFC Yapı Körfez Ülkeleri, Orta Asya, Orta Doğu ve Doğu Avrupa'da birçok farklı ülkede faaliyetleri olmuştur. Çalışmalarımızda sürdürülebilir verimliliği sağlamak için, şirketimiz her zaman son teknolojik gelişmeler ile uyumlu olmuştur ve daha kusursuz olması için çalışanlarımızın teknik ve kişisel becerilerini geliştirmesi amaçlanmaktadır.
Bizim temel prensibimiz hızla gelişen teknoloji ile daha iyi kalite ve uyum için bütünüyle müşterilerimizin "uzun vadeli memnuniyetini" elde etmektir.
SFC Yapı artan tecrübesi ile genç, dinamik ve profesyonel kadrosunun deneyimlerini birleştirerek inşaat pazarının her alanında yeni misyonlar üstlenmek için hazırdır.
                            </div>



                        </div>
                    </section>

                    </ItemTemplate>
                    </asp:Repeater>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connstr %>" SelectCommand="select  *  from Saray_hakkimizda where id=3"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>--%>
</asp:Content>

