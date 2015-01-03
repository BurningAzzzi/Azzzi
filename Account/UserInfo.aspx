<%@ page title="个人信息 - " language="C#" masterpagefile="~/Site.master" autoeventwireup="true" inherits="TuanStu.Web.Account_UserInfo, App_Web_smlygwtm" %>

<%@ Register Src="~/Controls/AccountForm.ascx" TagPrefix="TuanStu" TagName="AccountForm" %>


<asp:Content ID="Content1" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    <div style="background-image:url(../Images/bg.jpg);">
        <div style="margin:0 auto;width:1020px;padding-top:20px;padding-bottom:20px;background-color:rgba(214, 209, 142, 0.7)">
            <div style="background:white;">
                <div class="AccountTitle">
                    <p>个人资料</p>                    
                </div>
                <TuanStu:AccountForm runat="server" ID="AccountForm" />                    

                <div style="text-align:center;padding-top:20px;">
                    <asp:Button runat="server" Text="修改密码" ID="Change_Password" OnClick="Change_Password_Click" ValidationGroup="9999"/>
                    <asp:Button runat="server" Text="保存" ID="Save_UserInfo" OnClick="Save_UserInfo_Click"/>
                </div>
            </div>
        </div>
    </div>
</asp:Content>