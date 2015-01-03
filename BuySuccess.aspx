<%@ page title="" language="C#" masterpagefile="~/Site.master" autoeventwireup="true" inherits="BuySuccess, App_Web_oi3sipj0" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <p style="font-size:25px;">亲,购买成功了!接下来,您可以</p>
<%--    <asp:Button runat="server" ID="BackToShop" OnClick="BackToShop_Click" Text="返回店铺" />
    <asp:Button runat="server" ID="BackToHome" OnClick="BackToHome_Click" Text="返回首页" />
    <asp:Button runat="server" ID="BackToOrders" OnClick="BackToOrders_Click" Text="查看已购订单" />--%>
    <asp:HyperLink runat="server" CssClass="WebButton" Font-Size="Medium" NavigateUrl="~/Default.aspx" Text="返回首页" ></asp:HyperLink>
    <asp:HyperLink ID="backtoshoppage" runat="server" CssClass="WebButton" Font-Size="Medium" NavigateUrl="~/Default.aspx" Text="返回店铺" ></asp:HyperLink>
    <asp:HyperLink runat="server" CssClass="WebButton" Font-Size="Medium" NavigateUrl="~/Account/Orders.aspx" Text="查看已购订单" ></asp:HyperLink>
</asp:Content>

