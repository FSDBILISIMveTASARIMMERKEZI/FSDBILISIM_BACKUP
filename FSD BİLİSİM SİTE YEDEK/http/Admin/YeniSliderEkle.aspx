<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/yonetici.master" AutoEventWireup="true" CodeFile="YeniSliderEkle.aspx.cs" Inherits="Admin_YeniSliderEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="md-card">
        <div class="md-card-content">
              <asp:Label ID="lhata" ForeColor="Red" runat="server" Text=""></asp:Label>
            <br />
            <br />
          
                <div class="uk-grid" data-uk-grid-margin>
                  
                    <div class="uk-width-medium-1-2">

                        <label>Başlık</label>
                        <asp:TextBox ID="txtBaslik" runat="server" MaxLength="500" CssClass="input-count md-input"></asp:TextBox>

                    </div>
                    <div class="uk-width-medium-1-2">
                        <label>Açıkama</label>
                        <asp:TextBox ID="txtAciklama" runat="server" MaxLength="500" CssClass="input-count md-input"></asp:TextBox>
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

