<%@ page title="修改密码 - " language="C#" masterpagefile="~/Site.master" autoeventwireup="true" inherits="Account_Manage, App_Web_3ife41pr" %>
<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>
<%@ Import Namespace="Microsoft.AspNet.Membership.OpenAuth" %>
<asp:Content ContentPlaceHolderID="FeaturedContent" runat="server">
    <div style="background-image:url(../Images/bg.jpg);">
        <div style="margin:0 auto;width:1020px;padding-top:20px;padding-bottom:20px;background-color:rgba(214, 209, 142, 0.7)">
            <div style="background:white;height:400px;">
    
    <div class="AccountTitle">
        <p>修改密码</p>
    </div>
    <section id="passwordForm"  style="margin-left:40px;">
        <asp:PlaceHolder runat="server" ID="successMessage" Visible="false" ViewStateMode="Disabled">
            <p class="message-success"><%: SuccessMessage %></p>
        </asp:PlaceHolder>

        <p><strong><%: User.Identity.Name %></strong>亲，改完密码记得妥善保管。</p>

        <asp:PlaceHolder runat="server" ID="setPassword" Visible="false">
            <p>
                你没有此站点的本地密码。请添加一个本地
                密码，这样，无需外部登录便可以登录了。
            </p>
            
                <ol style="margin-left:70px;">
                    <li>
                        <asp:Label runat="server" AssociatedControlID="password">密码</asp:Label>
                        <asp:TextBox runat="server" ID="password" TextMode="Password" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="password"
                            CssClass="field-validation-error" ErrorMessage="密码字段是必填字段。"
                            Display="Dynamic" ValidationGroup="SetPassword" />
                        
                        <asp:Label runat="server" ID="newPasswordMessage" CssClass="field-validation-error"
                            AssociatedControlID="password" />
                        
                    </li>
                    <li>
                        <asp:Label runat="server" AssociatedControlID="confirmPassword">确认密码</asp:Label>
                        <asp:TextBox runat="server" ID="confirmPassword" TextMode="Password" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="confirmPassword"
                            CssClass="field-validation-error" Display="Dynamic" ErrorMessage="“确认密码”字段是必填字段。"
                            ValidationGroup="SetPassword" />
                        <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="confirmPassword"
                            CssClass="field-validation-error" Display="Dynamic" ErrorMessage="密码和确认密码不匹配。"
                            ValidationGroup="SetPassword" />
                    </li>
                </ol>
            <div style="margin-left:70px;">
                <asp:Button runat="server" Text="设置密码" ValidationGroup="SetPassword" OnClick="setPassword_Click" />
            </div>
        </asp:PlaceHolder>

        <asp:PlaceHolder runat="server" ID="changePassword" Visible="false">
            <asp:ChangePassword runat="server" CancelDestinationPageUrl="~/" ViewStateMode="Disabled" RenderOuterTable="false" SuccessPageUrl="Manage.aspx?m=ChangePwdSuccess" ChangePasswordFailureText="密码错误或新密码无效。">
                <ChangePasswordTemplate>
                    <p class="validation-summary-errors">
                        <asp:Literal runat="server" ID="FailureText" />
                    </p>
                    
                        <ol style="list-style:none;">
                            <li>
                                <asp:Label runat="server" ID="CurrentPasswordLabel" AssociatedControlID="CurrentPassword">当前密码</asp:Label>
                                <asp:TextBox runat="server" ID="CurrentPassword" CssClass="passwordEntry" TextMode="Password" />
                                <asp:RegularExpressionValidator ValidationExpression="^[\w\W]{6,}$" ID="RegularExpressionValidator3" runat="server" ControlToValidate="CurrentPassword"
                                    CssClass="field-validation-error" ErrorMessage="密码至少6位。" Display="Dynamic" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="CurrentPassword"
                                    CssClass="field-validation-error" ErrorMessage="密码不能为空。" />
                            </li>
                            <li>
                                <asp:Label runat="server" ID="NewPasswordLabel" AssociatedControlID="NewPassword">新密码</asp:Label>
                                <asp:TextBox runat="server" ID="NewPassword" CssClass="passwordEntry" TextMode="Password" />
                                <asp:RegularExpressionValidator ValidationExpression="^[\w\W]{6,}$" ID="RegularExpressionValidator2" runat="server" ControlToValidate="NewPassword"
                                    CssClass="field-validation-error" ErrorMessage="密码至少6位。" Display="Dynamic" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NewPassword"
                                    CssClass="field-validation-error" ErrorMessage="新密码不能为空。" />
                            </li>
                            <li>
                                <asp:Label runat="server" ID="ConfirmNewPasswordLabel" AssociatedControlID="ConfirmNewPassword">确认新密码</asp:Label>
                                <asp:TextBox runat="server" ID="ConfirmNewPassword" CssClass="passwordEntry" TextMode="Password" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmNewPassword"
                                    CssClass="field-validation-error" Display="Dynamic" ErrorMessage="确认新密码不能为空。" />
                                <asp:CompareValidator runat="server" ControlToCompare="NewPassword" ControlToValidate="ConfirmNewPassword"
                                    CssClass="field-validation-error" Display="Dynamic" ErrorMessage="新密码和确认密码不匹配。" />
                            </li>
                        </ol>
                    <div style="margin-left:40px">
                        <asp:Button runat="server" CommandName="ChangePassword" Text="更改密码" />
                        <asp:Button runat="server" ID="btnCANCEL" Text="取消" OnClientClick="javascript:history.go(-1);"/>
                   </div>
                </ChangePasswordTemplate>
            </asp:ChangePassword>
        </asp:PlaceHolder>
    </section>

    <section id="externalLoginsForm">
        
        <asp:ListView runat="server" ID="externalLoginsList" Visible="false" ViewStateMode="Disabled"
            DataKeyNames="ProviderName,ProviderUserId" OnItemDeleting="externalLoginsList_ItemDeleting">
        
            <LayoutTemplate>
                <h3>已注册外部登录</h3>
                <table>
                    <thead><tr><th>服务</th><th>用户名</th><th>上次使用</th><th>&nbsp;</th></tr></thead>
                    <tbody>
                        <tr runat="server" id="itemPlaceholder"></tr>
                    </tbody>
                </table>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>
                    
                    <td><%# HttpUtility.HtmlEncode(Item<OpenAuthAccountData>().ProviderDisplayName) %></td>
                    <td><%# HttpUtility.HtmlEncode(Item<OpenAuthAccountData>().ProviderUserName) %></td>
                    <td><%# HttpUtility.HtmlEncode(ConvertToDisplayDateTime(Item<OpenAuthAccountData>().LastUsedUtc)) %></td>
                    <td>
                        <asp:Button runat="server" Text="删除" CommandName="Delete" CausesValidation="false" 
                            ToolTip='<%# "从你的帐户中删除此 " + Item<OpenAuthAccountData>().ProviderDisplayName + " 登录" %>'
                            Visible="<%# CanRemoveExternalLogins %>" />
                    </td>
                    
                </tr>
            </ItemTemplate>
        </asp:ListView>
        <uc:OpenAuthProviders runat="server" ReturnUrl="~/Account/Manage" Visible="false" />
    </section>
                </div></div></div>
</asp:Content>
