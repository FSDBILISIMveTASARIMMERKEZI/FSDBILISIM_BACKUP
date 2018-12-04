<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/yonetici.master" AutoEventWireup="true" CodeFile="Yazdır.aspx.cs" Inherits="Admin_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="md-card uk-margin-medium-bottom">
        <div class="md-card-content">
                  
            <div class="dt_colVis_buttons">
            </div>
          


            <table id="dt_tableExport" class="uk-table" cellspacing="0" width="100%">
                <thead>
                    
                       
                        
                        <tr>Ad ve Soyad :</tr>
                        <tr>Telefon :</tr>
                        <tr>Mail :</tr>
                        <tr>Adres :</tr>
                        <tr>Mesaj : </tr>
                        
                    


                    
                </thead>


                <tbody>

                    <asp:Repeater ID="rptYazdır" runat="server" >
                        <ItemTemplate>
                            

                               
                                
                                <tr><%# Eval("adSoyad") %></tr>
                                <tr><%# Eval("telefon") %></tr>
                                <tr><%# Eval("mail") %></tr>
                                <tr><%# Eval("adres") %></tr>
                                <tr><%# Eval("mesaj") %></tr>
                                

                            
                        </ItemTemplate>
                    </asp:Repeater>
                    <asp:SqlDataSource   runat="server" ConnectionString="<%$ ConnectionStrings:connstr %>" SelectCommand="select * from talep"></asp:SqlDataSource>

                </tbody>
            </table>


        </div>
    </div>




</asp:Content>

