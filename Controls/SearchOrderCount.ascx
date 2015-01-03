<%@ control language="C#" autoeventwireup="true" inherits="TuanStu.Controls_SearchOrderCount, App_Web_ubffupp5" %>
<div>
    <fieldset style="height:200px;">
        <legend>根据ID查找交易数</legend>
        <asp:UpdatePanel runat="server">
            <ContentTemplate>
                <div>
                    地区：<asp:DropDownList runat="server" ID="AreaIdDropDownList" AutoPostBack="true" OnSelectedIndexChanged="AreaIdDropDownList_SelectedIndexChanged">
                    </asp:DropDownList>
                    商店名称：
                <asp:DropDownList runat="server" ID="ShopNameDropDownList">
                </asp:DropDownList><asp:Button ID="Button1" Text="查找" OnClick="Button1_Click" runat="server" /><br />
                    <asp:Label ID="Label2" runat="server" Text="当日交易数：" /><asp:Label runat="server" ID="SearchTodayOrderCount" /><br />
                    <asp:Label ID="Label3" runat="server" Text="本月交易数：" /><asp:Label runat="server" ID="SearchMonthOrderCount" /><br />
                    <asp:Label ID="Label4" runat="server" Text="总交易数：" /><asp:Label runat="server" ID="SearchOrderCount" /><br />
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </fieldset>
</div>
