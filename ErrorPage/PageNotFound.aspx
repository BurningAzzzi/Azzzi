<%@ page title="aa" language="C#" masterpagefile="~/Site.master" autoeventwireup="true" inherits="ErrorPage_PageNotFound, App_Web_4jo5bspo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <meta http-equiv="refresh" content="5;url=../Default.aspx">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="error_message_div">
        <p>找遍全世界都没发现这个页面，不好意思亲  >_< </p>
        <a href="../Default.aspx">5秒后跳转到首页...</a>
    </div>
</asp:Content>

