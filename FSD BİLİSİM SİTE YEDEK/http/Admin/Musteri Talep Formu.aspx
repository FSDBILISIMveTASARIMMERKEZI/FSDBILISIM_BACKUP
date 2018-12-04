<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/yonetici.master" AutoEventWireup="true" CodeFile="Musteri Talep Formu.aspx.cs" Inherits="Admin_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="md-card uk-margin-medium-bottom">
        <div class="md-card-content">
                  
            <div class="dt_colVis_buttons">
            </div>
          


            <table id="dt_tableExport" class="uk-table" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th>Detay</th>
                        <th>Ad ve Soyad</th>
                        <th>Mail</th>
                        <th>Tel</th>
                        <th>Adres</th>
                        <th>Açıklama</th>
                    </tr>
                </thead>

                <tfoot>
                    <tr>
                        <th>Detay</th>
                        <th>Ad ve Soyad</th>
                        <th>Mail</th>
                        <th>Tel</th>
                        <th>Adres</th>
                        <th>Açıklama</th>
                    </tr>
                </tfoot>

                <tbody>

                    <asp:Repeater ID="rptMstrTlp" runat="server" OnItemDataBound="rptMstrTlp_ItemDataBound">
                        <ItemTemplate>
                            <tr>

                                <td><a href="MusteriTalepDetay.aspx?id=<%# Eval("id") %>"><i class="md-icon material-icons">&#xE254;</i></a></td>
                                <td><%# Eval("adSoyad") %></td>
                                <td><%# Eval("mail") %></td>
                                <td><%# Eval("telefon") %></td>

                                <td><%# Eval("adres") %></td>
                                <td><%# Eval("mesaj") %></td>
                                

                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>


                </tbody>
            </table>


        </div>
    </div>




</asp:Content>

