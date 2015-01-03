<%@ page title="" language="C#" masterpagefile="~/CommonInterface/CommonInterface.master" autoeventwireup="true" inherits="CommonInterface_ItemManage, App_Web_rzv2xkl2" %>

<asp:Content ID="Content5" ContentPlaceHolderID="ManageContent" Runat="Server">
    <div id="manage_list_wrapper" class="any_item_wrapper manage_wrapper">
            <div>
                <div style="padding:5px;border-radius:5px;background-color:lightblue;width:120px;margin:15px;text-align:center;">
                    <a href="AddItem.aspx" >增加新商品</a>
                </div>
                <%--<div class="manage_list_header_right">
                    <asp:TextBox ID="shop_search_box" runat="server"></asp:TextBox>
                    <asp:Button ID="shop_serch_button" runat="server" Text="搜索" OnClick="shop_serch_button_Click"/>
                </div>--%>
            </div>
            <div class="clear"></div>
        <asp:UpdatePanel runat="server">
            <ContentTemplate>
            <div>
                <div class="manage_list_header_left">
                    
                <h3>筛选：</h3><asp:Label ID="Label4" runat="server" Text="分类"></asp:Label><asp:DropDownList runat="server" ID="TypesDropDownList" OnSelectedIndexChanged="TypesDropDownList_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                </div>
                    <asp:Repeater runat="server" ID="ItemsRepeater">
                        <HeaderTemplate>
                            
                            
                            <table style="width:95%;">
                                <tr>
                                    <th>商品图片</th>
                                    <th>商品名称</th>
                                    <th>原价</th>
                                    <th>现价</th>
                                    <th>分类</th>
                                    <th>操作</th>
                                    <th>推荐</th>
                                    <th>状态</th>
                                </tr>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <a href='../Item.aspx?id=<%# Eval("Id") %>'><img id="Img1" style="width:100px;height:100px;" runat="server" src='<%# Eval("Image") %>' alt='<%# Eval("Name") %>' /></a>
                                </td>
                                <td>
                                    <p limit="7"><%# Eval("Name") %></p>
                                </td>
                                <td>
                                    <p><%# Eval("ListPrice") %>元</p>
                                </td>
                                <td>
                                    <p><%# Eval("UnitPrice") %>元</p>
                                </td>
                                <td>
                                    <p><%# this.GetTypeName(Int32.Parse(Eval("TypeId").ToString())) %></p>
                                </td>
                                <td style="width:1000px;">
                                    <asp:Button ID="Button1" runat="server" Width="50" Text="编辑" CommandName="Edit" CommandArgument='<%# Eval("Id") %>' OnCommand="Item_Command"/>
                                    <asp:Button ID="Button3" runat="server" Width="50" Text='<%# bool.Parse(Eval("Hot").ToString())?"推荐":"普通" %>' CommandName="Hot" CommandArgument='<%# Eval("Id") %>' OnCommand="Item_Command"/>
                                    <asp:Button ID="Button2" runat="server" Width="50" Text='状态' CommandName='<%# bool.Parse(Eval("Status").ToString())?"Off":"On" %>' CommandArgument='<%# Eval("Id") %>' OnCommand="Item_Command" />
                                </td>
                                
                                <td style="width:200px;text-align:center;color:green;">
                                    <p>
                                        <%# bool.Parse(Eval("Hot").ToString())?"√":"╳" %>
                                    </p>
                                </td>
                                <td style="width:200px;text-align:center;<%# bool.Parse(Eval("Status").ToString())?"color:green;":"color:gray;" %>">
                                    <p>
                                        <%# bool.Parse(Eval("Status").ToString())?"营业中":"缺货" %>
                                    </p>
                                </td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                                
                            </table>
                        </FooterTemplate>
                    </asp:Repeater>
                <div class="pagging">
                    <asp:Label ID="Label1" CssClass="page_label" runat="server" Text="当前页：" />
                    <asp:Label CssClass="page_label" runat="server" ID="CurrentPage" Text="1" />
                    <asp:LinkButton CssClass="page_navigation" runat="server" ID="PreviewButton" OnClick="PreviewButton_Click" Text="上一页" />
                    <asp:LinkButton CssClass="page_navigation" runat="server" ID="NextButton" OnClick="NextButton_Click" Text="下一页" />
                    <asp:Label ID="Label2" CssClass="page_label" runat="server" Text="共" />
                    <asp:Label CssClass="page_label" runat="server" ID="PageCount" />
                    <asp:Label ID="Label3" CssClass="page_label" style="margin-right:10px;" runat="server" Text="页" />
                </div>
            </div>
        </div>
        </ContentTemplate>
    </asp:UpdatePanel>
        </div>
</asp:Content>

