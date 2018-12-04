<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <meta name="viewport" content="initial-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="msapplication-tap-highlight" content="no" />

    <link rel="icon" type="image/png" href="assets/img/FSD-BİLİŞİM-TASARIM_16.png" />
    <link rel="icon" type="image/png" href="assets/img/FSD-BİLİŞİM-TASARIM_16.png" />

    <title>ANKARA FSD BİLİŞİM ve TASARIM MERKEZİ »WEB TASARIM »E-TİCARET»SEO</title>

    <link rel="stylesheet" href="assets/skins/dropify/css/dropify.css" />
    <link rel="stylesheet" href="bower_components/uikit/css/uikit.almost-flat.min.css" media="all" />
    <link rel="stylesheet" href="assets/icons/flags/flags.min.css" media="all" />
    <link rel="stylesheet" href="assets/css/main.min.css" media="all" />
    <link rel="stylesheet" href="assets/css/themes/themes_combined.min.css" media="all" />









    <!-- google web fonts -->
    <script>
        WebFontConfig = {
            google: {
                families: [
                    'Source+Code+Pro:400,700:latin',
                    'Roboto:400,300,500,700,400italic:latin'
                ]
            }
        };
        (function () {
            var wf = document.createElement('script');
            wf.src = ('https:' == document.location.protocol ? 'https' : 'http') +
            '://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js';
            wf.type = 'text/javascript';
            wf.async = 'true';
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(wf, s);
        })();
    </script>

   
    <script src="assets/js/common.min.js"></script>




    

   
</head>
<body class="login_page" style="padding-top: 0px;">
    <form id="form1" runat="server">
        <div class="login_page_wrapper">
            <div class="md-card" id="login_card">
                <div class="md-card-content large-padding" id="login_form">
                    <div class="login_heading">
                        <img src="../img/LOGİN.png" / style="margin-left: 300px;">
                    </div>

                    <div  class="uk-width-medium-1-2" style="margin-left: 300px;">
                        <label for="login_username">Kullanıcı Adı</label>
                        <asp:TextBox ID="txtYONETICI_ADI" runat="server" class="md-input"></asp:TextBox>
                    </div>

                    <div class="uk-width-medium-1-2" style="margin-left: 300px;margin-top: 20px;">
                        <label for="login_password">Şifre</label>
                        <asp:TextBox ID="txtSIFRESI" runat="server" TextMode="Password" class="md-input"></asp:TextBox>
                    </div>

                    <div class="uk-width-medium-1-2" style="margin-left: 300px;margin-top: 20px;">
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Giriş" class="md-btn md-btn-primary md-btn-block md-btn-large"/>
                    </div>

                    <div class="uk-margin-top" style="margin-left: 300px;margin-top: 20px;">
                        <asp:Label ID="lblMESAJ" ForeColor="Red" runat="server"></asp:Label>
                    </div>
                    
                </div>
            </div>
        </div>

    <!-- common functions -->
    <script src="assets/js/common.min.js"></script>
    <!-- uikit functions -->
    <script src="assets/js/uikit_custom.min.js"></script>
    <!-- altair core functions -->
    <script src="assets/js/altair_admin_common.min.js"></script>

    <!-- altair login page functions -->
    <script src="assets/js/pages/login.min.js"></script>

    <script>
        // check for theme
        if (typeof (Storage) !== "undefined") {
            var root = document.getElementsByTagName('html')[0],
                theme = localStorage.getItem("altair_theme");
            if (theme == 'app_theme_dark' || root.classList.contains('app_theme_dark')) {
                root.className += ' app_theme_dark';
            }
        }
    </script>


    </form>
</body></html>
