<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Sepet.aspx.cs" Inherits="Sepet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    	<!-- grow -->
	<div class="grow">
		<div class="container">
			<h2>Onayla</h2>
		</div>
	</div>
	<!-- grow -->
<div class="container">
	<div class="check">	 
			 <h1>Sepetim (2)</h1>
		 <div class="col-md-9 cart-items">
			
				<script>$(document).ready(function(c) {
					$('.close1').on('click', function(c){
						$('.cart-header').fadeOut('slow', function(c){
							$('.cart-header').remove();
						});
						});	  
					});
			   </script>
			 <div class="cart-header">
				 <div class="close1"> </div>
				 <div class="cart-sec simpleCart_shelfItem">
						<div class="cart-item cyc">
							 <img src="images/pic1.jpg" class="img-responsive" alt=""/>
						</div>
					   <div class="cart-item-info">
						<h3><a href="#">Sehpa 001</a><span>Model No: 3578</span></h3>
						<ul class="qty">
							<li><p>Adet : 5</p></li>
							<%--<li><p>Qty : 1</p></li>--%>
						</ul>
						
							 <div class="delivery">
							 <p>Service Charges : Rs.100.00</p>
							 <span>Delivered in 2-3 business days</span>
							 <div class="clearfix"></div>
				        </div>	
					   </div>
					   <div class="clearfix"></div>
											
				  </div>
			 </div>
			 <script>$(document).ready(function(c) {
					$('.close2').on('click', function(c){
							$('.cart-header2').fadeOut('slow', function(c){
						$('.cart-header2').remove();
					});
					});	  
					});
			 </script>
			 <div class="cart-header2">
				 <div class="close2"> </div>
				  <div class="cart-sec simpleCart_shelfItem">
						<div class="cart-item cyc">
							 <img src="images/pic2.jpg" class="img-responsive" alt=""/>
						</div>
					   <div class="cart-item-info">
						<h3><a href="#">Zigon 000</a><span>Model No: 3578</span></h3>
						<ul class="qty">
							<li><p>Size : 5</p></li>
							<li><p>Qty : 1</p></li>
						</ul>
							 <div class="delivery">
							 <p>Service Charges : Rs.100.00</p>
							 <span>Delivered in 2-3 business days</span>
							 <div class="clearfix"></div>
				        </div>	
					   </div>
					   <div class="clearfix"></div>
											
				  </div>
			  </div>		
		 </div>
		  <div class="col-md-3 cart-total">
			 <a class="continue" href="Urunler.aspx">Alışverişe Devam Et</a>
			 <div class="price-details">
				 <h3>Sepet Detay</h3>
				 <span>Toplam</span>
				 <span class="total1">6200.00 TL</span>
				 <span>İndirim</span>
				 <span class="total1">---</span>
				 <span>İndirim Kuponu</span>
				 <span class="total1">150.00</span>
				 <div class="clearfix"></div>				 
			 </div>	
			 <ul class="total_price">
			   <li class="last_price"> <h4>Toplam</h4></li>	
			   <li class="last_price"><span>6350.00</span></li>
			   <div class="clearfix"> </div>
			 </ul>
			
			 
			 <div class="clearfix"></div>
			 <a class="order" href="#">Sipariş Ver</a>
			 <div class="total-item">
				 <h3>Seşenekler</h3>
				 <h4>Kuponlar</h4>
				 <a class="cpns" href="#">Kuponları Kullan</a>
				 <p><a href="Uye-Girisi.aspx">Üye Girişi</a> ile kullan</p>
			 </div>
			</div>
		
			<div class="clearfix"> </div>
	 </div>
	 </div>
</asp:Content>

