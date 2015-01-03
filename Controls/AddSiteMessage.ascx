<%@ control language="C#" autoeventwireup="true" inherits="Controls_AddSiteMessage, App_Web_ubffupp5" %>
<asp:HiddenField runat="server" ID="HiddenItemId" />
<asp:LoginView runat="server" ID="LoginViewSiteMessage">
    <AnonymousTemplate>
        <div class="any_item_wrapper comment_list_panel">
            <asp:LoginStatus ID="LoginStatus1" runat="server" LogoutPageUrl="~/Account/Login.aspx" LoginText="登录" Font-Bold="true"/>后才可以评论
        </div>
    </AnonymousTemplate>
    <LoggedInTemplate>
        <div class="sitemessagecontrol_block">
            <div class="sitemessagecontrol_facediv">
                <asp:Image CssClass="sitemessagecontrol_face" runat="server" ID="UserFace" />
            </div>
            <div class="sitemessagecontrol_rightdiv">
                <div class="sitemessagecontrol_userinformation">
                    <span class="sitemessagecontrol_username"><%--<%= Profile.UserName %>--%>
                        <asp:Label runat="server" ID="UserName" />
                    </span>
                </div>
                <div class="sitemessagecontrol_messagecontent">
                    <asp:TextBox TextMode="MultiLine" runat="server" ID="MessageContent" CssClass="addsitemessagetextbox" />
                </div>
                <div class="sitemessageleavemessagebutton">
                    <asp:Button runat="server" ID="Insert" Text="留言" CssClass="sitemessageleavemessage" OnClick="Insert_Click" />
                </div>
            </div>
            <div class="clear"></div>
        </div>
       </LoggedInTemplate>
    </asp:LoginView>