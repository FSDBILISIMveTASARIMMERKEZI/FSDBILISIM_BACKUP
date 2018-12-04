<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/yonetici.master" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="Admin_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="md-card uk-margin-medium-bottom">
        <div class="md-card-content">
            <div class="uk-grid" data-uk-grid-margin>
                <div class="uk-width-medium-1-2">
                    <asp:DropDownList ID="ddlHizmet" AppendDataBoundItems="true" class="md-input" data-uk-tooltip="{pos:'top'}" AutoPostBack="true" OnSelectedIndexChanged="ddlHizmet_SelectedIndexChanged" title="Hizmet Türü Seç" runat="server" DataSourceID="SqlDataSource1" DataTextField="kategoriAdi" DataValueField="id">
                          <asp:ListItem Value="" disabled Selected hidden Text="TÜMÜ"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connstr %>" SelectCommand="SELECT * FROM [kategoriler]"></asp:SqlDataSource>
                </div>
                <div class="uk-width-medium-1-2">

                    <asp:Button ID="btnYeni" runat="server" Text="Yeni" CssClass="md-btn md-btn-primary uk-margin-small-top" Style="float: right;" OnClick="btnYeni_Click1" />
                </div>
            </div>
            <div class="dt_colVis_buttons">
            </div>


            <table id="dt_tableExport" class="uk-table" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th></th>
                        <th>Ürün Adı</th>
                        <th>Ürün Kodu</th>
                        <th>Resim</th>
                        <th>Fiyat</th>

                    </tr>
                </thead>

                <tfoot>
                    <tr>
                        <th></th>
                        <th>Ürün Adı</th>
                        <th>Ürün Kodu</th>
                        <th>Resim</th>
                        <th>Fiyat</th>

                    </tr>
                </tfoot>

                <tbody>

                    <asp:Repeater ID="rptURUNLER" runat="server" OnItemDataBound="rptURUNLER_ItemDataBound1">
                        <ItemTemplate>
                            <tr>

                                <td><a href="Detay.aspx?id=<%# Eval("id") %>"><i class="md-icon material-icons">&#xE254;</i></a></td>
                                <td><%# Eval("urunAdi") %></td>
                                <td><%# Eval("urunKodu") %></td>
                                <td>
                                    <asp:Image ID="Image1" Width="50px" Height="50px" ImageUrl='<%# Eval("resim") %>' runat="server" />
                                </td>
                                <td><%# Eval("fiyat") %></td>


                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>


                </tbody>
            </table>


        </div>
    </div>




</asp:Content>

