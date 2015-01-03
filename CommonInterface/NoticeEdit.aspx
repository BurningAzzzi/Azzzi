<%@ page title="" language="C#" masterpagefile="~/CommonInterface/CommonInterface.master" autoeventwireup="true" inherits="CommonInterface_NoticeEdit, App_Web_rzv2xkl2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ManageContent" Runat="Server">
    <div id="manage_body_wrapper">
        <div id="manage_publish_wrapper">
            <fieldset class="any_item_wrapper manage_wrapper">
                <legend>修改公告</legend>
                <asp:Label ID="Label2" runat="server" Text="店家名称："></asp:Label>
                <asp:Label ID="ShopName" runat="server"></asp:Label><br />
                <asp:Label ID="Label8" runat="server" Text="公告详情：" /><br />
                <asp:TextBox ID="NoticeEditTextBox" MaxLength="50" runat="server" TextMode="MultiLine" style="min-width:785px;max-width:785px;min-height:200px;max-height:550px;" />
                <br />
                <asp:Button runat="server" ID="publish_Button" Text="发布" OnClick="publish_Button_Click" />
                <asp:Button runat="server" ID="btnBack" Text="返回" OnClick="btnBack_Click" ValidationGroup="9999"  />
                <asp:Label ID="Result_tip" CssClass="result_tip" runat="server" ForeColor="Red"></asp:Label>
            </fieldset>
        </div>
    </div>
</asp:Content>