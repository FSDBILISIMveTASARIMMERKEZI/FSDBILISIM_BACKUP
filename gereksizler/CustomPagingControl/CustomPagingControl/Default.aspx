<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="Paging.ascx" TagName="Paging" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DataList ID="dlProducts" runat="server" CellPadding="3"
            Width="432px" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" 
            BorderWidth="1px" GridLines="Horizontal">
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <AlternatingItemStyle BackColor="#F7F7F7" />
            <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <ItemTemplate>
                <%# Eval("Name") %>
            </ItemTemplate>
        </asp:DataList>
        <br />
        <uc1:Paging ID="Paging1" runat="server" />
    </div>
    </form>
</body>
</html>
