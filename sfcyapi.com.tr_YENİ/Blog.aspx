<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Blog.aspx.cs" Inherits="Blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row">

            <div class="col-md-12">
                <ul class="breadcrumb">
                    <li>
                        <a href="Default.aspx"><asp:Label ID="Label3" runat="server" Text="<%$ Resources:anasayfa%>"></asp:Label></a>
                    </li>
                    <li style="font-size: 15px; color: #005C7B;"><asp:Label ID="Label1" runat="server" Text="<%$ Resources:blog%>"></asp:Label></li>
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
                                <h2 class="heading"><asp:Label ID="Label2" runat="server" Text="<%$ Resources:blog2%>"></asp:Label></h2>
                            </div>


                        </section>
                    </div>
                </div>

            </section>

            <section>

                <div class="row">

                    <div class="col-md-12">
                        <h2><asp:Label ID="Label4" runat="server" Text="<%$ Resources:ad%>"></asp:Label> </h2>
                        <div class="clearfix">
                            <p class="date-comments" style="color: #bfbfbf;">
                                <i class="fa fa-calendar-o"></i><i>22.2.2016 16:33:31</i>
                            </p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="image" style="border: 1px solid powderblue; height: 290px;">
                            <a href="assets/img/blog/BLOG-1.jpg">
                                <img id="Img1" class="img-responsive" alt="E-TİCARET" src="assets/img/blog/BLOG-1.jpg" style="width: 100%; height: 100%;">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <p class="intro" style="text-align: justify; padding-top: 10px; text-indent: 35px; font-size: 16px;">
                            <asp:Label ID="Label5" runat="server" Text="<%$ Resources:mtn%>"></asp:Label>
                        </p>

                    </div>
                </div>
            </section>


        </div>

    </div>
</asp:Content>

