<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="slider">
	  <div class="callbacks_container">
	      <ul class="rslides" id="slider">
	        <li><img src="images/banner.jpg" class="img-responsive" alt=""/>
	          <div class="banner_desc">
	          	<div class="container">
				  <h1>ÖRNEK EMLAK</h1>
				  <h2>Ev Ararken en Yakın Yardımcınız.</h2>
				</div>
				<div class="details">
			     <div class="container">
	    	     <div class="col-xs-10 dropdown-buttons">   
            	  <div class="col-xs-4 dropdown-button">           			
            		<div class="section_room">
						 <select id="country" onchange="change_country(this.value)" class="frm-field required">
							<option value="null">Tümü</option>
							<option value="null">Kiralık</option>         
							<option value="AX">Satılık</option>
							
						 </select>
					  </div>
					</div>
				    <div class="col-xs-4 dropdown-button">
					  <div class="section_room">
						 <select id="country" onchange="change_country(this.value)" class="frm-field required">
							<option value="null">Tümü</option>
							<option value="null">Konut</option>         
							<option value="AX">İş</option>
							<option value="AX">Arsa</option>
						 </select>
					  </div>
					 </div>
					 <div class="col-xs-4 dropdown-button">
					  <div class="section_room">
						 <select id="country" onchange="change_country(this.value)" class="frm-field required">
							<option value="null">Tümü</option>
							<option value="null">Acil</option>         
							<option value="AX">Kelepir</option>
							
						 </select>
					  </div>
					 </div>
				   </div> 
				   <div class="col-xs-2 submit_button"> 
				   	  <form>
				   	     <input type="submit" value="Ara">
				   	  </form>
				   </div>
				   <div class="clearfix"> </div>
				</div>
			   </div>
			  </div>
			</li>
	        <li><img src="images/banner1.jpg" class="img-responsive" alt=""/>
	         <div class="banner_desc">
	            <div class="container">
				  <h1>ÖRNEK EMLAK</h1>
				  <h2>Örnek Slogan</h2>
			    </div>
				<div class="details">
			     <div class="container">
	    	     <div class="col-xs-10 dropdown-buttons">   
            	  <div class="col-xs-4 dropdown-button">           			
            		<div class="section_room">
						 <select id="country" onchange="change_country(this.value)" class="frm-field required">
							<option value="null">Tümü</option>
							<option value="null">Kiralık</option>         
							<option value="AX">Satılık</option>
							
						 </select>
					  </div>
					</div>
				    <div class="col-xs-4 dropdown-button">
					  <div class="section_room">
						 <select id="country" onchange="change_country(this.value)" class="frm-field required">
							<option value="null">Tümü</option>
							<option value="null">Konut</option>         
							<option value="AX">İş</option>
							<option value="AX">Arsa</option>
						 </select>
					  </div>
					 </div>
					 <div class="col-xs-4 dropdown-button">
					  <div class="section_room">
						 <select id="country" onchange="change_country(this.value)" class="frm-field required">
							<option value="null">Tümü</option>
							<option value="null">Acil</option>         
							<option value="AX">Kelepir</option>
							
						 </select>
					  </div>
					 </div>
				   </div> 
				   <div class="col-xs-2 submit_button"> 
				   	  <form>
				   	     <input type="submit" value="Ara">
				   	  </form>
				   </div>
				   <div class="clearfix"> </div>
				</div>
			   </div>
			   </div>
	        </li>
	        <li><img src="images/banner2.jpg" class="img-responsive" alt=""/>
	          <div class="banner_desc">
	          	<div class="container">
				  <h1>ÖRNEK EMLAK</h1>
				  <h2>Örnek Slogan</h2>
			    </div>
				<div class="details">
			     <div class="container">
	    	     <div class="col-xs-10 dropdown-buttons">   
            	  <div class="col-xs-4 dropdown-button">           			
            		<div class="section_room">
						 <select id="country" onchange="change_country(this.value)" class="frm-field required">
							<option value="null">Tümü</option>
							<option value="null">Kiralık</option>         
							<option value="AX">Satılık</option>
							
						 </select>
					  </div>
					</div>
				    <div class="col-xs-4 dropdown-button">
					  <div class="section_room">
						 <select id="country" onchange="change_country(this.value)" class="frm-field required">
							<option value="null">Tümü</option>
							<option value="null">Konut</option>         
							<option value="AX">İş</option>
							<option value="AX">Arsa</option>
						 </select>
					  </div>
					 </div>
					 <div class="col-xs-4 dropdown-button">
					  <div class="section_room">
						 <select id="country" onchange="change_country(this.value)" class="frm-field required">
							<option value="null">Tümü</option>
							<option value="null">Acil</option>         
							<option value="AX">Kelepir</option>
							
						 </select>
					  </div>
					 </div>
				   </div> 
				   <div class="col-xs-2 submit_button"> 
				   	  <form>
				   	     <input type="submit" value="Ara">
				   	  </form>
				   </div>
				   <div class="clearfix"> </div>
				</div>
			   </div>
			    </div>
			 </li>
	      </ul>
	 </div>
