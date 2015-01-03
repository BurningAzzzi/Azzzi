<%@ page title="" language="C#" masterpagefile="~/CommonInterface/CommonInterface.master" autoeventwireup="true" inherits="CommonInterface_AdEdit, App_Web_rzv2xkl2" %>

<asp:Content ID="Content5" ContentPlaceHolderID="ManageContent" Runat="Server">
    <div id="manage_body_wrapper">
        <div id="manage_publish_wrapper">
            <fieldset class="any_item_wrapper manage_wrapper">
                <legend>修改活动或者广告信息</legend>
                <asp:Label CssClass="bold" ID="Label2" runat="server" Text="商铺："></asp:Label>
                <asp:Label ID="ShopName" runat="server" /><br />
                <asp:Label CssClass="bold" ID="Label4" runat="server" Text="活动图片："></asp:Label>
                <asp:FileUpload ID="ImgUpload" runat="server" /><br />
                <asp:Image runat="server" ID="AdvertisementImage" Width="550"/><br />
                <asp:Label ID="Label1" CssClass="bold" runat="server" Text="活动截止时间："></asp:Label>
                <div class="AdManage_Calendar">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Always">
                        <ContentTemplate>
                            <asp:Calendar runat="server" ID="CalendarEndDate"></asp:Calendar>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
                <asp:Label CssClass="bold" ID="Label3" runat="server" Text="详细内容："></asp:Label><br />
                <asp:TextBox TextMode="MultiLine" style="min-width:785px;max-width:785px;min-height:200px;max-height:550px;" ID="Detail_Box" EnableViewState="true" runat="server" Rows="5"></asp:TextBox>
                <br />
                <asp:Label ID="Result_tip" CssClass="result_tip" runat="server"></asp:Label>
            </fieldset>
            <asp:Button runat="server" ID="publish_Button" Text="发布" OnClick="publish_Button_Click"/>
                <asp:Button runat="server" ID="btnBack" Text="返回" OnClick="btnBack_Click" ValidationGroup="9999"  />
        </div>
    </div>
</asp:Content>


