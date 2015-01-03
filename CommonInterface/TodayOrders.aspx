<%@ page title="" language="C#" masterpagefile="~/CommonInterface/CommonInterface.master" autoeventwireup="true" inherits="CommonInterface_TodayOrders, App_Web_rzv2xkl2" %>
<%@ Register Src="~/Controls/OrderDisplay.ascx" TagPrefix="TuanStu" TagName="OrderDisplay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ManageContent" Runat="Server">
    <div style="padding-top:20px;padding-left:20px;">
        <asp:Button runat="server" ID="DeadLineOver" Text="截单完成" OnClick="DeadLineOver_Click" />
        <asp:Button runat="server" ID="btnDelete" Text="作废" OnClick="btnDelete_Click" />
        <asp:Button runat="server" ID="Back" Text="返回" OnClick="Back_Click" />
        <div class="clear-fix"></div>
        <asp:Repeater runat="server" ID="OrdersRepeater" OnItemDataBound="OrdersRepeater_ItemDataBound">
            <ItemTemplate>
                <TuanStu:OrderDisplay runat="server" ID="OrderDisplay" />
            </ItemTemplate>
        </asp:Repeater>    
    </div>
</asp:Content>

