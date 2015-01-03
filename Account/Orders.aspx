<%@ page title="购物记录 - " language="C#" masterpagefile="~/Site.master" autoeventwireup="true" inherits="Orders, App_Web_smlygwtm" %>

<%@ Register Src="~/Controls/OrderDisplay.ascx" TagPrefix="TuanStu" TagName="OrderDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <div>
        <asp:Repeater runat="server" ID="OrdersRepeater" OnItemDataBound="OrdersRepeater_ItemDataBound">
            <ItemTemplate>
                <TuanStu:OrderDisplay runat="server" ID="OrderDisplay" />
            </ItemTemplate>
        </asp:Repeater>
        <div class="clear-fix"></div>
        <div class="pagging">
            <asp:Label ID="Label1" CssClass="page_label" runat="server" Text="当前页：" />
            <asp:Label CssClass="page_label" runat="server" ID="CurrentPage" Text="1" />
            <asp:LinkButton CssClass="page_navigation" runat="server" ID="PreviewButton" OnClick="PreviewButton_Click" Text="上一页" />
            <asp:LinkButton CssClass="page_navigation" runat="server" ID="NextButton" OnClick="NextButton_Click" Text="下一页" />
            <asp:Label ID="Label2" CssClass="page_label" runat="server" Text="共" />
            <asp:Label CssClass="page_label" runat="server" ID="PageCount" />
            <asp:Label ID="Label3" CssClass="page_label" style="margin-right:10px;" runat="server" Text="页" />
        </div>
    </div>
</asp:Content>

