<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Uye-Girisi.aspx.cs" Inherits="Uye_Girisi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    	<div class="grow">
		<div class="container">
			<h2>Üye Girişi</h2>
		</div>
	</div>
	<!-- grow -->
<!--content-->
<div class="container">
		<div class="account">
		<div class="account-pass">
		<div class="col-md-8 account-top">
			<form>
				
			<div> 	
				<span>Email</span>
				<input type="text"> 
			</div>
			<div> 
				<span >Şifre</span>
				<input type="password">
			</div>				
				<input type="submit" value="Login"> 
			</form>
		</div>
		<div class="col-md-4 left-account ">
			<a href="single.html"><img class="img-responsive " src="images/s1.jpg" alt=""></a>
			<div class="five">
			<h2>25% </h2><span>indirim</span>
			</div>
			<a href="register.html" class="create">Üye Ol</a>
<div class="clearfix"> </div>
		</div>
	<div class="clearfix"> </div>
	</div>
	</div>

</div>
</asp:Content>

