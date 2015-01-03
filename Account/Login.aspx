<%@ page title="登录 - " language="C#" masterpagefile="~/Site.Master" autoeventwireup="true" inherits="Account_Login, App_Web_3ife41pr" %>
<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>
<asp:Content runat="server" ContentPlaceHolderID="HeadContent">
    <script type="text/javascript">
        $(document).keydown(function (e) {
            var key = (e.keyCode ? e.keyCode : e.charCode);
            //alert(key);
            if (key == 13) {

                $("#Login").click();
                return false;
            }
        });
    </script>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="FeaturedContent">
    <div style="background-image:url(../Images/bg.jpg);">
        <div style="margin:0 auto;width:1020px;padding-top:20px;padding-bottom:20px;background-color:rgba(214, 209, 142, 0.7)">
            <div style="background:white;height:384px;">
    <div class="AccountTitle">
        <p>登 录</p>
        <span style="font-size:18px;padding-top:5px;">亲,现在也可以用手机号或者电子邮箱登陆了</span>
    </div>
    <section id="loginForm">
        <asp:Login ID="LoginControl" runat="server" ViewStateMode="Disabled" RenderOuterTable="false" FailureText="用户名或密码错误" OnAuthenticate="LoginControl_Authenticate">
            <LayoutTemplate>
                
                    <p class="validation-summary-errors" style="padding-left:50px;">
                        <asp:Literal runat="server" ID="FailureText" />
                    </p>
                    <ol style="list-style:none;margin-left: 20px;
margin-top: 20px;">
                        <li>
                            <asp:Label runat="server" AssociatedControlID="UserName">用户名</asp:Label>
                            <asp:TextBox runat="server" ID="UserName" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" CssClass="field-validation-error" ErrorMessage="用户名字段是必填字段。" />
                        </li>
                        <li>
                            <asp:Label runat="server" AssociatedControlID="Password">密码</asp:Label>
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="field-validation-error" ErrorMessage="密码字段是必填字段。" />
                        </li>
                        <li style="text-align:right;width:310px">
                            <asp:CheckBox runat="server" ID="RememberMe" />
                            <asp:Label runat="server" AssociatedControlID="RememberMe" CssClass="checkbox">记住我?</asp:Label>
                            <asp:LinkButton runat="server" Text="忘记密码" OnClick ="ForgetPwd_Click" ValidationGroup="999"></asp:LinkButton>
                        </li>
                    </ol>
                    <div style="padding-left:60px;">
                        <asp:Button runat="server" ClientIDMode="Static" ID="Login" CommandName="Login" Text="登录" />
                    </div>
            </LayoutTemplate>
        </asp:Login>
        <p style="margin-left:62px;">
            <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled"><font style="color:orange;font-size:20px">注册</font></asp:HyperLink>
            如果你没有帐户。
        </p>
    </section>

    <section id="socialLoginForm" style="display:none;">
        <h2>使用其他服务登录。</h2>
        <uc:OpenAuthProviders runat="server" ID="OpenAuthLogin" />
    </section>
    </div>
            </div>
        </div>
</asp:Content>