<%@ page language="C#" masterpagefile="~/Manage/ManageMasterPage.master" viewstatemode="Enabled" inherits="TuanStu.Web.AdEdit, App_Web_qfhcndae" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="TipBarHolder" Runat="Server">
    <div class="tip_bar">
            <asp:Label runat="server"  ID="LabelTip"></asp:Label>
        </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="manage_body_wrapper">

        <div id="manage_publish_wrapper">
            <fieldset>
                <legend>修改活动或者广告信息</legend>
                <asp:Label ID="Label2" runat="server" Text="商铺名称："></asp:Label>
                <asp:Label ID="ShopName" runat="server" /><br />
                <asp:Label ID="Label1" runat="server" Text="优先级："></asp:Label>
                <asp:DropDownList runat="server" ID="DropDownPriority">
                    <asp:ListItem Text="首页顶级广告" Value="10"></asp:ListItem>
                    <asp:ListItem Text="首页广告Lv9" Value="9"></asp:ListItem>
                    <asp:ListItem Text="首页广告Lv8" Value="8"></asp:ListItem>
                    <asp:ListItem Text="首页广告Lv7" Value="7"></asp:ListItem>
                    <asp:ListItem Text="首页广告Lv6" Value="6"></asp:ListItem>
                    <asp:ListItem Text="首页广告Lv5" Value="5"></asp:ListItem>
                    <asp:ListItem Text="店铺广告Lv1" Value="1"></asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:Label ID="Label4" runat="server" Text="活动图片："></asp:Label>
                <asp:FileUpload ID="ImgUpload" runat="server" /><br />
                <asp:Image runat="server" ID="AdvertisementImage" Width="600"/><br />
                <asp:Label ID="Label3" runat="server" Text="详细内容："></asp:Label><br />
                <asp:TextBox TextMode="MultiLine" style="width:90%;" ID="Detail_Box" EnableViewState="true" runat="server" Rows="5"></asp:TextBox><br />
                <asp:Label ID="Result_tip" CssClass="result_tip" runat="server"></asp:Label>
            </fieldset>
            <asp:Button runat="server" ID="publish_Button" Text="发布" OnClick="publish_Button_Click"/>
        </div>
    </div>
</asp:Content>