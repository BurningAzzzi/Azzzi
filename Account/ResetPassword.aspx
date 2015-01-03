<%@ page title="" language="C#" masterpagefile="~/Site.master" autoeventwireup="true" inherits="Account_ResetPassword, App_Web_smlygwtm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    <div style="background-image:url(../Images/bg.jpg);">
        <div style="margin:0 auto;width:1020px;padding-top:20px;padding-bottom:20px;background-color:rgba(214, 209, 142, 0.7)">
            <div style="background:white;">
                <div class="AccountTitle">
                    <p>重置密码</p>
                </div>
                <div>
                    <ol style="list-style:none;margin-left:30px;">
                        <li>
                            <asp:Label ID="Label1" runat="server" AssociatedControlID="UserName" style="padding-top: 20px">用户名:</asp:Label>
                            
                            <asp:TextBox runat="server" ID="UserName" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName"
                                CssClass="field-validation-error" ErrorMessage="用户名不能为空。" /><br />
                            <asp:UpdatePanel runat="server" ID="updatePanel">
                                <ContentTemplate>
                                    <asp:Button runat="server" Text="获取验证码" ID="btnGetKey" OnClick="btnGetKey_Click"/>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </li>
                        <li>
                            <asp:Label ID="Label2" runat="server" AssociatedControlID="PhoneKey" style="padding-top: 20px">验证码:</asp:Label>
                            
                            <asp:TextBox runat="server" ID="PhoneKey" />
                        </li>
                    </ol>
                </div>
                <div style="text-align:center;padding-top:20px;">
                    <asp:Button runat="server" Text="完成" ID="btnOK" OnClick="btnOK_Click"/>
                    <asp:Button runat="server" Text="取消" ID="btnCancel" OnClick="btnCancel_Click" ValidationGroup="999"/>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
</asp:Content>

