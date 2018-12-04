<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Detay.aspx.cs" Inherits="Detay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <head>
<title></title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Mattress Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<link href='//fonts.googleapis.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'><!--//fonts-->
<!-- start menu -->
<link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>
<script src="js/simpleCart.min.js"> </script>
<script src="js/imagezoom.js"></script>
</head>
    <!-- grow -->
    <div class="grow">
        <div class="container">
            <h2>ZİGON</h2>
        </div>
    </div>
    <!-- grow -->
    <div class="product">
        <div class="container">

            <div class="product-price1">
                <div class="top-sing">
                    <div class="col-md-7 single-top">
                        <div class="flexslider">
                            <ul class="slides">
                                <li data-thumb="images/si.jpg">
                                    <div class="thumb-image">
                                        <img src="images/si.jpg" data-imagezoom="true" class="img-responsive">
                                    </div>
                                </li>
                                <li data-thumb="images/si1.jpg">
                                    <div class="thumb-image">
                                        <img src="images/si1.jpg" data-imagezoom="true" class="img-responsive">
                                    </div>
                                </li>
                                <li data-thumb="images/si2.jpg">
                                    <div class="thumb-image">
                                        <img src="images/si2.jpg" data-imagezoom="true" class="img-responsive">
                                    </div>
                                </li>
                                <li data-thumb="images/si3.jpg">
                                    <div class="thumb-image">
                                        <img src="images/si3.jpg" data-imagezoom="true" class="img-responsive">
                                    </div>
                                </li>
                            </ul>
                        </div>

                        <div class="clearfix"></div>
                        <!-- slide -->


                        <!-- FlexSlider -->
                        <script defer src="js/jquery.flexslider.js"></script>
                        <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

                        <script>
                            // Can also be used with $(document).ready()
                            $(window).load(function () {
                                $('.flexslider').flexslider({
                                    animation: "slide",
                                    controlNav: "thumbnails"
                                });
                            });
                        </script>







                    </div>
                    <div class="col-md-5 single-top-in simpleCart_shelfItem">
                        <div class="single-para ">
                            <h4>RENGA RENK ZİGON</h4>
                            <div class="star-on">

                                <div class="review">
                                    <a href="#">1 Yorum </a>

                                </div>
                                <div class="clearfix"></div>
                            </div>

                            <h5 class="item_price">500.00 TL</h5>
                            <p>Rengarenk olan zigon sehpamız kendi üretimimiz olup, ceviz, beyaz, kahverengi renkleri mevcuttur. Stoklarımız sınırlıdır. </p>
                            <div class="available">
                                <ul>
                                    <li>Renk
										<select>
                                            <option>Ceviz</option>
                                            <option>Beyaz</option>
                                            <option>Meşe</option>
                                            <option>Kahverengi</option>
                                        </select></li>
                                    <li class="size-in">Boyut<select>
                                        <option>Büyük</option>
                                        <option>Orta</option>
                                        <option>Küçük</option>
                                        <option>Çok Büyük</option>
                                        <option>Çok Küçük</option>
                                    </select></li>
                                    <div class="clearfix"></div>
                                </ul>
                            </div>

                            <a href="Sepet.aspx" class="add-cart item_add">Sepete Ekle</a>

                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <!---->

                <div class=" bottom-product">
                    <div class="col-md-4 bottom-cd simpleCart_shelfItem">
                        <div class="product-at ">
                            <a href="#">
                                <img class="img-responsive" src="images/pi3.jpg" alt="">
                                <div class="pro-grid">
                                    <span class="buy-in">Hemen Al!</span>
                                </div>
                            </a>
                        </div>
                        <p class="tun"><span>SEHPA</span><br>
                            FİSKOS</p>
                        <div class="ca-rt">
                            <a href="#" class="item_add">
                                <p class="number item_price"><i></i>500.00 TL</p>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4 bottom-cd simpleCart_shelfItem">
                        <div class="product-at ">
                            <a href="#">
                                <img class="img-responsive" src="images/pi1.jpg" alt="">
                                <div class="pro-grid">
                                    <span class="buy-in">HEMEN AL!</span>
                                </div>
                            </a>
                        </div>
                        <p class="tun"><span>VESTİYER</span><br>
                            AYAKKABILIK</p>
                        <div class="ca-rt">
                            <a href="#" class="item_add">
                                <p class="number item_price"><i></i>500.00 TL</p>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4 bottom-cd simpleCart_shelfItem">
                        <div class="product-at ">
                            <a href="#">
                                <img class="img-responsive" src="images/pi4.jpg" alt="">
                                <div class="pro-grid">
                                    <span class="buy-in">HEMEN AL!</span>
                                </div>
                            </a>
                        </div>
                        <p class="tun"><span>KONSOL</span><br>
                            AYNALIK</p>
                        <div class="ca-rt">
                            <a href="#" class="item_add">
                                <p class="number item_price"><i></i>500.00 TL</p>
                            </a>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>

            <div class="clearfix"></div>
        </div>
    </div>
</asp:Content>