</div>
<div class="smart_details">
			     <div class="container">
	    	     <div class="col-md-10 dropdown-buttons">   
            	  <div class="col-md-4 dropdown-button">           			
            		<div class="section_room">
						 <select id="country" onchange="change_country(this.value)" class="frm-field required">
							<option value="null">All Locations</option>
							<option value="null">Business</option>         
							<option value="AX">First Class</option>
							<option value="AX">Premium Economy</option>
						 </select>
					  </div>
					</div>
				    <div class="col-md-4 dropdown-button">
					  <div class="section_room">
						 <select id="country" onchange="change_country(this.value)" class="frm-field required">
							<option value="null">All Property types</option>
							<option value="null">House</option>         
							<option value="AX">Apartment</option>
							<option value="AX">Premium Economy</option>
						 </select>
					  </div>
					 </div>
					 <div class="col-md-4 dropdown-button">
					  <div class="section_room">
						 <select id="country" onchange="change_country(this.value)" class="frm-field required">
							<option value="null">All contracts</option>
							<option value="null">Sale</option>         
							<option value="AX">Rent</option>
							<option value="AX">Sold</option>
						 </select>
					  </div>
					 </div>
				   </div> 
				   <div class="col-md-2 submit_button"> 
				   	  <form>
				   	     <input type="submit" value="Search">
				   	  </form>
				   </div>
				   <div class="clearfix"> </div>
				</div>
