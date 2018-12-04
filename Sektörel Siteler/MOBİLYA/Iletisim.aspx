<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Iletisim.aspx.cs" Inherits="Iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="grow">
		<div class="container">
			<h2>İLETİŞİM</h2>
		</div>
	</div>
	<!-- grow -->
<!--content-->
<div class="contact">
			
			<div class="container">
			<div class="contact-form">
				
				<div class="col-md-8 contact-grid">
					<form>	
						<input type="text" value="Ad" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='Ad';}">
					
						<input type="text" value="Email" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='Email';}">
						<input type="text" value="Konu" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='Konu';}">
						
						<textarea cols="77" rows="6" value=" " onfocus="this.value='';" onblur="if (this.value == '') {this.value = 'Message';}">Mesaj</textarea>
						<div class="send">
							<input type="submit" value="Send">
						</div>
					</form>
				</div>
				<div class="col-md-4 contact-in">

						<div class="address-more">
						<h4>Adres</h4>
							<p>Üçoklar Mobilya,</p>
							<p>Çamlıtepe Caddesi,</p>
							<p>164 / 2 Siteler-  Ankara. </p>
						</div>
						<div class="address-more">
						
							<p>Tel:0535 468 52 23</p>
							
							<p>Email:<a href=""> info@ucoklarmobilya.com</a></p>
						</div>
					
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="map">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d37494223.23909492!2d103!3d55!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x453c569a896724fb%3A0x1409fdf86611f613!2sRussia!5e0!3m2!1sen!2sin!4v1415776049771"></iframe>
			</div>
		</div>
		
	</div>
<!--//content-->
</asp:Content>

