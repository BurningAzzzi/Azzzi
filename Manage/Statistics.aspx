<%@ page title="" language="C#" masterpagefile="~/Manage/ManageMasterPage.master" autoeventwireup="true" inherits="Manage_Statistics, App_Web_qfhcndae" %>

<%@ Register Src="~/Controls/SearchOrderCount.ascx" TagPrefix="TuanStu" TagName="SearchOrderCount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TipBarHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div>
        网站用户数量：<asp:Label runat="server" ID="UserCount" />
    </div>
    <div>
        网站商铺数量：<asp:Label runat="server" ID="ShopCount" />
    </div>
    <div>
        网站当日交易数：<asp:Label runat="server" ID="TodayOrderCount" />
    </div>
    <div>
        网站本月交易数：<asp:Label runat="server" ID="MonthOrderCount" />
    </div>
    <div>
        网站总交易数：<asp:Label runat="server" ID="OrderCount" />
    </div>
    <div>
        网站当前在线人数：<asp:Label runat="server" ID="OnlineUserCount" Text="Fuck You" />
    </div>
    <div>
        <a href="http://tongji.baidu.com/web/welcome/login"><font style="color:blue;">进入百度统计</font></a>
        账号：tuanstu  密码：wangbo123456
    </div>
    <div>
        <TuanStu:SearchOrderCount runat="server" ID="SearchOrderCount" />
    </div>
</asp:Content>