</div>
<div class="content_top">
   <div class="container">
   	  <h4 class="m_3">Popüler İlanlar</h4>
   	  <div class="grid_1">
		<div class="col-md-3 box_1">
			<a href="Detay.aspx"><img src="images/pic8.jpg" class="img-responsive" alt=""/></a>
		    <div class="box_2">
			  <div class="special-wrap"><div class="hot_offer"><span class="m_11">Sıcak Teklif</span></div><div class="forclosure"><span class="m_12">Özel Teklif</span></div></div>
			</div>
		   <div class="box_3">
			 <h3><a href="single.html">Ev 1</a></h3>
			 <div class="boxed_mini_details clearfix">
			      <span class="area first"><strong>Garaj</strong><i class="fa fa-plane icon1"> </i>
			      2</span>
			      <span class="status"><strong>Salon</strong><i class="fa fa-retweet icon1"> </i>
			      2</span>
			      <span class="bedrooms last"><strong>Oda</strong><i class="fa fa-bed"></i>
			      2</span>
             </div>
		   </div>
		</div>
		<div class="col-md-3 box_1">
			<a href="Detay.aspx"><img src="images/pic8.jpg" class="img-responsive" alt=""/></a>
		    <div class="box_2">
			  <div class="special-wrap"><div class="hot_offer"><span class="m_11">Sıcak Teklif</span></div><div class="forclosure"><span class="m_12">Özel Teklif</span></div></div>
			</div>
		   <div class="box_3">
			 <h3><a href="single.html">Ev 1</a></h3>
			 <div class="boxed_mini_details clearfix">
			      <span class="area first"><strong>Garaj</strong><i class="fa fa-plane icon1"> </i>
			      2</span>
			      <span class="status"><strong>Salon</strong><i class="fa fa-retweet icon1"> </i>
			      2</span>
			      <span class="bedrooms last"><strong>Oda</strong><i class="fa fa-bed"></i>
			      2</span>
             </div>
		   </div>
		</div>
		<div class="col-md-3 box_1">
			<a href="Detay.aspx"><img src="images/pic8.jpg" class="img-responsive" alt=""/></a>
		    <div class="box_2">
			  <div class="special-wrap"><div class="hot_offer"><span class="m_11">Sıcak Teklif</span></div><div class="forclosure"><span class="m_12">Özel Teklif</span></div></div>
			</div>
		   <div class="box_3">
			 <h3><a href="single.html">Ev 1</a></h3>
			 <div class="boxed_mini_details clearfix">
			      <span class="area first"><strong>Garaj</strong><i class="fa fa-plane icon1"> </i>
			      2</span>
			      <span class="status"><strong>Salon</strong><i class="fa fa-retweet icon1"> </i>
			      2</span>
			      <span class="bedrooms last"><strong>Oda</strong><i class="fa fa-bed"></i>
			      2</span>
             </div>
		   </div>
		</div>
		<div class="col-md-3 box_1">
		<a href="Detay.aspx"><img src="images/pic8.jpg" class="img-responsive" alt=""/></a>
		    <div class="box_2">
			  <div class="special-wrap"><div class="hot_offer"><span class="m_11">Sıcak Teklif</span></div><div class="forclosure"><span class="m_12">Özel Teklif</span></div></div>
			</div>
		   <div class="box_3">
			 <h3><a href="single.html">Ev 1</a></h3>
			 <div class="boxed_mini_details clearfix">
			      <span class="area first"><strong>Garaj</strong><i class="fa fa-plane icon1"> </i>
			      2</span>
			      <span class="status"><strong>Salon</strong><i class="fa fa-retweet icon1"> </i>
			      2</span>
			      <span class="bedrooms last"><strong>Oda</strong><i class="fa fa-bed"></i>
			      2</span>
             </div>
		   </div>
		</div>
		<div class="clearfix"> </div>
	</div>
	   <div class="content_bottom">
		<div class="col-md-2">
			<div class="widget">
                <div class="title"><h3><i class="fa fa-meh-o men"> </i> SATILIK</h3></div>
                  <ul class="real-widget"><li><a href="#">İş Yeri(3)</a></li>
                	<li><a href="#">Apartman Dairesi(16)</a><ul>
                		<li><a href="#">Apartman</a></li>
                		<li><a href="#">Yazlık</a></li>
                		<li><a href="#">Villa</a></li></ul>
                  </ul></li>
                </ul>
             </div>
             <div class="widget">
                <div class="title"><h3><i class="fa fa-meh-o men"> </i> KİRALIK</h3></div>
                  <ul class="real-widget"><li><a href="#">İş Yeri(3)</a></li>
                	<li><a href="#">Apartman Dairesi(16)</a><ul>
                		<li><a href="#">Apartman</a></li>
                		<li><a href="#">Yazlık</a></li>
                		<li><a href="#">Villa</a></li></ul>
                  </ul></li>
                </ul>
             </div>
		</div>
		<div class="col-md-7">	
		   <div class="sap_tabs">
				<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
						 <div class="tab_grid">
							  <ul class="resp-tabs-list">
							  	  <li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>Apartman</span></li>
								  <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>İş Yeri</span></li>
								  <li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>Yazlık</span></li>
								  <div class="clearfix"></div>
							  </ul>	
							</div>	
							    <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
							    	<ul class="tab_img tab_1">
									  <li>
										<div class="client_box1">
					       				    <img src="images/pic1.jpg" class="img-responsive" alt=""/>
					       				    <div class="box_type">650&nbsp;TL</div>
					       				    <h3 class="m_1"><a href="single.html">İNCELE</a></h3>
					       				    <div class="boxed_mini_details clearfix">
			                                    <span class="area first"><strong>Garaj</strong><i class="fa fa-plane icon1"></i>
			                                    2</span>
			                                    <span class="status"><strong>Salon</strong><i class="fa fa-retweet icon1"> </i>
			                                    2</span>
			                                    <span class="bedrooms last"><strong>Oda</strong><i class="fa fa-building-o icon1"></i>
			                                    2</span>
                                            </div>
					       				 </div>
										</li>
										<li>
										  <div class="client_box1">
					       				    <img src="images/pic2.jpg" class="img-responsive" alt=""/>
					       				     <div class="box_type">450&nbsp;TL</div>
					       				    <h3 class="m_1"><a href="single.html">İNCELE</a></h3>
					       				    <div class="boxed_mini_details clearfix">
			                                    <span class="area first"><strong>Garaj</strong><i class="fa fa-plane icon1"></i>
			                                    2</span>
			                                    <span class="status"><strong>Salon</strong><i class="fa fa-retweet icon1"> </i>
			                                    2</span>
			                                    <span class="bedrooms last"><strong>Oda</strong><i class="fa fa-building-o icon1"></i>
			                                    2</span>
                                            </div>
					       				   </div>
										</li>
										<li class="last">
										  <div class="client_box1">
					       				    <img src="images/pic3.jpg" class="img-responsive" alt=""/>
					       				     <div class="box_type">220&nbsp;TL</div>
					       				     <h3 class="m_1"><a href="single.html">İNCELE</a></h3>
					       				    <div class="boxed_mini_details clearfix">
			                                    <span class="area first"><strong>Garaj</strong><i class="fa fa-plane icon1"></i>
			                                    2</span>
			                                    <span class="status"><strong>Salon</strong><i class="fa fa-retweet icon1"> </i>
			                                    2</span>
			                                    <span class="bedrooms last"><strong>Oda</strong><i class="fa fa-building-o icon1"></i>
			                                    2</span>
                                            </div>
					       				  </div>
										</li>
										<div class="clearfix"></div>
										</ul>
										<ul class="tab_img">
										<li>
										  <div class="client_box1">
					       				    <img src="images/pic4.jpg" class="img-responsive" alt=""/>
					       				     <div class="box_type">650&nbsp;TL</div>
					       				     <h3 class="m_1"><a href="single.html">İNCELE</a></h3>
					       				    <div class="boxed_mini_details clearfix">
			                                    <span class="area first"><strong>Garaj</strong><i class="fa fa-plane icon1"></i>
			                                    2</span>
			                                    <span class="status"><strong>Salon</strong><i class="fa fa-retweet icon1"> </i>
			                                    2</span>
			                                    <span class="bedrooms last"><strong>Oda</strong><i class="fa fa-building-o icon1"></i>
			                                    2</span>
                                            </div>
					       				  </div>
										</li>
										<li>
										<div class="client_box1">
					       				    <img src="images/pic5.jpg" class="img-responsive" alt=""/>
					       				     <div class="box_type">$&nbsp;450</div>
					       				     <h3 class="m_1"><a href="single.html">Dolor Sit</a></h3>
					       				    <div class="boxed_mini_details clearfix">
			                                    <span class="area first"><strong>Garage</strong><i class="fa fa-plane icon1"></i>
			                                    2</span>
			                                    <span class="status"><strong>Baths</strong><i class="fa fa-retweet icon1"> </i>
			                                    2</span>
			                                    <span class="bedrooms last"><strong>Beds</strong><i class="fa fa-building-o icon1"></i>
			                                    2</span>
                                            </div>
					       				 </div>
										</li>
										<li class="last">
										 <div class="client_box1">
					       				    <img src="images/pic4.jpg" class="img-responsive" alt=""/>
					       				     <div class="box_type">650&nbsp;TL</div>
					       				     <h3 class="m_1"><a href="single.html">İNCELE</a></h3>
					       				    <div class="boxed_mini_details clearfix">
			                                    <span class="area first"><strong>Garaj</strong><i class="fa fa-plane icon1"></i>
			                                    2</span>
			                                    <span class="status"><strong>Salon</strong><i class="fa fa-retweet icon1"> </i>
			                                    2</span>
			                                    <span class="bedrooms last"><strong>Oda</strong><i class="fa fa-building-o icon1"></i>
			                                    2</span>
                                            </div>
					       				  </div>
										</li>
										<div class="clearfix"></div>
									</ul>
							     </div>	
							     <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
									
									<ul class="tab_img">
										<li>
										  <div class="client_box1">
					       				    <img src="images/pic4.jpg" class="img-responsive" alt=""/>
					       				     <div class="box_type">650&nbsp;TL</div>
					       				     <h3 class="m_1"><a href="single.html">İNCELE</a></h3>
					       				    <div class="boxed_mini_details clearfix">
			                                    <span class="area first"><strong>Garaj</strong><i class="fa fa-plane icon1"></i>
			                                    2</span>
			                                    <span class="status"><strong>Salon</strong><i class="fa fa-retweet icon1"> </i>
			                                    2</span>
			                                    <span class="bedrooms last"><strong>Oda</strong><i class="fa fa-building-o icon1"></i>
			                                    2</span>
                                            </div>
					       				  </div>
										</li>
										<li>
										<div class="client_box1">
					       				    <img src="images/pic4.jpg" class="img-responsive" alt=""/>
					       				     <div class="box_type">650&nbsp;TL</div>
					       				     <h3 class="m_1"><a href="single.html">İNCELE</a></h3>
					       				    <div class="boxed_mini_details clearfix">
			                                    <span class="area first"><strong>Garaj</strong><i class="fa fa-plane icon1"></i>
			                                    2</span>
			                                    <span class="status"><strong>Salon</strong><i class="fa fa-retweet icon1"> </i>
			                                    2</span>
			                                    <span class="bedrooms last"><strong>Oda</strong><i class="fa fa-building-o icon1"></i>
			                                    2</span>
                                            </div>
					       				  </div>
										</li>
										<li class="last">
										 <div class="client_box1">
					       				    <img src="images/pic4.jpg" class="img-responsive" alt=""/>
					       				     <div class="box_type">650&nbsp;TL</div>
					       				     <h3 class="m_1"><a href="single.html">İNCELE</a></h3>
					       				    <div class="boxed_mini_details clearfix">
			                                    <span class="area first"><strong>Garaj</strong><i class="fa fa-plane icon1"></i>
			                                    2</span>
			                                    <span class="status"><strong>Salon</strong><i class="fa fa-retweet icon1"> </i>
			                                    2</span>
			                                    <span class="bedrooms last"><strong>Oda</strong><i class="fa fa-building-o icon1"></i>
			                                    2</span>
                                            </div>
					       				  </div>
										</li>
										<div class="clearfix"></div>
									</ul>
							     </div>	
							     <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
							     	<ul class="tab_img">
										<li>
										<div class="client_box1">
					       				    <img src="images/pic4.jpg" class="img-responsive" alt=""/>
					       				     <div class="box_type">650&nbsp;TL</div>
					       				     <h3 class="m_1"><a href="single.html">İNCELE</a></h3>
					       				    <div class="boxed_mini_details clearfix">
			                                    <span class="area first"><strong>Garaj</strong><i class="fa fa-plane icon1"></i>
			                                    2</span>
			                                    <span class="status"><strong>Salon</strong><i class="fa fa-retweet icon1"> </i>
			                                    2</span>
			                                    <span class="bedrooms last"><strong>Oda</strong><i class="fa fa-building-o icon1"></i>
			                                    2</span>
                                            </div>
					       				  </div>
										</li>
										<li class="last">
										 <div class="client_box1">
					       				    <img src="images/pic4.jpg" class="img-responsive" alt=""/>
					       				     <div class="box_type">650&nbsp;TL</div>
					       				     <h3 class="m_1"><a href="single.html">İNCELE</a></h3>
					       				    <div class="boxed_mini_details clearfix">
			                                    <span class="area first"><strong>Garaj</strong><i class="fa fa-plane icon1"></i>
			                                    2</span>
			                                    <span class="status"><strong>Salon</strong><i class="fa fa-retweet icon1"> </i>
			                                    2</span>
			                                    <span class="bedrooms last"><strong>Oda</strong><i class="fa fa-building-o icon1"></i>
			                                    2</span>
                                            </div>
					       				  </div>
										</li>
										<div class="clearfix"></div>
									</ul>
							     </div>	
				  </div>
           </div>
        </div>
        <div class="col-md-3">
			<div class="blog_list2">
				 <h3>Ekibimiz / Danışmanlarımız</h3>
					 <ul class="blog-list3 list_1">
					 	<li class="blog-list3-img"><img src="images/pic12.jpg" class="img-responsive" alt=""/></li>
					 	<li class="blog-list3-desc">
					 	  <h4><a href="#">Ali Yılmaz</a></h4>
					 	    <ul class="admin_desc">
							    <li class="list_top"><i class="fa fa-phone-square ph"> </i>
								<p class="m_2">20-1257-2587</p></li>
								<div class="clearfix"> </div>
								<li class="list_top"><i class="fa fa-envelope ph"> </i>
								<p class="m_2"><a href="malito:mail@demolink.org">mail(at)örnekemlak.com</a></p></li>
								<div class="clearfix"> </div>
					        </ul>
		                 </li>
					 	<div class="clearfix"> </div>
					 </ul>
					 <ul class="blog-list3 list_1">
					 	<li class="blog-list3-img"><img src="images/pic13.jpg" class="img-responsive" alt=""/></li>
					 	<li class="blog-list3-desc">
					 	  <h4><a href="#">Veli Yılmaz</a></h4>
					 	    <ul class="admin_desc">
							    <li class="list_top"><i class="fa fa-phone-square ph"> </i>
								<p class="m_2">20-1257-2587</p></li>
								<div class="clearfix"> </div>
								<li class="list_top"><i class="fa fa-envelope ph"> </i>
								<p class="m_2"><a href="malito:mail@demolink.org">mail(at)örnekemlak.com</a></p></li>
								<div class="clearfix"> </div>
					        </ul>
		                 </li>
					 	<div class="clearfix"> </div>
					 </ul>
					 <ul class="blog-list3">
					 	<li class="blog-list3-img"><img src="images/pic7.jpg" class="img-responsive" alt=""/></li>
					 	<li class="blog-list3-desc">
					 	  <h4><a href="#">Hasan Yılmaz</a></h4>
					 	    <ul class="admin_desc">
							    <li class="list_top"><i class="fa fa-phone-square ph"> </i>
								<p class="m_2">20-1257-2587</p></li>
								<div class="clearfix"> </div>
								<li class="list_top"><i class="fa fa-envelope ph"> </i>
								<p class="m_2"><a href="malito:mail@demolink.org">mail(at)örnekemlak.com</a></p></li>
								<div class="clearfix"> </div>
					        </ul>
		                 </li>
					 	<div class="clearfix"> </div>
					 </ul>
			    </div>
		</div>
        <div class="clearfix"> </div>
        </div>
        <div class="grid_4">
                <div class="col-md-7 grid_6">
                    <h3>
                       En Çok Ziyaret <br>
                       Edilenler
                    </h3>
                </div>
                <div class="col-md-5 grid_5">
                    <div class="banner2">
                        <a class="btn2" href="#">Ara</a>
                        <h3>
                           Sizin için<br>
                            Önerilenler
                        </h3>
                        <div class="clearfix"> </div>
                    </div>
                </div>
                <div class="clearfix"> </div>
        </div>
      
	</div>
</div>
</asp:Content>

