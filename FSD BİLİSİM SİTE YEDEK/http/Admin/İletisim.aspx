<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/yonetici.master" AutoEventWireup="true" CodeFile="İletisim.aspx.cs" Inherits="Admin_product" %>

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
                       
                        <th>Mail</th>
                        <th>Ad ve Soyad</th>
                        <th>Mesaj</th>
                        
                    </tr>
                </thead>

                <tfoot>
                    <tr>
                       
                        
                        
                        <th>Mail</th>
                        <th>Ad ve Soyad</th>
                        <th>Mesaj</th>
                        
                    </tr>
                </tfoot>

                <tbody>

                    <asp:Repeater ID="rptİLETİSİM" runat="server" OnItemDataBound="rptURUNLER_ItemDataBound1">
                        <ItemTemplate>
                            <tr>

                               
                                <td><%# Eval("mail") %></td>
                                <td><%# Eval("adSoyad") %></td>
                                <td><%# Eval("mesaj") %></td>
                                

                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>


                </tbody>
            </table>


        </div>
    </div>




</asp:Content>

