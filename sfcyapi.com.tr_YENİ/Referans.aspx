<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Referans.aspx.cs" Inherits="Blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row">

            <div class="col-md-12">
                <ul class="breadcrumb">
                    <li>
                        <a href="Default.aspx"> <asp:Label ID="Label10" runat="server" Text="<%$ Resources:anasayfa%>"></asp:Label></a>
                    </li>
                    <li style="font-size: 15px; color: #005C7B;"><asp:Label ID="Label1" runat="server" Text="<%$ Resources:referans%>"></asp:Label></li>
                </ul>

            </div>
        </div>
    </div>


    <div id="content">
        <div class="container" id="contact">

            <section>

                <div class="row">
                    <div class="col-md-12">
                        <section>
                            <div class="col-md-7 col-md-offset-5" style="padding-bottom: 20px">
                                <h2 class="heading"><asp:Label ID="Label2" runat="server" Text="<%$ Resources:referans2%>"></asp:Label></h2>
                            </div>

                            
                        </section>
                    </div>
                </div>

            </section>

            <section>

                <div class="row">
                   <asp:Repeater ID="rptreferans" runat="server" >
                                                                    <ItemTemplate>


                    <div class="col-md-12">
                        <h2><%# Eval("ad")%> </h2>
                        
                    </div>
                    <div class="col-md-4">
                        <div class="image" style="border: 1px solid powderblue; ">
                            <a href="<%# Eval("url")%>">
                                <img id="Img1" class="img-responsive" alt="E-TİCARET" src="<%# Eval("url")%>" style="width: 100%; height: 100%;">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <p class="intro" style="text-align: justify; padding-top: 10px; text-indent: 35px; font-size: 16px;">
                            <%# Eval("mtn")%>
                        </p>
                       
                    </div>
                                                                         </ItemTemplate>
                                                                </asp:Repeater>
                    <%--<asp:SqlDataSource ID="Referanslar" runat="server" ConnectionString="<%$ ConnectionStrings:connstr %>" SelectCommand="select *   from SFC_Referans"></asp:SqlDataSource>--%>

                </div>
            </section>

           <%--<section>

                <div class="row">
                   
                    <div class="col-md-12">
                        <h2>TÜRKİYE'DE EN BÜYÜK E-TİCARET SİTELERİ KİMLERDİR? </h2>
                        
                    </div>
                    <div class="col-md-4">
                        <div class="image" style="border: 1px solid powderblue; ">
                            <a href="assets/img/referans_1.jpg">
                                <img id="Img2" class="img-responsive" alt="E-TİCARET" src="assets/img/referans_1.jpg" style="width: 100%; height: 100%;">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <p class="intro" style="text-align: justify; padding-top: 10px; text-indent: 35px; font-size: 16px;">
                            Türkiye'de E-ticaret sektörünün en büyük firmalarından olan gittigidiyor.com 2001 şabat ayında kurulmuştur.E-ticarette 
çalışkan ve azimli firma eBay tarafından satın alınmıştır.Diğer bir E-ticaret firması ise şüphesiz hepsiburada.com olacaktır.
E- ticaret firması hepsiburada.com 1998.Türkiye'de E-ticaret sektörünün en büyük firmalarından olan gittigidiyor.com 2001 şabat ayında kurulmuştur.E-ticarette 
çalışkan ve azimli firma eBay tarafından satın alınmıştır.Diğer bir E-ticaret firması ise şüphesiz hepsiburada.com olacaktır.
E- ticaret firması hepsiburada.com 1998.Türkiye'de E-ticaret sektörünün en büyük firmalarından olan gittigidiyor.com 2001 şabat ayında kurulmuştur.E-ticarette 
çalışkan ve azimli firma eBay tarafından satın alınmıştır.Diğer bir E-ticaret firması ise şüphesiz hepsiburada.com olacaktır.
E- ticaret firması hepsiburada.com 1998.
                        </p>
                       
                    </div>
                </div>
            </section>--%>
        </div>
        
    </div>
</asp:Content>

