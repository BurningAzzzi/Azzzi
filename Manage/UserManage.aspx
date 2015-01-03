<%@ page title="" language="C#" masterpagefile="~/Manage/ManageMasterPage.master" autoeventwireup="true" inherits="Manage_UserManage, App_Web_qfhcndae" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="TipBarHolder" Runat="Server">
    <div class="tip_bar">
            <asp:Label runat="server"  ID="LabelTip"></asp:Label>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="user_control">
        
        <div class="float-left user_control_left">
        <fieldset>
            <legend>角色管理</legend>
            <asp:Label ID="Label2" runat="server" Text="角色："></asp:Label><br />
            <asp:ListBox ID="RolesListBox" Width="180px" runat="server" Rows="4" CssClass="roles_list_box" AutoPostBack="true" /><br />
                <asp:TextBox runat="server" ID="BoxRoleName" Width="100"></asp:TextBox>
                <asp:Button runat="server" ID="ButtonAddRole" Text="新增" OnClick="ButtonAddRole_Click" /><br /><br />
                <asp:Button runat="server" ID="ButtonRemoveRole" Text="删除角色" OnClick="ButtonRemoveRole_Click" /><br /><br />
            <asp:Label ID="Label3" runat="server" Text="角色中的用户："></asp:Label>
            <asp:GridView runat="server" CellPadding="4" CssClass="user_in_roles_gridview" ID="UsersInRoleGrid" AutoGenerateColumns="False"
            GridLines="Horizontal" OnRowCommand="UsersInRoleGrid_RemoveFromRole">
            <HeaderStyle  ForeColor="black" />
            
            <Columns>
              <asp:TemplateField HeaderText="用户名" >
                
                <ItemTemplate>
                  <%# Container.DataItem.ToString() %>
                </ItemTemplate>
              </asp:TemplateField>
              <asp:ButtonField Text="移除" ButtonType="Link" />
            </Columns>
          </asp:GridView>
        </fieldset>
            
        </div>
        <div class="float-left user_control_add">
             <asp:Button Text="◀ 添加" ID="AddUsersButton" Height="35" runat="server" OnClick="AddUsers_OnClick" />
        </div>
        <div class="float-left user_control_mid">    
            <fieldset>
                <legend>用户管理</legend>
                <asp:Label ID="Label1" runat="server" Text="按用户名精确查找"></asp:Label>
                <asp:TextBox runat="server" ID="TextBoxSearchUsers"></asp:TextBox>
                <asp:Button  runat="server" ID="BoxSearchUserName" Text="搜索" OnClick="BoxSearchUserName_Click"/><br /> 
                <asp:ListBox ID="UsersListBox" Width="100%" Height="300px" DataTextField="Username" AutoPostBack="true" Rows="8" SelectionMode="Multiple" runat="server" />
        
            </fieldset>   
        </div>
        <div class="float-left user_control_right"> 
            
            <fieldset>
                <legend>操作提示</legend>
                <asp:Label ID="LabelUserManageResult" runat="server" Text="选择角色和用户后，设置用户角色"></asp:Label>
            <br />
        
            </fieldset>  
            </div>
        <div class="clear"></div>
    </div>
        
</asp:Content>


