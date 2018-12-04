<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Paging.ascx.cs" Inherits="Paging" %>

<style type="text/css">   
.sayfalama .text
{
	    background-color:blue;
    	color:Yellow;
    	text-decoration:none;
    	margin:1px;
    	padding:5px;
    	font-family:Lucida Sans Unicode;
    	font-size:12px;
    	text-align:center;
}

.sayfalama a:link
{
    	background-color:navy;
    	color:Yellow;
    	text-decoration:none;
    	margin:1px;
    	padding:5px;
    	font-family:Lucida Sans Unicode;
    	font-size:12px;
    	text-align:center;
}

.sayfalama a
{
    	background-color:navy;
    	color:Yellow;
    	text-decoration:none;
    	margin:1px;
    	padding:5px;
    	font-family:Lucida Sans Unicode;
    	font-size:12px;
    	text-align:center;
}

.sayfalama a:hover
{
    	background-color:blue;
    	color:Yellow;
    	text-decoration:none;
    	margin:1px;
    	padding:5px;
    	font-family:Lucida Sans Unicode;
    	font-size:12px;
    	text-align:center;
}
</style>

<div class="sayfalama">
    <asp:Label ID="lblPaging" runat="server" Text="Label"></asp:Label>
</div>
