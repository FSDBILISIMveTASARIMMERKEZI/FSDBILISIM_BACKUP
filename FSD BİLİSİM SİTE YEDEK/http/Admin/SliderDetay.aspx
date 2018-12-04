<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/yonetici.master" AutoEventWireup="true" CodeFile="SliderDetay.aspx.cs" Inherits="Admin_SliderDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="md-card">
            <center>
                <asp:Label ID="lhata" ForeColor="Red" runat="server" Text=""></asp:Label></center>
            <div class="md-card-content">
                <div class="uk-grid" data-uk-grid-margin>

                    <div class="uk-width-medium-1-2">
                        <label>Başlık</label>
                        <asp:TextBox ID="txtBaslık" runat="server" MaxLength="500" CssClass="input-count md-input"></asp:TextBox>
                    </div>
                    <div class="uk-width-medium-1-2">
                        <label>Açıklama</label>
                        <asp:TextBox ID="txtAcıklama" runat="server" MaxLength="500" CssClass="input-count md-input"></asp:TextBox>
                    </div>

                </div>


                <div class="uk-grid" data-uk-grid-margin>
                    
                    
                
                    <div class="uk-width-medium-1-2">
                        <label>Resim</label>
                        <asp:FileUpload ID="fupResim" runat="server" class="dropify" data-default-file="" />
                    </div>
                    <div class="uk-width-medium-1-2">
                        <asp:Image ID="imgResim" runat="server" Width="50%" />
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
</asp:Content>

