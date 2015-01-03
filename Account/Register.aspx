<%@ page title="注册 - " language="C#" masterpagefile="~/Site.Master" autoeventwireup="true" inherits="Account_Register, App_Web_smlygwtm" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="FeaturedContent">
    <script type="text/javascript">
        $(function () {
            $.get("../Content/Document/document-register.txt", function (data, status) {
                $("#beforeRegisterRuleDetail").text(data);
            }
            );
        });
        $(document).keydown(function (e) {
            var key = (e.keyCode ? e.keyCode : e.charCode);
            if (key == 13) {
                $("#REGISTERID").click();
                return false;
            }
        });
    </script>
    <div style="background-image:url(../Images/bg.jpg);">
        <div style="margin:0 auto;width:1020px;padding-top:20px;padding-bottom:20px;background-color:rgba(214, 209, 142, 0.7)">
            <div style="background:white;height:570px;">
    <asp:CreateUserWizard runat="server" ID="RegisterUser" ViewStateMode="Disabled" OnCreatedUser="RegisterUser_CreatedUser" CompleteSuccessText="注册成功!欢迎加入阿谁网!" StartNextButtonText="我同意，下一步" StepNextButtonText="我同意，下一步">
        <LayoutTemplate>
            <asp:PlaceHolder runat="server" ID="wizardStepPlaceholder" />
            <asp:PlaceHolder runat="server" ID="navigationPlaceholder" />
        </LayoutTemplate>
        <WizardSteps>
            <asp:WizardStep runat="server" StepType="Start">
                <div style="text-align:center">
                    <p style="line-height: 20px;font-size: 25px;padding-top: 20px;">网站服务条例</p>
                </div>
                <div style="margin:0px auto;width:700px;padding:10px;">
                    <textarea id ="beforeRegisterRuleDetail" style="max-height:330px;max-width:700px;min-height:330px;min-width:700px;"></textarea>
                    <p style="font-size:18px;line-height: 18px;padding: 0;margin: 0;">请仔细阅读并遵守以上条款,同意后请点击下一步!</p>
                </div>
            </asp:WizardStep>
            <asp:CreateUserWizardStep runat="server" ID="RegisterUserWizardStep">
                <ContentTemplate>
                    <div style="background:white;float:left;width:500px">
                    <p class="validation-summary-errors">
                        <asp:Literal runat="server" ID="ErrorMessage" />
                    </p>
                        <div class="AccountTitle">
                            <p>注 册</p>
                            <label style="padding-top: 10px">(填写用户名、密码及邮箱来创建新帐户)</label>
                        </div>
                        <ol style="list-style:none;margin-left:30px;">
                            <li>
                                <asp:Label runat="server" AssociatedControlID="UserName" style="padding-top: 20px">用户名</asp:Label>
                                <asp:RegularExpressionValidator ValidationExpression="^[a-zA-Z0-9][a-zA-Z0-9_]{4,14}$" ID="RegularExpressionValidator3" runat="server" ControlToValidate="UserName"
                                    CssClass="field-validation-error" ErrorMessage="用户名必须为长度在5~15位之间的数字或字母。" Display="Dynamic" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName"
                                    CssClass="field-validation-error" ErrorMessage="用户名不能为空。" /><br />
                                <asp:TextBox runat="server" ID="UserName" />
                                
                            </li>
                            <li>
                                <asp:Label runat="server" AssociatedControlID="Email">电子邮件地址</asp:Label>
                                <asp:RegularExpressionValidator ValidationExpression="^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$" ID="RequiredFieldValidator5" runat="server" ControlToValidate="Email"
                                    CssClass="field-validation-error" ErrorMessage="电子邮件格式不正确。" Display="Dynamic" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Email"
                                    CssClass="field-validation-error" ErrorMessage="电子邮件不能为空。" /><br />
                                <asp:TextBox runat="server" ID="Email" />
                            </li>
                            <li>
                                <asp:Label runat="server" AssociatedControlID="Password">密码(至少6位)</asp:Label>
                                <asp:RegularExpressionValidator ValidationExpression="^[\w\W]{6,}$" ID="RegularExpressionValidator1" runat="server" ControlToValidate="Password"
                                    CssClass="field-validation-error" ErrorMessage="密码至少6位。" Display="Dynamic" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Password"
                                    CssClass="field-validation-error" ErrorMessage="密码不能为空。" /><br />
                                <asp:TextBox runat="server" ID="Password" TextMode="Password" />
                            </li>
                            <li>
                                <asp:Label runat="server" AssociatedControlID="ConfirmPassword">确认密码</asp:Label>
                                <asp:RegularExpressionValidator ValidationExpression="^[\w\W]{6,}$" ID="RegularExpressionValidator2" runat="server" ControlToValidate="ConfirmPassword"
                                    CssClass="field-validation-error" ErrorMessage="密码至少6位。" Display="Dynamic" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ConfirmPassword"
                                    CssClass="field-validation-error" Display="Dynamic" ErrorMessage="“确认密码”不能为空。" />
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                                    CssClass="field-validation-error" Display="Dynamic" ErrorMessage="密码和确认密码不匹配。" /><br />
                                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" />

                            </li>
                        </ol>
                        <div style="margin-left:70px;">
                        <asp:Button runat="server" CommandName="MoveNext" Text="注册" ClientIDMode="Static" ID="REGISTERID" />
                    </div>
                        </div>
                    <div style="float:right;width:500px;">
                        <div style="padding-top:100px;">
                            <img height="320" width="340"/>
                        </div>

                    </div>
                    <div class="clear-fix"></div>
                </ContentTemplate>
                <CustomNavigationTemplate />
            </asp:CreateUserWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>
        </div>
        </div>
        </div>
</asp:Content>
