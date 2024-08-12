<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="~/View/Register.aspx.vb" Inherits="PROJECT_WEB_FORM._Register" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <section class="vh-100" style="background-color: #eee;">
        <div class="container h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-lg-12 col-xl-11">
                    <div class="card text-black" style="border-radius: 25px;">
                        <div class="card-body p-md-5">
                            <div class="row justify-content-center">
                                <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">
                                    <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign up</p>

                                    <div class="form-horizontal">

                                        <div class="form-group">
                                            <label class="control-label col-md-2">
                                                Full Name
                                            </label>
                                            <div class="col-md-10">
                                                <asp:TextBox ID="txtFullNameR" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-2">
                                                Password
                                            </label>
                                            <div class="col-md-10">
                                                <asp:TextBox ID="txtPasswordR" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-2">
                                                Email
                                            </label>
                                            <div class="col-md-10">
                                                <asp:TextBox ID="txtEmailR" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-offset-2 col-md-10">
                                                
                                                <asp:Button ID="btnRegisterR"  runat="server" Text="Register" CssClass="btn btn-primary btn-success"/>
                                                <asp:Button ID="btnLoginR"  runat="server" Text="Login" CssClass="btn btn-primary btn-danger"/>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">
                                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp" style="width: 500px; height: auto"
                                        class="img-fluid mw-100 mh-100" alt="Sample image">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
