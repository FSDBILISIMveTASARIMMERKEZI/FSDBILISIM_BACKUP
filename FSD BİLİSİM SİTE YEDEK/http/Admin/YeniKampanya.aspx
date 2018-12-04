<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/yonetici.master" AutoEventWireup="true" CodeFile="YeniKampanya.aspx.cs" Inherits="Admin_YeniKampanya" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="md-card">

        <center>
            <asp:Label ID="lhata" ForeColor="Red" runat="server"></asp:Label>


        </center>


        <div class="md-card-content">
            <div class="uk-grid" data-uk-grid-margin>

                <div class="uk-width-medium-1-2">

                    <label>Kampanya Adı</label>
                    <asp:TextBox ID="txtKampanyaAdi" runat="server" MaxLength="40" CssClass="input-count md-input"></asp:TextBox>
                </div>
                <div class="uk-width-medium-1-2">
                    <asp:DropDownList ID="ddlKonu" runat="server" AppendDataBoundItems="True" class="md-input" data-uk-tooltip="{pos:'top'}" title="Select with tooltip" DataSourceID="SqlDataSource4" DataTextField="kategoriAdi" DataValueField="id">
                        <asp:ListItem Value="" disabled Selected hidden Text="Kategori Seç ..."></asp:ListItem>

                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:connstr %>" SelectCommand="SELECT [id], [kategoriAdi] FROM [kategoriler]"></asp:SqlDataSource>

                </div>

            </div>


            <div class="uk-grid" data-uk-grid-margin>
                 
                <div class="uk-width-medium-1-2">
                    <label>Fiyat</label>
                    <asp:TextBox ID="txtFiyat" runat="server" MaxLength="10" CssClass="input-count md-input" type="number"></asp:TextBox>
                </div>

                <div class="uk-width-medium-1-2">
                    <label>İçerik</label>
                    <asp:TextBox ID="txtİcerik" MaxLength="500" runat="server" CssClass="input-count md-input"></asp:TextBox>

                </div>
            </div>

            <div class="uk-grid" data-uk-grid-margin>
                <div class="uk-width-medium-1-2">
                    <label>Kampanya Başlangıç Tarihi</label>
                    <asp:Calendar ID="clndrBas" runat="server"></asp:Calendar>
                </div>
                <div class="uk-width-medium-1-2">
                    <label>Kampanya Bitiş Tarihi</label>
                    <asp:Calendar ID="clndrBitis" runat="server"></asp:Calendar>
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
                    <asp:Button ID="btnKAYDET" runat="server" Text="KAYDET" CssClass="md-btn md-btn-primary" OnClick="btnKAYDET_Click" />

                    <asp:Button ID="btnVAZGEC" runat="server" Text="VAZGEÇ" CssClass="md-btn md-btn-warning" OnClick="btnVAZGEC_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>

