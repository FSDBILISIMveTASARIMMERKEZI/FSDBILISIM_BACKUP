<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/yonetici.master" AutoEventWireup="true" CodeFile="MusteriTalepDetay.aspx.cs" Inherits="Admin_Detay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:Panel ID="pnlURUNDETAY" runat="server">
        <div class="md-card">
            <center>
                <asp:Label ID="lhata" ForeColor="Red" runat="server" Text=""></asp:Label></center>
            <div class="md-card-content">
                <div class="uk-grid" data-uk-grid-margin>

                    <div class="uk-width-medium-1-1">
                        <center>
                            <label>
                                <h1><i><b>FSD BİLİŞİM VE TASARIM MERKEZİ</b></i> </h1>
                            </label>
                            <label>
                                <h2><i><b>MÜŞTERİ TALEP FORMU</b></i></h2>
                            </label>
                        </center>


                    </div>
                    <div class="uk-width-medium-1-6" style="margin-top: 0px;">
                        <h5>
                            <b>Adres</b>
                        </h5>
                    </div>


                    <div class="uk-width-medium-5-6" style="margin-top: 0px;">
                        <h6>:&emsp;Korkutreis Mah.Sezenler Cad. 12/7 Çankaya/ANKARA
                        </h6>
                    </div>

                    <div class="uk-width-medium-1-6" style="margin-top: 0px;">
                        <h5>
                            <b>Telefon</b>
                        </h5>
                    </div>


                    <div class="uk-width-medium-5-6" style="margin-top: 0px;">
                        <h6>:&emsp;0 850 466 20 18/0 553 984 2016/0 553 860 3083
                        </h6>
                    </div>

                    <div class="uk-width-medium-1-6" style="margin-top: 0px;">
                        <h5>
                            <b>E-mail Adresi</b>
                        </h5>
                    </div>


                    <div class="uk-width-medium-5-6" style="margin-top: 0px;">
                        <h6>:&emsp;info@fsdbilisim.com/sami.demir@fsdbilisim.com/fatma.demir@fsdbilisim.com
                        </h6>
                    </div>

                    <div class="uk-width-medium-1-6" style="margin-top: 0px;">
                        <h5>
                            <b>Vergi Dairesi</b>
                        </h5>
                    </div>


                    <div class="uk-width-medium-5-6" style="margin-top: 0px;">
                        <h6>:&emsp;Mithatpaşa V.D.
                        </h6>
                    </div>

                    <div class="uk-width-medium-1-6" style="margin-top: 0px;">
                        <h5>
                            <b>Vergi No</b>
                        </h5>
                    </div>


                    <div class="uk-width-medium-5-6" style="margin-top: 0px;">
                        <h6>:&emsp;2751011370
                        </h6>
                    </div>

                    <div class="uk-width-medium-1-1">

                        <div>
                            <h3><i><b>MÜŞTERİ BİLGİLERİ</b></i></h3>
                        </div>
                    </div>

                    <div class="uk-width-medium-1-3" style="margin-top: 6px;">
                        <label><i>Ad ve Soyad</i></label>
                        <asp:TextBox ID="txtAdSyd" runat="server" MaxLength="150" CssClass="md-input"></asp:TextBox>
                    </div>
                    <div class="uk-width-medium-1-3" style="margin-top: 6px;">
                        <label><i>Mail Adresi</i> </label>
                        <asp:TextBox ID="txtMail" runat="server" MaxLength="100" CssClass="md-input"></asp:TextBox>
                    </div>
                    <div class="uk-width-medium-1-3" style="margin-top: 6px;">
                        <label><i>Telefon Numarası</i></label>
                        <asp:TextBox ID="txtTel" runat="server" MaxLength="100" TextMode="Number" CssClass="md-input"></asp:TextBox>
                    </div>

                    <div class="uk-width-medium-1-3" style="margin-top: 6px;">
                        <label><i>Talep Edilen Hizmet</i></label>
                        <asp:DropDownList ID="ddKategori" runat="server" AppendDataBoundItems="True" class="md-input" data-uk-tooltip="{pos:'top'}" title="Select with tooltip" DataSourceID="SqlDataSource1" DataTextField="kategoriAdi" DataValueField="id">
                            <asp:ListItem Value="" disabled Selected hidden Text="Kategori Seç ..."></asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connstr %>" SelectCommand="SELECT [id], [kategoriAdi] FROM [kategoriler]"></asp:SqlDataSource>
                    </div>

                    <div class="uk-width-medium-1-3" style="margin-top: 6px;">
                        <label><i>Tarih</i></label>
                        <asp:TextBox ID="txtTrh" runat="server" MaxLength="100" TextMode="DateTime" CssClass="md-input"></asp:TextBox>
                    </div>
                    <div class="uk-width-medium-1-3" style="margin-top: 6px;">
                        <label><i>Fiyat</i></label>
                        <asp:TextBox ID="txtFyt" runat="server" MaxLength="100" CssClass="md-input"></asp:TextBox>
                    </div>


                    <div class="uk-width-medium-1-1" style="margin-top: 8px;">
                        <label><i>Adres Bilgileri</i></label>
                        <asp:TextBox ID="txtArs" runat="server" MaxLength="750" CssClass="md-input"></asp:TextBox>
                    </div>


                    <div class="uk-width-medium-1-1" style="margin-top: 8px;">
                        <label><i>Müşteri Talepleri</i></label>
                        <asp:TextBox ID="txtAciklama" runat="server" MaxLength="3000" TextMode="MultiLine" CssClass="md-input"></asp:TextBox>
                    </div>
                    <div class="uk-width-medium-1-2" style="margin-top: 0px;">
                        <h6 style="margin-left: 100px;"><i>FİRMA:&emsp;Ad Soyad/Kaşe/ İmza</i></h6>
                    </div>
                    <div class="uk-width-medium-1-2" style="margin-top: 0px;">
                        <h6 style="margin-left: 120px;"><i>MÜŞTERİ:&emsp; Ad Soyad/Kaşe/ İmza</i></h6>
                    </div>
                </div>





                <div class="uk-grid" data-uk-grid-margin style="margin-top: 175px;">
                    <div class="uk-width-medium-1-2">
                        <asp:Button ID="btnKAYDET" runat="server" Text="KAYDET" CssClass="md-btn md-btn-primary" OnClick="btnKAYDET_Click" />
                        <asp:Button ID="btnSIL" runat="server" Text="SİL" CssClass="md-btn md-btn-danger" OnClick="btnSIL_Click" />

                        <asp:Button ID="btnVAZGEC" runat="server" Text="VAZGEÇ" CssClass="md-btn md-btn-warning" OnClick="btnVAZGEC_Click" />
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>
</asp:Content>

