<%@ Page Title="BİLİŞİM ve E-MAİL|YEDEKLEME|TOPLU MAİL|İŞLETİM SİSTEMİ VE PROGRAM" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MailHizmeti.aspx.cs" Inherits="Hakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="content">
        <div class="container">

            <section>
                <div class="row">
                    <div class="col-md-12">

                        <div class="heading">
                            <h2>BİLİŞİM VE E-MAİL HİZMETLERİ</h2>
                        </div>

                        <p class="lead" style="text-align: justify">
                        </p>

                    </div>
                </div>

                <div class="row">
                    <div class="col-md-8">
                        <div class="panel-group accordion" id="Div2">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">

                                        <a data-toggle="collapse" data-parent="#accordion" href="#faq1">E-MAİL AYARLARI

                                        </a>

                                    </h4>
                                </div>
                                <div id="faq1" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <img src="img/Mail_Ayarları.png" alt="" style="border: 1px solid powderblue;" class="img-responsive" />
                                            </div>
                                            <div class="col-md-8">
                                                <p style="text-align: justify">
                                                    E-postanızın  kurulumunda destek almak istiyor musunuz? Desktop, Notebook, Tüm Android cihazlarınıza e-mailinizi kurabiliriz.
                                            Evinizde veya işyerinizde Mail kurulumunu uzaktan bağlanarak yapabilirsiniz.Destek için iletişime geciniz.
                                                </p>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.panel -->

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">

                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" style="text-align: justify">E-MAİL YEDEKLEME

                                        </a>

                                    </h4>
                                </div>
                                <div id="collapseTwo" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <img src="img/backup.png" alt="" class="img-responsive" />
                                            </div>
                                            <div class="col-md-8">
                                                <p style="text-align: justify">
                                                    Yedekleme bilişim dünyasında kaçınılmaz işlemlerden biridir.
                                   Şirket maillerin yedeklenmesi ileride oluşması muhtemel problemler için önem arz etmektedir.Yedekleme, mailleri bilerek veya
                                            yanlışlıkla  silinmesi sonucu verilerinizin güvenliğini sağlamaktadır.
                                            Desktop veya Laptopdaki e-postalarınızın yedeğini almak istiyorsanız arayınız.
                                            Uzaktan bağlanarak e-mal yedeğinizi alabiliriz. Bilgilerinizi güvenle saklayabilirsiniz.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.panel -->


                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">

                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" style="text-align: justify">TOPLU E-MAİL GÖNDERME

                                        </a>

                                    </h4>
                                </div>
                                <div id="collapseThree" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <img src="img/toplu_mail_gonderme.png" style="border: 1px solid powderblue;" alt="" class="img-responsive" />
                                            </div>
                                            <div class="col-md-8">
                                                <p style="text-align: justify">
                                                    Bütün Mail işlemlerinizi yaparak alıcı adreslerine gönderiyoruz.
                                    İstediğiniz gönderici adı ile metin, resim, mailin konusu ve alıcı mail adresini göndermeniz yeterlidir.
                                    Kampanya, kutlama, duyuru ve reklamalarınızı ulaştırmak istediğiniz kişilere hızlı bir şekilde
                                    gönderebilirsiniz. Resim veya html formatindaki afiş, bröşur veya bültenlerinizi müşterilerinize,
                                    üyelerinize, arkadaşlarınıza, çevrenize ve kitlenize e-posta gönderimi yapabilirsiniz. Adresleri tek tek ekleyebiliriz veya excel ile outlooktan
                                    topluca yükleyebiliriz. İrtibat için <a href="İletisim.aspx">iletişime</a> geçiniz.


                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.panel -->

                            <%--<div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">

                                        <a data-toggle="collapse" data-parent="#accordion" href="#faq4" style="text-align:justify">KURUMSAL E-MAİL HİZMETLERİ

                                        </a>

                                    </h4>
                                </div>
                                <div id="faq4" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <img src="img/Kurumsal_Mail.png" style=" border: 1px solid powderblue;" alt="" class="img-responsive"/>
                                            </div>
                                            <div class="col-md-8">
                                        <p style="text-align:justify">
                                             SEO uygulamaları , sitenizin arama motorlarında(google,yahoo vs.) daha üst sıralarda çıkmasını sağlar.
                                                Dolayısıyla markanızı,popülaritenizi ve site ile firma farkındalığınızı arttırır.
                                                 Seo ile müşteriye kolayca ulaşabilmenize imkanınız artar, müşteride size zorlanmadan ulaşabilir.Böylece siteniz daha fazla incelenmiş olur.
                                                Seo faaliyetleriyle işleriniz daha fazla genişler.
                                        </p>
                                       </div></div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.panel -->--%>

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">

                                        <a data-toggle="collapse" data-parent="#accordion" href="#faq5" style="text-align: justify">İŞLETİM SİSTEMİ  VE PROGRAM KURULUM HİZMETLERİ 


                                        </a>

                                    </h4>
                                </div>
                                <div id="faq5" class="panel-collapse collapse ">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <img src="img/isletim-sistemi.png" alt="" class="img-responsive" />
                                            </div>
                                            <div class="col-md-8"  style="text-align:justify">
                                                <p>
                                                    Bilgisayarınız açılmıyorsa, bilgisayarınızda onarılması zor yada onarılamaz durumda hatalar varsa, bilgisayarınıza virüs bulaştıysa, bilgisayarınız çok yavaş ise,
                                                    yanlışlıkla sistem dosyaları silindiyse, bilgisayarınız mavi ekran hatası veriyorsa hiç şüphesiz bilgisayarınıza yeni işletim sistemi (format atmak) kurmanız gerekmektedir.

                                                    İşletim Sistemi Kurulum ve Bakımı, driver kurulumları, proğram kurulumları, Acronis True Image,
                                                    Adsl Kurulum ve Bakım Hizmeti, Yazıcı, Tarayıcı Kurulum ve Bakım  için ev veya ofisinizdeki  problemlerinizde arayınız.




                                                </p>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!-- /.panel -->

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">

                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse3a">NOTEBOOK VE DESKTOP BAKIM HİZMETLERİ
                                        </a>

                                    </h4>
                                </div>
                                <div id="collapse3a" class="panel-collapse collapse ">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <img src="img/notebook-desktop.png" style="border: 1px solid powderblue;" style="border: 1px solid powderblue;" alt="" class="img-responsive" />
                                            </div>
                                            <div class="col-md-8"  style="text-align:justify">
                                                <p>
                                                    Bilgisayarlarınıza yaptığımız periyodik bakımlar ile  oluşması muhtemel sorunların önüne geçiyoruz.
                                                    Periyodik kontroller ile verileri yedekleyerek veri kaybını, iş kaybını ve zaman kaybını önlemeye çalışıyoruz.
                                                    Ayrıca bilgisayardaki sorunları önceden tespit ederek büyük maliyetin önüne geçiyoruz.
                                                    Notebook ve desktop bakım hizmeti için arayınız.


                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.panel -->

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">

                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse3b">CAMERA KURULUM VE NETWORK  HİZMETLERİ
                                         
                                            
                                        </a>

                                    </h4>
                                </div>
                                <div id="collapse3b" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <img src="img/network-camera.png" style="border: 1px solid powderblue;" alt="" class="img-responsive" />
                                            </div>
                                            <div class="col-md-8" style="text-align:justify">
                                                <p>
                                                    İş yeri ofis, ev, üniversite, sağlık kuruluşları dahil tüm alanlarda network kurulumunu ve arıza tespitini yaparak çözümler sunuyoruz.PC'yi ağa dahil etme ve ağdan çıkarma,
                                          Domain yapısı, wifi ve yazıcı yapısı, camera kurulumları, camera kayıtları, camera ile ilgili problemlerde iletişime geçiniz.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.panel -->

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">

                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse3c">VERİ KURTARMA,YEDEKLEME VE VİRÜS TEMİZLEME HİZMETLERİ

                                        </a>

                                    </h4>
                                </div>
                                <div id="collapse3c" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <img src="img/veri-kurtarma.png" style="border: 1px solid powderblue;" alt="" class="img-responsive">
                                            </div>
                                            <div class="col-md-8"  style="text-align:justify" >
                                                <p  >
                                                    Bilgileriniz bir yatırımdır, onları korumalı ve kaybetmemek için bazı adımlar atmalısınız.
                                                    Veri kayıplarının 4  sebebi vardır.Bunlar: 
                                                    <ul>
                                                        <li>Donanım Arızaları,</li>
                                                        <li>Yazılım Hataları,</li>
                                                        <li>İnsanlardan Kaynaklanan Olaylar,</li>
                                                        <li>Doğal Afetler,</li>

                                                    </ul>
                                                    Bilgi depolama donanımlarının en kritik parçası sabit disktir.Bilgiler sabit diske kayıt edilir.
                                                    Veri kurtarma, verinin kayıp öncesi hazırlığını  kapsar. Yedekleme, güvenilir kurtarmanın ilk adımıdır. 
                                                    Kayıp yaşanmadan yapılmalıdır.Veri kaybına neden olan  bir virüs varsa acilen tarama yapılmalı fazla 
                                                    kayıp yaşanmadan temizlenmelidir.Zira İşletim sisteminizi çalışmaz hale getirir.
                                                    



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
                            <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
                                <a href="WebTasarim.aspx" style="color: white">Web Tasarım</a>
                            </div>
                        </div>
                        <div class="progress">
                            <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
                                <a href="E-Ticaret.aspx" style="color: white">E-Ticaret</a>
                            </div>
                        </div>
                        <div class="progress">
                            <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
                                <a href="MobilTasarim.aspx" style="color: white">Mobil Tasarım</a>
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

