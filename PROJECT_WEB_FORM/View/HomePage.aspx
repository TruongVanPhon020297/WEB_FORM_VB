<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.vb" Inherits="PROJECT_WEB_FORM._HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li><a runat="server" href="~/">Home</a></li>
                    <li><a runat="server" href="~/About">Cart Info</a></li>
                    <li><a runat="server" href="~/Contact">User Info</a></li>
                </ul>
            </div>
        </div>
    </div>
    <asp:Repeater ID="Repeater2" runat="server" OnItemCommand="Repeater2_ItemCommand">
        <ItemTemplate>
            <div class="col-xs-6 col-md-4" style="margin-bottom: 10px">
                <div class="product tumbnail thumbnail-3">
                    <a href="#">
                        <img src="<%# ResolveUrl("~/Uploads/") + Eval("Image") %>" width="350" height="280" alt=""></a>
                    <div class="caption" style="text-align: center">
                        <h6></h6>
                        <span class="price sale"><%# Eval("ProductName") %></span>
                        <div class="form-inline my-2 my-lg-0" style="margin-bottom: 20px; margin-top: 10px">
                            <asp:Button ID="btnAddToCart" runat="server" Text="Product Info" CssClass="btn btn-info btn-outline-success my-2 my-sm-0"
                                PostBackUrl='<%# "ProductInfo.aspx?ProductId=" + Eval("id").ToString %>' />
                        </div>
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>

</asp:Content>
