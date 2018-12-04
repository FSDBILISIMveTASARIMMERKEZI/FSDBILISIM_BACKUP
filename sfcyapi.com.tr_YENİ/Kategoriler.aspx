<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Kategoriler.aspx.cs" Inherits="Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row">

            <div class="col-md-12">
                <ul class="breadcrumb">
                    <li>
                        <a href="Default.aspx">
                            <asp:Label ID="Label3" runat="server" Text="<%$ Resources:anasayfa%>"></asp:Label>
                        </a>
                    </li>
                    <li style="font-size: 15px; color: #005C7B;">
                        <asp:Label ID="Label1" runat="server" Text="<%$ Resources:tmmproje%>"></asp:Label>
                    </li>
                </ul>

            </div>
        </div>
    </div>

    <div id="content" style="margin-top: -10px;">
        <div class="container">

            <section>

                <div class="row">
                    <asp:Repeater ID="rptProjeAd" runat="server">
                        <ItemTemplate>
                            <div class="col-md-12 " id="blog-listing-medium">
                                <center> <p class="lead" style="margin-left: 20px;     display: inline-block;
    border-bottom: solid 3px #cbd739;
    line-height: 1.1;
    margin-bottom: 0;
    padding-bottom: 10px;
    vertical-align: middle;
    text-transform: uppercase;
    letter-spacing: 0.06em;">
                            
                             <strong ><%# Eval("ad")%></strong>



                                 </p></center>
                            </div>

                        </ItemTemplate>
                    </asp:Repeater>
            </section>

        </div>

    </div>


    <div id='after_layer_slider_1' class='main_color av_default_container_wrap container_wrap fullsize'>
        <div class='container'>
            <div class='template-page content  av-content-full alpha units'>
                <div class='post-entry post-entry-type-page post-entry-1108'>
                    <div class='entry-content-wrapper clearfix'>
                        <asp:Repeater ID="rptProjeResim" runat="server">
                            <ItemTemplate>
                                <div class=" col-md-3 col-sm-12 col-xs-12  flex_column_div   avia-builder-el-4  el_after_av_one_third  el_before_av_one_third  ">
                                    <div class='box-shadow-height avia-image-container  av-styling-    avia-builder-el-5  el_before_av_textblock  avia-builder-el-first  avia-align-center ' itemscope="itemscope" itemtype="https://schema.org/ImageObject">

                                        <div class="photostream">
                                            <div>
                                                <a href="<%# Eval("rsm")%>">
                                                    <a href="assets/img/king_salman-1.jpg">
                                                        <img src="<%# Eval("rsm")%>" width="300" height="200" class="img-responsive" style="border: 1px solid #fff;" alt="#" />
                                                    </a>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </ItemTemplate>
                        </asp:Repeater>

                    </div>
                </div>
            </div>
            <!-- close content main div -->
            <asp:Repeater ID="rptDetay" runat="server">
                <ItemTemplate>
                    <section class="av_textblock_section " itemscope="itemscope" itemtype="https://schema.org/CreativeWork">
                        <div class="avia_textblock col-xs-12" itemprop="text" style="font-size: 20px">

                            <p class="col-xs-12">
                                <div class="col-md-2"><strong>Proje Adı</strong>	</div>
                                <div class="col-md-10">
                                    : <%# Eval("projeAd")%>
                                </div>
                            </p>
                            <p class="col-xs-12">
                                <div class="col-md-2"><strong>İş Veren</strong>	</div>
                                <div class="col-md-10">
                                    :  <%# Eval("isveren")%>
                                </div>
                            </p>
                            <p class="col-xs-12">
                                <div class="col-md-2"><strong>Teslim Tarihi</strong>	</div>
                                <div class="col-md-10">
                                    :<%# Eval("trh")%>
                                </div>
                            </p>
                            <p class="col-xs-12">
                                <div class="col-md-2"><strong>Lokasyon</strong>	</div>
                                <div class="col-md-10">
                                    :<%# Eval("lokasyn")%>
                                </div>
                            </p>
                            <p class="col-xs-12">
                                <div class="col-md-2"><strong>İş Kapsamı</strong>	</div>
                                <div class="col-md-10">
                                    :    <%# Eval("iskapsami")%>
                                </div>
                            </p>
                            <p class="col-xs-12">
                                <div class="col-md-2"><strong>Tamamlanan İşler</strong>	</div>
                                <div class="col-md-10">
                                    :    <%# Eval("tamamlanmisisler")%>
                                </div>
                            </p>

                        </div>
                    </section>

                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>




</asp:Content>

