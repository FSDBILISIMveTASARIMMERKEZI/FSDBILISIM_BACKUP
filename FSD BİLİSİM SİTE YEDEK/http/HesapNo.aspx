<%@ Page Title="HESAP NUMARALARIMIZ|SEO|MOBİL|RESPONSİVE WEB TASARIM" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HesapNo.aspx.cs" Inherits="Hakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="content">
        <div class="container">

            <section>
                <div class="row">
                    <div class="col-md-12">

                        <div class="heading">
                            <h2>HESAP NUMARALARIMIZ</h2>
                        </div>

                        <p class="lead" style="text-align:justify">
                            
                        </p>

                    </div>
                </div>

                <div class="row">
                    <div class="col-md-8">
                        <div class="panel-group accordion" id="accordionThree">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">

                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse3a">ZİRAAT BANKASI
                                        </a>

                                    </h4>
                                </div>
                                <div id="collapse3a" class="panel-collapse collapse ">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <img src="img/ziraat.jpg" alt="" class="img-responsive"/>
                                            </div>
                                            <div class="col-md-8">
                                                <p>
                                                    <span class="accent"  >Şubesi.........:</span> Anıt Tepe Şubesi <br />
                                                    <span class="accent"  >Hesap Türü.:</span> TL Hesabı <br />
                                                    <span class="accent"  >Hesap No....:</span> ........ <br />
                                                    <span class="accent"  >Alıcı.............:</span> Fatma DEMİR <br />
                                                    <span class="accent"  >IBAN.............:</span>TR12 0001000833632438565001<br />
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">

                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse3b">GARANTİ BANKASI

                                        </a>

                                    </h4>
                                </div>
                                <div id="collapse3b" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <img src="img/garanti.jpg" alt="" class="img-responsive"/>
                                            </div>
                                            <div class="col-md-8">
                                                <p><br />
                                                    <span class="accent"  >Şubesi.........:</span> ..... <br />
                                                    <span class="accent"  >Hesap Türü.:</span> TL Hesabı <br />
                                                    <span class="accent"  >Hesap No....:</span> ......<br />
                                                    <span class="accent"  >Alıcı.............:</span> ..... <br />
                                                    <span class="accent"  >IBAN.............:</span>TR.......<br />
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">

                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse3c">TEB

                                        </a>

                                    </h4>
                                </div>
                                <div id="collapse3c" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <img src="img/teb.jpg" alt="" class="img-responsive">
                                            </div>
                                            <div class="col-md-8">
                                                <p>
                                                    <span class="accent"  >Şubesi.........:</span> Dikmen Şubeşi <br />
                                                    <span class="accent"  >Hesap Türü.:</span> TL Hesabı <br />
                                                    <span class="accent"  >Hesap No....:</span> 48565146 <br />
                                                    <span class="accent"  >Alıcı.............:</span> Fatma DEMİR <br />
                                                    <span class="accent"  >IBAN.............:</span>TR57 0003200000000048565146<br />
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <%--<div class="col-md-4">
                        <div class="video">
                            <div class="embed-responsive embed-responsive-4by3">
                                <iframe class="embed-responsive-item" src="//www.youtube.com/embed/upZJpGrppJA"></iframe>
                            </div>

                        </div>
                    </div>--%>
                </div>
            </section>
            <section>
                <div class="row">
                    <div class="col-md-4">
                        <div class="heading">
                            <h2>HİZMETLERİMİZ</h2>
                        </div>

                        <div class="progress">
                            <div class="progress-bar progress-bar-primary"  role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
                              <a href="WebTasarim.aspx" style="color:white" >Web Tasarım</a>  
                            </div>
                        </div>
                        <div class="progress">
                            <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
                                <a href="E-Ticaret.aspx" style="color:white" >E-Ticaret</a> 
                            </div>
                        </div>
                        <div class="progress">
                            <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
                                <a href="MobilTasarim.aspx" style="color:white" >Mobil Tasarım</a>
                            </div>
                        </div>
                        
                    </div>
                    <div class="col-md-4">
                        <div class="heading">
                            <h2>BECERİLERİMİZ</h2>
                        </div>
                        <ul class="ul-icons">
                            <li><i class="fa fa-check"></i>Seo ve Mobil uyumlu Responsive sitenizi yapalım.</li>
                            <li><i class="fa fa-check"></i>Ürünlerinizin satışını sanal mağazaya taşıyalım.</li>
                            <li><i class="fa fa-check"></i>Siteniz sayfa ve görselleriyle mobil uyumlu olsun.</li>
                        </ul>
                    </div>
                    <%--<div class="col-md-4">
                        <div class="heading">
                            <h2>Our values</h2>
                        </div>

                        <ul class="ul-icons">
                            <li><i class="fa fa-check"></i>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
                            <li><i class="fa fa-check"></i>Aliquam tincidunt mauris eu risus.</li>
                            <li><i class="fa fa-check"></i>Vestibulum auctor dapibus neque.</li>
                        </ul>
                    </div>--%>
                </div>
            </section>

        </div>
        <!-- /#contact.container -->

        <%--<section class="bar background-pentagon">
            <div class="container">
                <div class="row showcase">
                    <div class="col-md-3 col-sm-6">
                        <div class="item">
                            <div class="icon">
                                <i class="fa fa-align-justify"></i>
                            </div>
                            <h4><span class="counter">580</span><br>
                                Websites</h4>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="item">
                            <div class="icon">
                                <i class="fa fa-users"></i>
                            </div>
                            <h4><span class="counter">100</span><br>
                                Satisfied Clients</h4>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="item">
                            <div class="icon">
                                <i class="fa fa-copy"></i>
                            </div>
                            <h4><span class="counter">320</span><br>
                                Projects</h4>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="item">
                            <div class="icon">
                                <i class="fa fa-font"></i>
                            </div>
                            <h4><span class="counter">923</span><br>
                                Magazines and Brochures</h4>
                        </div>
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container -->
        </section>--%>
        <!-- /.bar -->

        <%--<section class="bar background-white">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="heading">
                            <h2>Meet our team</h2>
                        </div>
                    </div>
                </div>
                <!-- /.row -->
                <div class="row">
                    <div class="col-md-3 col-sm-3">
                        <div class="team-member" data-animate="fadeInUp">
                            <div class="image">
                                <a href="team-member.html">
                                    <img src="img/person-1.jpg" alt="" class="img-responsive img-circle">
                                </a>
                            </div>
                            <h3><a href="team-member.html">Han Solo</a></h3>
                            <p class="role">Founder</p>
                            <div class="social">
                                <a href="#" class="external facebook" data-animate-hover="pulse"><i class="fa fa-facebook"></i></a>
                                <a href="#" class="external gplus" data-animate-hover="pulse"><i class="fa fa-google-plus"></i></a>
                                <a href="#" class="external twitter" data-animate-hover="pulse"><i class="fa fa-twitter"></i></a>
                                <a href="#" class="email" data-animate-hover="pulse"><i class="fa fa-envelope"></i></a>
                            </div>
                            <div class="text">
                                <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
                            </div>
                        </div>
                        <!-- /.team-member -->
                    </div>
                    <div class="col-md-3 col-sm-3" data-animate="fadeInUp">
                        <div class="team-member">
                            <div class="image">
                                <a href="team-member.html">
                                    <img src="img/person-2.jpg" alt="" class="img-responsive img-circle">
                                </a>
                            </div>
                            <h3><a href="team-member.html">Luke Skywalker</a></h3>
                            <p class="role">CTO</p>

                            <div class="social">
                                <a href="#" class="external facebook" data-animate-hover="pulse"><i class="fa fa-facebook"></i></a>
                                <a href="#" class="external gplus" data-animate-hover="pulse"><i class="fa fa-google-plus"></i></a>
                                <a href="#" class="external twitter" data-animate-hover="pulse"><i class="fa fa-twitter"></i></a>
                                <a href="#" class="email" data-animate-hover="pulse"><i class="fa fa-envelope"></i></a>
                            </div>
                            <div class="text">
                                <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
                            </div>
                        </div>
                        <!-- /.team-member -->
                    </div>
                    <div class="col-md-3 col-sm-3" data-animate="fadeInUp">
                        <div class="team-member">
                            <div class="image">
                                <a href="team-member.html">
                                    <img src="img/person-3.png" alt="" class="img-responsive img-circle">
                                </a>
                            </div>
                            <h3><a href="team-member.html">Princess Leia</a></h3>
                            <p class="role">Team Leader</p>
                            <div class="social">
                                <a href="#" class="external facebook" data-animate-hover="pulse"><i class="fa fa-facebook"></i></a>
                                <a href="#" class="external gplus" data-animate-hover="pulse"><i class="fa fa-google-plus"></i></a>
                                <a href="#" class="external twitter" data-animate-hover="pulse"><i class="fa fa-twitter"></i></a>
                                <a href="#" class="email" data-animate-hover="pulse"><i class="fa fa-envelope"></i></a>
                            </div>
                            <div class="text">
                                <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
                            </div>
                        </div>
                        <!-- /.team-member -->
                    </div>
                    <div class="col-md-3 col-sm-3" data-animate="fadeInUp">
                        <div class="team-member">
                            <div class="image">
                                <a href="team-member.html">
                                    <img src="img/person-4.jpg" alt="" class="img-responsive img-circle">
                                </a>
                            </div>
                            <h3><a href="team-member.html">Jabba Hut</a></h3>
                            <p class="role">Lead Developer</p>
                            <div class="social">
                                <a href="#" class="external facebook" data-animate-hover="pulse"><i class="fa fa-facebook"></i></a>
                                <a href="#" class="external gplus" data-animate-hover="pulse"><i class="fa fa-google-plus"></i></a>
                                <a href="#" class="external twitter" data-animate-hover="pulse"><i class="fa fa-twitter"></i></a>
                                <a href="#" class="email" data-animate-hover="pulse"><i class="fa fa-envelope"></i></a>
                            </div>
                            <div class="text">
                                <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
                            </div>
                        </div>
                        <!-- /.team-member -->
                    </div>
                </div>
                <!-- /.row -->

                <div class="row">
                    <div class="col-md-12">
                        <div class="see-more">
                            <a href="portfolio-4.html" class="btn btn-template-main">See all our team members</a>
                        </div>
                    </div>
                </div>

            </div>
            <!-- /.container -->
        </section>--%>

       <%-- <section class="bar background-gray no-mb">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="heading text-center">
                            <h2>Referanslarımız</h2>
                        </div>

                        <ul class="owl-carousel customers">
                            <li class="item">
                                <img src="img/customer-1.png" alt="" class="img-responsive">
                            </li>
                            <li class="item">
                                <img src="img/customer-2.png" alt="" class="img-responsive">
                            </li>
                            <li class="item">
                                <img src="img/customer-3.png" alt="" class="img-responsive">
                            </li>
                            <li class="item">
                                <img src="img/customer-4.png" alt="" class="img-responsive">
                            </li>
                            <li class="item">
                                <img src="img/customer-5.png" alt="" class="img-responsive">
                            </li>
                            <li class="item">
                                <img src="img/customer-6.png" alt="" class="img-responsive">
                            </li>
                        </ul>
                        <!-- /.owl-carousel -->
                    </div>

                </div>
            </div>
        </section>--%>

        <%--<section class="bar background-pentagon no-mb">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="heading text-center">
                            <h2>Testimonials</h2>
                        </div>

                        <p class="lead">We have worked with many clients and we always like to hear they come out from the cooperation happy and satisfied. Have a look what our clients said about us.</p>


                        <!-- *** TESTIMONIALS CAROUSEL ***
 _________________________________________________________ -->

                        <ul class="owl-carousel testimonials same-height-row">
                            <li class="item">
                                <div class="testimonial same-height-always">
                                    <div class="text">
                                        <p>
                                            One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin. He lay on his armour-like back, and if he lifted his head a little he could see his brown
                                                belly, slightly domed and divided by arches into stiff sections.
                                        </p>
                                    </div>
                                    <div class="bottom">
                                        <div class="icon">
                                            <i class="fa fa-quote-left"></i>
                                        </div>
                                        <div class="name-picture">
                                            <img class="" alt="" src="img/person-1.jpg">
                                            <h5>John McIntyre</h5>
                                            <p>CEO, TransTech</p>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="item">
                                <div class="testimonial same-height-always">
                                    <div class="text">
                                        <p>
                                            The bedding was hardly able to cover it and seemed ready to slide off any moment. His many legs, pitifully thin compared with the size of the rest of him, waved about helplessly as he looked. "What's happened
                                                to me? " he thought. It wasn't a dream.
                                        </p>
                                    </div>
                                    <div class="bottom">
                                        <div class="icon">
                                            <i class="fa fa-quote-left"></i>
                                        </div>
                                        <div class="name-picture">
                                            <img class="" alt="" src="img/person-2.jpg">
                                            <h5>John McIntyre</h5>
                                            <p>CEO, TransTech</p>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="item">
                                <div class="testimonial same-height-always">
                                    <div class="text">
                                        <p>His room, a proper human room although a little too small, lay peacefully between its four familiar walls.</p>

                                        <p>
                                            A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice,
                                                gilded frame.
                                        </p>
                                    </div>
                                    <div class="bottom">
                                        <div class="icon">
                                            <i class="fa fa-quote-left"></i>
                                        </div>
                                        <div class="name-picture">
                                            <img class="" alt="" src="img/person-3.png">
                                            <h5>John McIntyre</h5>
                                            <p>CEO, TransTech</p>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="item">
                                <div class="testimonial same-height-always">
                                    <div class="text">
                                        <p>
                                            It showed a lady fitted out with a fur hat and fur boa who sat upright, raising a heavy fur muff that covered the whole of her lower arm towards the viewer. Gregor then turned to look out the window at the dull
                                                weather. Drops of rain could be heard hitting the pane, which made him feel quite sad.
                                        </p>
                                    </div>

                                    <div class="bottom">
                                        <div class="icon">
                                            <i class="fa fa-quote-left"></i>
                                        </div>
                                        <div class="name-picture">
                                            <img class="" alt="" src="img/person-4.jpg">
                                            <h5>John McIntyre</h5>
                                            <p>CEO, TransTech</p>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="item">
                                <div class="testimonial same-height-always">
                                    <div class="text">
                                        <p>
                                            It showed a lady fitted out with a fur hat and fur boa who sat upright, raising a heavy fur muff that covered the whole of her lower arm towards the viewer. Gregor then turned to look out the window at the dull
                                                weather. Drops of rain could be heard hitting the pane, which made him feel quite sad. Gregor then turned to look out the window at the dull weather. Drops of rain could be heard hitting the pane, which
                                                made him feel quite sad.
                                        </p>
                                    </div>

                                    <div class="bottom">
                                        <div class="icon">
                                            <i class="fa fa-quote-left"></i>
                                        </div>
                                        <div class="name-picture">
                                            <img class="" alt="" src="img/person-4.jpg">
                                            <h5>John McIntyre</h5>
                                            <p>CEO, TransTech</p>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                        <!-- /.owl-carousel -->

                        <!-- *** TESTIMONIALS CAROUSEL END *** -->
                    </div>

                </div>
            </div>
        </section>--%>
        <!-- /.bar -->


    </div>
</asp:Content>

