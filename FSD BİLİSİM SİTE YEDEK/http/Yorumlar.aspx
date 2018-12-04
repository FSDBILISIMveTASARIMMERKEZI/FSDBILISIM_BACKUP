<%@ Page Title="MÜŞTERİLERİMİZİN GERİ DÖNÜT YORUMLARI ÖNEMLİDİR|fsdbilisim.com " Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Yorumlar.aspx.cs" Inherits="Yorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="bar background-pentagon no-mb">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="heading text-center">
                        <h2>Müşteri Yorumları</h2>
                    </div>

                    <p class="lead">Müşterilerimizin geri dönüt yorumlarını her zaman duymak istiyoruz.Müşteri yorumları fsdbilisim.com için son derece önemlidir.</p>


                    <!-- *** TESTIMONIALS CAROUSEL ***
 _________________________________________________________ -->

                    <ul class="owl-carousel testimonials same-height-row">

                        <asp:Repeater ID="rptMusteriYorumları" runat="server" DataSourceID="SqlDataSource1" >


                            <ItemTemplate>


                                <li class="item">
                                    <div class="testimonial same-height-always">
                                        <div class="text">
                                            <p>
                                               <%# Eval("yorum") %>
                                            </p>
                                        </div>
                                        <div class="bottom">
                                            <div class="icon">
                                                <i class="fa fa-quote-left"></i>
                                            </div>
                                            <div class="name-picture">
                                                 <img class="" alt="" src="<%# Eval("resim") %>">
                                                <h5>     <%# Eval("adSoyad") %></h5>
                                                <p><%# Eval("tarih") %></p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>

                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connstr %>" SelectCommand="select *  from yorum"></asp:SqlDataSource>
       
                    </ul>
                    <!-- /.owl-carousel -->

                    <!-- *** TESTIMONIALS CAROUSEL END *** -->
                </div>

            </div>
        </div>
    </section>

</asp:Content>

