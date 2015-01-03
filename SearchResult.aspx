<%@ page title="搜索结果 - " language="C#" masterpagefile="~/Site.master" autoeventwireup="true" inherits="SearchResult, App_Web_oi3sipj0" %>

<%@ Register Src="~/Controls/ItemsDisplay.ascx" TagPrefix="TuanStu" TagName="ItemsDisplay" %>
<%@ Register Src="~/Controls/ShopsDisplay.ascx" TagPrefix="TuanStu" TagName="ShopsDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="item_list_wrapper">
        <div>
            <TuanStu:ItemsDisplay runat="server" ID="ItemsDisplay" />
        </div>
        <div>
            <TuanStu:ShopsDisplay runat="server" ID="ShopsDisplay" />
        </div>
        <div class="clear-fix"></div>
    </div>
</asp:Content>

