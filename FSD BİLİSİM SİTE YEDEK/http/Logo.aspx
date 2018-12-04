<%@ Page Title="LOGO TASARIMI NEDİR? KURUMSAL KİMLİK|İMZA|ÖZGÜN|SEMBOL" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Logo.aspx.cs" Inherits="Logo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div id="heading-breadcrumbs">
        <div class="container">
            <div class="row">
                <div class="col-md-7">
                    <h1>LOGO</h1>
                </div>
                <div class="col-md-5">
                    <ul class="breadcrumb">
                        <li><a href="Default.aspx">Anasayfa</a>
                        </li>
                        <li>LOGO</li>
                    </ul>

                </div>
            </div>
        </div>
    </div>

    <div id="content">
        <div class="container">

            <section>

                <div class="row">
                    <div class="col-md-12">
                        <div class="heading">
                            <h2>LOGO TASARIMI NEDİR? NEDEN ÖNEMLİDİR?</h2>
                        </div>

                        <p class="lead" style="text-align:justify;text-indent:30px">
                            Kurumsal kimlik tasarımında logo, firmaların imzası olarak tanımlanabilen son derece önemli, 
                            diğer firmalardan ayırt edilmesini sağlayan resim ve sembollerin genel adıdır. Logo, firmaların veya şirketlerin vizyonu açısından önem taşımaktadır.
                            Görsellik bakımından en iyisini isteyen şirketler öncelikli olarak logo tasarımı üzerine yoğunlaşmaktadır.
                             Önemli bir logo; sade, özgün, anlaşılır ve hatırda kalabilir olmalıdır.Fazla ayrıntı içermemelidir.
                            Firmanın özelliklerini yansıtmalı, fiRmayı yansıtacak renk ve anlamlar içermelidir.Logoda diğer önemli
                            faktör ise çok çeşitli yazı karakterlerinin kullanılmasıdır.

                            
                            
                            
                        </p>
                    </div>
                </div>

                <div class="row portfolio">


                    <asp:Repeater ID="rptUrunler" runat="server" >

                        <ItemTemplate>

                            <div class="col-sm-4">
                                <div class="box-image" style=" border: 1px solid powderblue; height:350px" >
                                    <div class="image">
                                        <%--   <img src="img/portfolio-1.jpg" alt="" class="img-responsive">--%>

                                        <a href="Detay.aspx?id=<%# Eval("id") %>">
                                            <asp:Image ID="Image1" Width="100%" ImageUrl='<%#DataBinder.Eval(Container.DataItem,"resim") %>' class="img-responsive" AlternateText='<%#DataBinder.Eval(Container.DataItem,"urunAdi") %>' runat="server" />
                                        </a>
                                    </div>
                                    <div class="bg"></div>
                                    <div class="name">
                                        <h3><a href="Detay.aspx?id=<%# Eval("id") %>"><%# Eval("urunAdi") %></a></h3>
                                    </div>
                                    <div class="text">
                                        <p class="hidden-sm"><%# Eval("detay") %></p>
                                        <p class="buttons">
                                            <a href="Detay.aspx?id=<%# Eval("id") %>" class="btn btn-template-transparent-primary">Detay</a>
                                         
                                        </p>
                                    </div>
                                </div>
                                <!-- /.box-image -->

                            </div>

                        </ItemTemplate>
                    </asp:Repeater>

                    <asp:SqlDataSource  runat="server" ConnectionString="<%$ ConnectionStrings:connstr %>" SelectCommand="select * from urunler where kategoriId=3"></asp:SqlDataSource>

                </div>


            </section>
            <div>

                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <ul class="pager">
                        <li class="previous"><asp:HyperLink ID="linkPrev" runat="server"    >&larr; GERİ</asp:HyperLink>
                        </li>
                        <li class="next "><asp:HyperLink ID="linkNext" runat="server"  >İLERİ &rarr;</asp:HyperLink>
                        </li>
                    </ul>
            </div>

        </div>

       <br />

      
    </div>
    
</asp:Content>

