<%@ page title="购物车 - " language="C#" masterpagefile="~/Site.master" autoeventwireup="true" inherits="ShoppingCart, App_Web_oi3sipj0" %>

<%@ Register Src="Controls/ShoppingCartControl.ascx" TagName="ShoppingCartControl" TagPrefix="TuanStuControl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
<div align="center" style="padding:10px 0;" class="cartPosition">   
    <TuanStuControl:shoppingcartcontrol id="ShoppingCartControl1" runat="server"></TuanStuControl:shoppingcartcontrol>
    <a style="font-size:25px" class="linkCheckOut" href="Default.aspx">继续购物</a>
    <%if(Profile.ShoppingCart.Count > 0 ){ %>
    <asp:Button ID="jiuzhexie" runat="server" Font-Size="15" Text="购买这些" OnClick="jiuzhexie_Click"></asp:Button>
    <asp:Button ID="clear_shoppingcart" runat="server" Font-Size="15" Text="清空购物车" OnClick="clear_shoppingcart_Click"></asp:Button>
    <%} %>
</div>
</asp:Content>

