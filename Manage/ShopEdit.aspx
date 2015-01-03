<%@ page language="C#" masterpagefile="~/Manage/ManageMasterPage.master" autoeventwireup="true" inherits="Manage_ShopEdit, App_Web_qfhcndae" %>

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
                <legend>修改商铺</legend>
                <asp:Label ID="Label1"  runat="server" Text="地区"></asp:Label>
                <asp:Label ID="AreaLabel" runat="server" /><br />
                <asp:Label ID="Label2" runat="server" Text="服务范围"></asp:Label>
                <asp:CheckBoxList runat="server" ID="SchoolsCheckBoxList" />
                <asp:Label ID="Label3" runat="server" Text="店名"></asp:Label>
                <asp:TextBox ID="shop_name_box" runat="server"></asp:TextBox><br />
                <asp:Label ID="Label4" runat="server" Text="描述"></asp:Label>
                <asp:TextBox ID="shop_info_box" runat="server"></asp:TextBox><br />
                <asp:Label ID="Label5" runat="server" Text="电话"></asp:Label>
                <asp:TextBox ID="shop_phone_box" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="shop_phone_box" ValidationExpression="\d{6,13}" Display="Dynamic" EnableClientScript="true" ErrorMessage="手机号码格式：8-13位数字" /><br />
                <asp:Label ID="Label6" runat="server" Text="地址"></asp:Label>
                <asp:TextBox ID="shop_address_box" runat="server"></asp:TextBox><br />
                <asp:Label ID="Label8" runat="server" Text="店铺LOGO:"></asp:Label>
                <asp:FileUpload ID="ImgUpload" runat="server" /><br />
                <asp:Image runat="server" ID="ShopImg" Width="500px" /><br />
                <asp:Label ID="Label7" runat="server" Text="优惠券:"></asp:Label>
                <asp:FileUpload ID="CouponUpload" runat="server" /><br />
                <asp:Image runat="server" ID="CouponImg" Width="250px" /><br />
                <br />
                <asp:Button runat="server" ID="publish_Button" Text="修改" OnClick="publish_Button_Click"/>
                
            </fieldset>
        </div>
    </div>
</asp:Content>