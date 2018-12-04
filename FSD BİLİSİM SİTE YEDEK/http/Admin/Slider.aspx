<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/yonetici.master" AutoEventWireup="true" CodeFile="Slider.aspx.cs" Inherits="Admin_Slider" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        #dt_tableExport {
            height: 116px;
            width: 92%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="md-card uk-margin-medium-bottom">
        <div class="md-card-content">
            <asp:Button ID="btnSlinder" runat="server" Text="Yeni" CssClass="md-btn md-btn-primary uk-margin-small-top" Style="float: right;" OnClick="btnSlinder_Click1" />
            <div class="dt_colVis_buttons">
            </div>



           <table id="dt_tableExport" class="uk-table" cellspacing="0" width="100%">
                <thead>
                   
                    <tr>
                         <th></th>
                        <th>#</th>
                          <th>Başlık</th>
                        <th>aciklama</th>
                      
                        <th>Resim</th>


                    </tr>
                </thead>

                <tfoot>
                    <tr>
                         <th></th>
                        <th>#</th>
                          <th>Başlık</th>
                        <th>aciklama</th>
                      
                        <th>Resim</th>


                    </tr>
                </tfoot>

                <tbody>

                    <asp:Repeater ID="rptSlider" runat="server"  DataSourceID="SqlDataSource1" >
                        <ItemTemplate>
                            <tr>

                                <td><a href="SliderDetay.aspx?id=<%# Eval("id") %>"><i class="md-icon material-icons">&#xE254;</i></a></td>
                                <td><%# Eval("id") %></td>
                                <td><%# Eval("baslik") %></td>
                                <td><%# Eval("aciklama") %></td>
                                
                                <td>
                                    <asp:Image ID="UrlResim" Width="50px" Height="50px" ImageUrl='<%# Eval("resim") %>' runat="server" />
                                </td>



                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                    
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connstr %>" SelectCommand="select * from slider">
            
            </asp:SqlDataSource>


                </tbody>
              
            </table>


        </div>
    </div>
</asp:Content>

