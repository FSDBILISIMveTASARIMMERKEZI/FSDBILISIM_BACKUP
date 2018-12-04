<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/yonetici.master" AutoEventWireup="true" CodeFile="yorum.aspx.cs" Inherits="Admin_yorum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="md-card uk-margin-medium-bottom">
        <div class="md-card-content">

            <div class="dt_colVis_buttons">
            </div>





            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" Width="100%"  AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="id">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="urunId" HeaderText="urunId" SortExpression="urunId" />
                    <asp:BoundField DataField="urunAdi" HeaderText="urunAdi" SortExpression="urunAdi" />
                    <asp:BoundField DataField="tarih" HeaderText="tarih" SortExpression="tarih" />
                    <asp:BoundField DataField="yorum" HeaderText="yorum" SortExpression="yorum" />
                    <asp:BoundField DataField="adSoyad" HeaderText="adSoyad" SortExpression="adSoyad" />
                    <asp:CheckBoxField DataField="onay" HeaderText="onay" SortExpression="onay" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>



            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connstr %>" SelectCommand="SELECT yorum.id, yorum.urunId, urunler.urunAdi, yorum.tarih, yorum.yorum, yorum.adSoyad, yorum.onay FROM urunler INNER JOIN yorum ON urunler.id = yorum.urunId" UpdateCommand="UPDATE yorum SET onay = @onay WHERE (id = @id)">
                <UpdateParameters>
                    <asp:Parameter Name="onay" />
                    <asp:Parameter Name="id" />
                </UpdateParameters>
            </asp:SqlDataSource>



        <%--    <table id="dt_tableExport" class="uk-table" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Ad Soyad</th>
                        <th>Ürün</th>
                        <th>Yorum</th>
                        <th>Onay</th>
                        <th>Tarih</th>
                        <th>Onayla</th>

                    </tr>
                </thead>

                <tfoot>
                    <tr>
                        <th>#</th>
                        <th>Ad Soyad</th>
                        <th>Ürün</th>
                        <th>Yorum</th>
                        <th>Onay</th>
                        <th>Tarih</th>
                        <th>Onayla</th>

                    </tr>
                </tfoot>

                <tbody>

                    <asp:Repeater ID="rptYorum" runat="server" DataSourceID="SqlDataSource1" OnItemDataBound="rptYorum_ItemDataBound">
                        <ItemTemplate>
                            <tr>

                                <td>
                                    <asp:Label ID="lid"  runat="server" Text='<%# Eval("id") %>'></asp:Label></td>
                                <td><%# Eval("adSoyad") %></td>
                                <td><%# Eval("urunAdi") %></td>

                                <td><%# Eval("yorum") %></td>
                                <td>
                                    <asp:CheckBox ID="chkOnay" Checked='<%# Eval("onay") %>' runat="server" /></td>

                                <td><%# Eval("tarih") %></td>

                                <td>
                                    <asp:Button ID="btnOnayla" runat="server" Text="Onayla" OnClick="btnOnayla_Click" /></td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connstr %>" SelectCommand="SELECT        urunler.urunAdi, yorum.* FROM            urunler INNER JOIN  yorum ON urunler.id = yorum.urunId"></asp:SqlDataSource>





                </tbody>
            </table>--%>


        </div>
    </div>



</asp:Content>

