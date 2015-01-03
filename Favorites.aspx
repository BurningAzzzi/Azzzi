<%@ page title="我的收藏 - " language="C#" masterpagefile="~/Site.master" autoeventwireup="true" inherits="Favorites, App_Web_oi3sipj0" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <div style="text-align: center;min-height:40px;height: auto;">
        <asp:HyperLink runat="server" ID="LabelEmptyTip" NavigateUrl="~/Default.aspx" Font-Size="22" Visible="false" Text="您还没有收藏任何东西,赶紧去逛逛！" CssClass="favorateNone"></asp:HyperLink>
    </div>
    <asp:Repeater runat="server" ID="RepFavoriteList">
        <HeaderTemplate>
            <table>
            <tr class="labelLists">
				<th>取消收藏</th>
                <th>&nbsp</th>
				<th>名称</th>
			</tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr class="shop-cart-row">
				<td >
                    <asp:ImageButton ID="btnDelete" runat="server" BorderStyle="None" CausesValidation="false" CssClass="cart-delete-button"
                    CommandArgument='<%# Eval("ItemId") %>' CommandName="Del" ImageUrl="~/Images/button-delete.png"
                    OnCommand="CartItem_Command" ToolTip="Delete" />
                </td>
                <td>
                    <img src="" />
                </td>
				<td style="width:50%;">
                    <a id="A1" target="_blank" runat="server" href='<%# string.Format("~/Item.aspx?id={0}", Eval("ItemId"))%>'><%# Eval("Name") %></a>
                </td>
			</tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
</asp:Content>

