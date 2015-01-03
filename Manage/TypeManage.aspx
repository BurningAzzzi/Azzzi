<%@ page title="" language="C#" masterpagefile="~/Manage/ManageMasterPage.master" autoeventwireup="true" inherits="Manage_TypeManage, App_Web_qfhcndae" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="TipBarHolder" Runat="Server">
     <div class="tip_bar">
         <asp:Label runat="server"  ID="LabelTip"></asp:Label>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="type_manager_wrapper">
       
        <fieldset>
            <legend>物品分类</legend>
            <asp:RadioButtonList ID="RadioButtonListShopType" runat="server" OnSelectedIndexChanged="RadioButtonListShopType_SelectedIndexChanged" AutoPostBack="true"></asp:RadioButtonList>
            <fieldset>
                <legend>现有分类：</legend>
                <asp:Repeater ID="RepItemType" runat="server">
                <HeaderTemplate>
                    <table>
                        <tr>
                            <th>名称</th>
                            <th>操作</th>
                            <th>&nbsp</th>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><asp:Label ID="Label3" runat="server" Text='<%# Eval("Name") %>' ></asp:Label></td>
                        <td><%--<asp:Button runat="server" Text="修改名称" OnCommand="ButtonControl_Command" CommandArgument='<%# Eval("TypeId") %>' CommandName="EditForItem"/>--%>
                        <asp:Button ID="Button1" runat="server" Text="修改名称" OnCommand="ButtonControl_Command" CommandArgument='<%# Eval("TypeId") %>' CommandName="EditForItem"/></td>
                    </tr>    
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
            </fieldset>
            
            
        </fieldset>
        <fieldset>
                <legend>新增物品分类</legend>
                <asp:Label ID="Label1" runat="server" Text="所属店铺类型："></asp:Label>
                <asp:DropDownList runat="server" ID="DropDownListShopType"></asp:DropDownList>
                <asp:Label ID="Label2" runat="server" Text="名称："></asp:Label>
                <asp:TextBox runat="server" ID="TextBoxItemTypeName"></asp:TextBox><br />
                <asp:Button runat="server" ID="AddButton" Text="新增分类" OnCommand="AddButton_Command" CommandName="addItemType"/>
            </fieldset>
        <%--<fieldset>
            <legend>商铺分类</legend>
            <asp:Label ID="Label1" runat="server" Text="现有分类："></asp:Label><br />
            <asp:Repeater ID="RepShopType" runat="server">
                <HeaderTemplate>
                    <table>
                        <tr>
                            <th>名称</th>
                            <th>操作</th>
                            <th>&nbsp</th>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><asp:Label  runat="server" Text='<%# Eval("TypeName") %>' ></asp:Label></td>
                        <td><%--<asp:Button ID="Button1" Text="修改名称" runat="server" OnCommand="ButtonControl_Command" CommandArgument='<%# Eval("Id") %>' CommandName="EditForShop"/>--%>
                        <%--<asp:Button ID="Button2" Text="删除" runat="server" OnCommand="ButtonControl_Command" CommandArgument='<%# Eval("Id") %>' CommandName="DeleteForShop"/></td>
                    </tr>    
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>--%>
            <%--<fieldset>
                <legend>新增商铺分类</legend>
                <asp:Label ID="Label2" runat="server" Text="名称："></asp:Label>
                <asp:TextBox runat="server" ID="TextBoxShopTypeName"></asp:TextBox><br />
                <asp:Label ID="Label3" runat="server" Text="标识名称："></asp:Label>
                <asp:TextBox runat="server" ID="TextBoxShopFlagName"></asp:TextBox><br />
                <asp:Button runat="server" ID="Button3" Text="新增分类" OnCommand="AddButton_Command" CommandName="addShopType"/>
            </fieldset>--%>
        <%--</fieldset>--%>
    </div>
</asp:Content>

