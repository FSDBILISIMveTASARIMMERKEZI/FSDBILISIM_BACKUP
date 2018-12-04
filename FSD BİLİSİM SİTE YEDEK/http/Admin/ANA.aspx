<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ANA.aspx.cs" Inherits="yonetici_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Remove Tap Highlight on Windows Phone IE -->
    <meta name="msapplication-tap-highlight" content="no"/>

    <link rel="icon" type="image/png" href="assets/img/favicon-16x16.png" sizes="16x16">
    <link rel="icon" type="image/png" href="assets/img/favicon-32x32.png" sizes="32x32">

    <title>parcabulmaca</title>

    <link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500' rel='stylesheet' type='text/css'>

    <!-- uikit -->
    <link rel="stylesheet" href="bower_components/uikit/css/uikit.almost-flat.min.css"/>

    <!-- altair admin login page -->
    <link rel="stylesheet" href="assets/css/login_page.min.css" />
	
	
</head>
<body class="login_page">
    <form id="form1" runat="server">
        <div class="login_page_wrapper">
            <div class="md-card" id="login_card">
                <div class="md-card-content large-padding" id="login_form">
                    <div class="login_heading">
                        <img src="../img/Kurumsal.png" />
                    </div>

                    <div class="uk-form-row">
                        <label for="login_username">Kullanıcı Adı</label>
                        <asp:TextBox ID="txtYONETICI_ADI" runat="server" class="md-input"></asp:TextBox>
                    </div>

                    <div class="uk-form-row">
                        <label for="login_password">Şifre</label>
                        <asp:TextBox ID="txtSIFRESI" runat="server" TextMode="Password" class="md-input"></asp:TextBox>
                    </div>

                    <div class="uk-margin-medium-top">
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Giriş" class="md-btn md-btn-primary md-btn-block md-btn-large"/>
                    </div>

                    <div class="uk-margin-top">
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
</body>
</html>
