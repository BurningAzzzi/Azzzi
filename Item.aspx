<%@ page title="商品列表 - " language="C#" masterpagefile="~/Site.master" autoeventwireup="true" inherits="Items, App_Web_oi3sipj0" %>

<%@ Register Src="~/Controls/ItemDetail.ascx" TagPrefix="TuanStu" TagName="ItemDetail" %>
<%@ Register Src="~/Controls/Comment.ascx" TagPrefix="TuanStu" TagName="Comment" %>
<%@ Register Src="~/Controls/ShoppingCart.ascx" TagPrefix="TuanStu" TagName="ShoppingCart" %>





<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
	
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="ItemList_left">
        
    <TuanStu:ItemDetail runat="server" ID="ItemDetail" />
    <TuanStu:Comment runat="server" ID="CommentList" />
    </div>
    <% if (showShoppingCart) { %>
    <div class="ItemList_right">
    <TuanStu:ShoppingCart runat="server" ID="ShoppingCart" />
    </div>
    <%} %>
    <div class="clear-fix"></div>
</asp:Content>

