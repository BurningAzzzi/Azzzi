<%@ page title="" language="C#" masterpagefile="~/Site.master" autoeventwireup="true" inherits="ErrorPage_ErrorOpearate, App_Web_4jo5bspo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <meta http-equiv="refresh" content="5;url=../Default.aspx">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="error_message_div">
        <p>发生错误了！！亲，人家很可怜的，别欺负我哦！O(^_^)O</p>
        <a href="../Default.aspx">5秒后跳转到首页...</a>
    </div>
</asp:Content>

