<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SalesPerformanceUI.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    


<link href="/vendor/fontawesome-free/css/all.css" rel="stylesheet" type="text/css" />
<link href="/vendor/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="/css/ruang-admin.css" rel="stylesheet" />
<script src="/vendor/jquery/jquery.min.js"></script>
<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/vendor/jquery-easing/jquery.easing.min.js"></script>
<script src="/js/ruang-admin.js"></script>



<div class="o-hidden">
    <section class="fxt-template-animation fxt-template-layout22" data-bg-image="~/img/bg-image-16.jpg">
        <!-- Star Animation Start Here -->
        <div class="star-animation d-none">
            <div id="stars1"></div>
            <div id="stars2"></div>
            <div id="stars3"></div>
            <div id="stars4"></div>
            <div id="stars5"></div>
        </div>
        <!-- Star Animation End Here -->
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-7 col-12 fxt-none-991">
                    <div class="fxt-header">
                        <div class="fxt-transformY-50 fxt-transition-delay-1 d-none">
                            <a href="#" class="fxt-logo"><img src="/img/logoalmadina.png" alt="Logo"></a>
                        </div>
                        <div class="fxt-transformY-50 fxt-transition-delay-2">
                            <h1 class="logo">Sales<span class="logo-sub">Net</span></h1>
                        </div>
                        <div class="fxt-transformY-50 fxt-transition-delay-3">
                            <h3 class="logo-moto">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Policy Management</h3>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5 col-12 fxt-bg-color">
                    <div class="fxt-content">
                        <div class="fxt-form">
                            <h2>Login</h2>
                            <p>Login into your pages account</p>
<form action="/Home/LoginMotor" method="get">                                <div class="form-group">
                                   

                                </div>
                                <div class="form-group">
                                    <label for="username" class="input-label">Username</label>
                                    <input type="text" class="form-control" name="UserName" placeholder="demouser" required="required">
                                </div>
                                <div class="form-group">
                                    <label for="password" class="input-label">Password</label>
                                    <input type="password" class="form-control" name="Password" placeholder="********" required="required">
                                    <i toggle="#password" class="fa fa-fw fa-eye toggle-password field-icon"></i>
                                </div>
                                <div class="form-group">
                                    <div class="fxt-checkbox-area">
                                        <div class="checkbox">
                                            <input id="checkbox1" type="checkbox">
                                            <label for="checkbox1">Keep me logged in</label>
                                        </div>
                                        
                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:Button ID="Button1" runat="server" CssClass="fxt-btn-fill" Text="Login" OnClick="Button1_Click" />
                        
                                    </div>
</form>                        </div>
                        <p class="text-center text-danger"></p>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>




</asp:Content>
