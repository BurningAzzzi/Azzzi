<%@ page title="" language="C#" masterpagefile="~/Manage/ManageMasterPage.master" autoeventwireup="true" inherits="Manage_TypeEdit, App_Web_qfhcndae" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TipBarHolder" Runat="Server">
    <div class="tip_bar">
            <asp:Label runat="server"  ID="LabelTip"></asp:Label>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="manage_body_wrapper">

        <div id="manage_publish_wrapper">
            <fieldset>
                <legend>修改类型信息</legend>
                <asp:Label runat="server" Text="原类型名称："></asp:Label>
                <asp:Label ID="LabelTypeName" runat="server" Text=""></asp:Label><br />
                <asp:TextBox style="width:90%;" ID="Detail_Box" EnableViewState="true" runat="server" ></asp:TextBox><br />
            </fieldset>
            <asp:Button runat="server" ID="publish_Button" Text="修改" OnClick="publish_Button_Click"/>
        </div>
    </div>
</asp:Content>

