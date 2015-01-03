<%@ control autoeventwireup="true" inherits="TuanStu.Web.ShoppingCartControl, App_Web_ubffupp5" language="C#" %>
<asp:Panel ID="panFocus" runat="server" DefaultButton="btnTotal">
<asp:Label runat="server" ID="lblMsg" EnableViewState="false"  CssClass="lblMsglabel" />
<asp:UpdatePanel ID="UpdatePanel2" runat="server">
    <ContentTemplate>
        <asp:Repeater ID="repShoppingCart" runat="server">
            <HeaderTemplate>
                <table>
                    
                    <tr class="labelLists">
                        
				        <th>&nbsp;</th>
				        <th>名称</th>
				        <th>数量</th>
				        <th>原价</th>
                        <th>现价</th>
                        <th>实付</th>
			        </tr>
            </HeaderTemplate>
            <ItemTemplate>
        
                        <tr class="shop-cart-row">
				        <td >
                            <asp:ImageButton ID="btnDelete" runat="server" BorderStyle="None" CausesValidation="false" CssClass="cart-delete-button"
                            CommandArgument='<%# Eval("ItemId") %>' CommandName="Del" ImageUrl="~/Images/button-delete.png"
                            OnCommand="CartItem_Command" ToolTip="Delete" />
                        </td>
				        <td style="width:400px;">
                            <a id="A1" limit="15" runat="server" href='<%# string.Format("~/Item.aspx?id={0}", Eval("ItemId"))%>'><%# Eval("Name") %></a>
                        </td>
				        <td style="width:360px;">
                            <asp:Button ID="Button_ReduceQuantity" CssClass="shop-cart-col2" runat="server" Text="-" CommandName="Reduce" CommandArgument='<%# Eval("ItemId") %>' OnCommand="CartItem_Command"/>
                    
				            <asp:TextBox ID="txtQuantity" runat="server" CssClass="shop-cart-col2" Columns="3" Text='<%# Eval("Quantity") %>' Width="25px"></asp:TextBox>
            
                            <asp:Button ID="Button_AddQuantity" runat="server" CssClass="shop-cart-col2" Text="+" CommandName="Add" CommandArgument='<%# Eval("ItemId") %>' OnCommand="CartItem_Command"/>
                        </td>
				        <td align="right" class="shop-cart-list-price"><%# Eval("ListPrice", "{0:c}")%></td>
                        <td align="right"><%# Eval("UnitCost", "{0:c}")%></td>
                        <td align="right"><%# String.Format("￥{0}",Decimal.Parse(Eval("UnitCost").ToString())*Int32.Parse(Eval("Quantity").ToString())) %></td>
                        
			        </tr>
            
            </ItemTemplate>
            <FooterTemplate>
                </table>
        
            </FooterTemplate>
        </asp:Repeater>  

    </ContentTemplate>
</asp:UpdatePanel>
<asp:PlaceHolder ID="plhTotal" runat="server" EnableViewState="false">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="float-right shop-cart-total">
                    <%--<asp:Button runat="server" Text="结算" ID="Caculate" OnClick="Caculate_Click" />--%>
                    总计
                    <asp:ImageButton CssClass="cart-delete-button" ID="btnTotal" runat="server" AlternateText="Calculate total" CausesValidation="false"
                                ImageUrl="~/Images/button-calculate.gif" OnClick="BtnTotal_Click" EnableViewState="false" />
                    <asp:Literal ID="ltlTotal" runat="server" EnableViewState="false"></asp:Literal>
                </div>
                <div class="clear"></div>
           </ContentTemplate>
    </asp:UpdatePanel>
</asp:PlaceHolder>
</asp:Panel>
