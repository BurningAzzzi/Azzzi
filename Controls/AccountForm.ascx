<%@ control language="C#" autoeventwireup="true" inherits="TuanStu.Web.Controls_AccountForm, App_Web_ubffupp5" %>

<script type="text/javascript">
    var fileclick = function () {
        return $(".fileupload").click();
    }
    function valuevhange() {
        $('#filevalue').text($('.fileupload').val());
    }
</script>

<div class="userinfo_wrapper">
    <div class="userinfo_wrapper_left float-left">
        <asp:Image runat="server" ID="Image_UserIcon" Width="180" Height="180"/><br />
        <asp:FileUpload runat="server" CssClass="fileupload" style="display:none;" onchange="javascript:valuevhange();" ID="FileUploadUserIcon" />
        <input type="button" value="选择文件" onclick="javascript:return $('.fileupload').click();" />
        <label id="filevalue"></label>
    </div>
    <div class="userinfo_wrapper_right float-right">
        <asp:Label ID="Label1" runat="server" Text="昵称:" AssociatedControlID="TextBox_Name"></asp:Label>
        <asp:TextBox runat="server" ID="TextBox_Name"></asp:TextBox><br />
        <asp:Label ID="Label2" runat="server" Text="性别:" AssociatedControlID="RadioButton_Sex_Male"></asp:Label>
        <asp:RadioButton ID="RadioButton_Sex_Male" CssClass="userinfo-radio-button" runat="server" Text="帅哥"  GroupName="RadioSex" ValidationGroup="9999"/>
        <asp:RadioButton ID="RadioButton_Sex_Female" CssClass="userinfo-radio-button" runat="server" Text="美女" GroupName="RadioSex" ValidationGroup="9999"/><br />
        <div class="clear"></div>
        <asp:Label ID="Label3" runat="server" Text="手机号:" AssociatedControlID="TextBox_Phone"></asp:Label>
        <asp:TextBox runat="server" ID="TextBox_Phone" Enabled="false"></asp:TextBox><asp:Button runat="server" ID="BindPhoneNumber" Text="绑定" OnClick="BindPhoneNumber_Click" ValidationGroup="9999"/>
        <br />
        <asp:Label ID="Label4" runat="server" Text="电子邮件:" AssociatedControlID="TextBox_Email"></asp:Label>
        
        <asp:TextBox runat="server" ID="TextBox_Email"></asp:TextBox>
        <asp:RegularExpressionValidator ValidationExpression="^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$" ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox_Email"
                                    CssClass="field-validation-error" ErrorMessage="电子邮件格式不正确。" Display="Dynamic" /><br />
        <asp:Label ID="Label8" runat="server" Text="所在区域:" AssociatedControlID="LabelSchool"></asp:Label>
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate>
            <asp:Panel runat="server" ID="mySchool" Visible="false">
                <span class="myschooldiv">
                    <asp:TextBox ID="LabelSchool" runat="server" Enabled="false" Text=""></asp:TextBox>
                    <asp:Button ID="ChangeSchoolButton" runat="server" Text="修改" OnClick="ChangeSchoolButton_Click" ValidationGroup="9999"/><br />
                </span>
            </asp:Panel>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
            <asp:Panel ID="selectSchool" runat="server" Visible ="true" CssClass="userinfo_selectschool">
                <div class="float-left" style="margin-right:30px;">
                    <asp:Label ID="Label5" runat="server" Text="校区:" AssociatedControlID="DropList_Area"></asp:Label>
                    <asp:DropDownList runat="server" ID="DropList_Area" AutoPostBack="True" OnSelectedIndexChanged="DropList_Area_SelectedIndexChanged"></asp:DropDownList><br />
                </div>
                <div class="float-left">
                    <asp:Label ID="Label6" runat="server" Text="学校:" AssociatedControlID="DropList_School"></asp:Label>
                    <asp:DropDownList runat="server" ID="DropList_School" OnSelectedIndexChanged="DropList_School_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList><br />
                </div>
                <div class="clear"></div>
            </asp:Panel>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:Label ID="Label7" runat="server" Text="详细地址：" AssociatedControlID="TextBox_Addr_Detail"></asp:Label>
        <asp:TextBox runat="server" ID="TextBox_Addr_Detail"></asp:TextBox><br />
    </div>
    <div class="clear"></div>
</div>
