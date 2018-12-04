<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/yonetici.master" AutoEventWireup="true" CodeFile="talepler.aspx.cs" Inherits="Admin_product" %>

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
                        <th>Yazdır</th>
                        <th>Ad ve Soyad</th>
                        <th>Telefon</th>
                        <th>Adres</th>
                        <th>Mail</th>
                        <th>Mesaj</th>
                         <th>Hizmet Türü</th>
                    </tr>
                </thead>

                <tfoot>
                    <tr>
                        <th>Yazdır</th>
                        <th>Ad ve Soyad</th>
                        <th>Telefon</th>
                        <th>Adres</th>
                        <th>Mail</th>
                        <th>Mesaj</th>
                        <th>Hizmet Türü</th>
                    </tr>
                </tfoot>

                <tbody>

                    <asp:Repeater ID="rptTALEPLER" runat="server" OnItemDataBound="rptTALEPLER_ItemDataBound">
                        <ItemTemplate>
                            <tr>

                               <td>
                                   <a href="Yazdır.aspx"> YAZDIR</a>

                               </td>
                                <td><%# Eval("adSoyad") %></td>
                                <td><%# Eval("telefon") %></td>
                                <td><%# Eval("adres") %></td>
                                <td><%# Eval("mail") %></td>
                                <td><%# Eval("mesaj") %></td>
                                <td><%# Eval("hizmetTuru") %></td>

                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>


                </tbody>
            </table>


        </div>
    </div>




</asp:Content>

