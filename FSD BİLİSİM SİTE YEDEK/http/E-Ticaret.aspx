<%@ Page Title="E-TİCARET NEDİR?|İNTERNET ÜZERİNDEN ALIŞ VERİŞ YAPMAK|MOBİL" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="E-Ticaret.aspx.cs" Inherits="E_Ticaret" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div id="heading-breadcrumbs">
        <div class="container">
            <div class="row">
                <div class="col-md-7">
                    <h1>E-TİCARET</h1>
                </div>
                <div class="col-md-5">
                    <ul class="breadcrumb">
                        <li><a href="Default.html">Anasayfa</a>
                        </li>
                        <li>E-TİCARET</li>
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
                            <h2>E-TİCARET NEDİR?</h2>
                        </div>

                        <p class="lead" style="text-align:justify;text-indent:30px">
                           E-Ticaret internet ortamında insanların belirli sistemler üzerinde gerçek ya da sanal ürünleri para karşılığında satın alması işlemidir.
                            E-ticaret, ticaretin elektronik versiyonudur diyebiliriz.
                            E-Ticaret, firmaların müşterilerine bilgi sunabileceği 7/24 açık bir şubesidir.İnternet üzerindeki alış verişte veriler saniyeler içinde aktarıldığından 
                            zamandan tasarruf sağlanır.Hem müşteriler hem de firmalar açısından maddi yükler azaltılır.Firmalar enflasyon nedeniyle zarar görmezler, tedariklerini 
                            internet üzerinden yapabilirler.Bu kolaylıkta firmalar için büyük bir avantaj sağlamış olur.
                        </p>
                    </div>
                </div>

                <div class="row portfolio">


                    <asp:Repeater ID="rptUrunler" runat="server" > 

                        <ItemTemplate>
                            <div class="col-sm-6" style=" border: 1px solid powderblue;">
                                <div class="box-image">
                                    <div class="image" style="height:500px">
                                    <%--    <img src='<%# Eval("resim") %>' alt="responsive web tasarım, mobil tasarım, e ticaret" title="Web tasarım" class="img-responsive">--%>



                                        
                                          <a href="Detay.aspx?id=<%# Eval("id") %>">
                                            <asp:Image ID="Image1" Width="100%" ImageUrl='<%#DataBinder.Eval(Container.DataItem,"resim") %>' class="img-responsive" AlternateText='<%#DataBinder.Eval(Container.DataItem,"urunAdi") %>' runat="server" />
                                        </a>
                                    </div>
                                    <div class="bg"></div>
                                    <div class="name" >
                                        <h3 style="font-size:xx-large"><a href="Detay.aspx?id='<%# Eval("id") %>'" title="Web tasarım"+<%# Eval("urunAdi") %>><%# Eval("urunAdi") %></a></h3>
                                    </div>
                                    <div class="text">
                                        <p class="hidden-sm" style="font-size:x-large"><%# Eval("detay") %></p>
                                        <p class="buttons">
                                            <a href="Detay.aspx?id=<%# Eval("id") %>" class="btn btn-template-transparent-primary">Detay</a>
                                            <a href="<%# Eval("demoUrl") %>" class="btn btn-template-transparent-primary" target="_blank">Demo</a>
                                        </p>
                                    </div>
                                </div>
                                <!-- /.box-image -->

                            </div>


                        </ItemTemplate>
                    </asp:Repeater>
                    <asp:SqlDataSource  runat="server"   ConnectionString="<%$ ConnectionStrings:connstr %>" SelectCommand="select * from urunler where kategoriId=4"></asp:SqlDataSource>
                   
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

        </div>
   
        


                                        
   
    </div>
    
</asp:Content>

