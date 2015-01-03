<%@ page title="" language="C#" masterpagefile="~/CommonInterface/CommonInterface.master" autoeventwireup="true" inherits="CommonInterface_Orders, App_Web_rzv2xkl2" %>
<%@ Register Src="~/Controls/OrderDisplay.ascx" TagPrefix="TuanStu" TagName="OrderDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ManageContent" Runat="Server">
    <div style="padding-top:20px;padding-left:20px;">
        <div style="margin:0px;"><a href="GetOrdersInExcel.aspx" target="_parent" >点击获取所有订单的Excel</a></div>
        <div style="margin:0px;">
            <fieldset class="any_item_wrapper manage_wrapper">
                <legend>按时间截单</legend>
                <asp:Label runat="server" Text="时间"></asp:Label>
                <asp:DropDownList ID="dropListDeadLine" runat="server" AutoPostBack="True">
                    <asp:ListItem Value="9:30:00">上午9:30</asp:ListItem>
                    <asp:ListItem Value="16:00:00">下午16:00</asp:ListItem>
                    <asp:ListItem Value="22:00:00">晚上22:00</asp:ListItem>
                </asp:DropDownList>
                <asp:Button runat="server" Text="截单" OnClick="DeadLine_Click" />
                <asp:Button ID="btnReadyPrint" runat="server" Text="查看待打印订单" OnClick="btnReadyPrint_Click" />
            </fieldset>
        </div>
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

