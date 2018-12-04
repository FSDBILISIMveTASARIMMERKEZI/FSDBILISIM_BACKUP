<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/yonetici.master" AutoEventWireup="true" CodeFile="Detay.aspx.cs" Inherits="Admin_Detay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:Panel ID="pnlURUNDETAY" runat="server">
        <div class="md-card">
            <center>
                <asp:Label ID="lhata" ForeColor="Red" runat="server" Text=""></asp:Label></center>
            <div class="md-card-content">
                <div class="uk-grid" data-uk-grid-margin>

                    <div class="uk-width-medium-1-2">
                        <label>Ürün Kodu</label>
                        <asp:TextBox ID="txtUrunKodu" runat="server" MaxLength="40" CssClass="input-count md-input"></asp:TextBox>
                    </div>
                    <div class="uk-width-medium-1-2">
                        <label>Ürün Adı</label>
                        <asp:TextBox ID="txtUrunAdi" runat="server" MaxLength="50" CssClass="input-count md-input"></asp:TextBox>
                    </div>

                </div>




                <div class="uk-grid" data-uk-grid-margin>
                    <div class="uk-width-medium-1-3">
                        <label>Kategori Adı</label>
                        <asp:DropDownList ID="ddlKategori" runat="server" AppendDataBoundItems="True" class="md-input" data-uk-tooltip="{pos:'top'}" title="Select with tooltip" DataSourceID="SqlDataSource1" DataTextField="kategoriAdi" DataValueField="id">
                            <asp:ListItem Value="" disabled Selected hidden Text="Kategori Seç ..."></asp:ListItem>

                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connstr %>" SelectCommand="SELECT [id], [kategoriAdi] FROM [kategoriler]"></asp:SqlDataSource>
                    </div>
                    <div class="uk-width-medium-1-3">
                        <label>Alt Kategori Adı</label>
                        <asp:DropDownList ID="ddlAltkategori" runat="server" class="md-input" data-uk-tooltip="{pos:'top'}" title="Select with tooltip" DataSourceID="SqlDataSource2" DataTextField="altKategoriAdi" DataValueField="id">
                            <asp:ListItem Value="" disabled Selected hidden Text="Alt Kategori ..."></asp:ListItem>

                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:connstr %>" SelectCommand="SELECT [id], [altKategoriAdi] FROM [altKategori]"></asp:SqlDataSource>
                    </div>
                    <div class="uk-width-medium-1-3">
                        <label>Fiyat</label>
                        <asp:TextBox ID="txtFiyat" runat="server" MaxLength="10"  CssClass="input-count md-input" type="number"></asp:TextBox>
                    </div>
                </div>
                <div class="uk-grid" data-uk-grid-margin>
                    <div class="uk-width-medium-1-2">
                        <label>Konu</label>
                        <asp:DropDownList ID="ddlKonu" runat="server" class="md-input" data-uk-tooltip="{pos:'top'}" title="Select with tooltip" DataSourceID="SqlDataSource3" DataTextField="ad" DataValueField="id">
                            <asp:ListItem Value="" disabled Selected hidden Text="Alt Kategori ..."></asp:ListItem>

                        </asp:DropDownList>

                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:connstr %>" SelectCommand="SELECT [id], [ad] FROM [konu]"></asp:SqlDataSource>

                    </div>
                    <div class="uk-width-medium-1-2">
                        <label>Detay</label>
                        <asp:TextBox ID="txtDetay" runat="server" MaxLength="1000" CssClass="input-count md-input"></asp:TextBox>

                    </div>
                </div>
                <div class="uk-grid" data-uk-grid-margin>
                    <div class="uk-width-medium-1-2">
                        <label>Kapak Resim</label>
                        <asp:FileUpload ID="fupResim" runat="server" class="dropify" data-default-file="" />
                    </div>
                    <div class="uk-width-medium-1-2">
                        <asp:Image ID="imgResim" runat="server" Width="50%" />
                    </div>
                </div>

                <div class="uk-grid" data-uk-grid-margin>
                    <div class="uk-width-medium-1-2">
                        <label>Demo url</label>

                        <asp:TextBox ID="txtDemo" runat="server" MaxLength="100" CssClass="input-count md-input" ></asp:TextBox>

                    </div>
                    <div class="uk-width-medium-1-2">
                    </div>
                </div>
                <div class="uk-grid" data-uk-grid-margin>
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

