<%@ control language="C#" autoeventwireup="true" inherits="TuanStu.Controls_OrderPrintDisplay, App_Web_ubffupp5" %>

<div style="width:1020px;">
    <div class="any_item_wrapper order_display_div">
        <div class="order_display_head">
            <% if(ShowShopNav){ %>
            <div>
                <asp:HyperLink runat="server" ID="ShopLink" limit="20"></asp:HyperLink>
            </div>
            <%}if(ShowUserNav){  %>
            <div>
                <asp:Label runat="server" ID="UserLink" limit="35"></asp:Label>
            </div>
            <div>
                <asp:Label runat="server" ID="Phone"></asp:Label>
            </div>
            <%}%>
            <asp:Repeater runat="server" ID="OrderRepeater" OnItemDataBound="OrderRepeater_ItemDataBound">
                 <HeaderTemplate>
                    <div>
                        <div class="block">
                            <span>编号：</span><span><%= Order.OrderId %></span><span class="block" style="float:right;">共：<%= Order.TotalPrice %>元</span>
                        </div>
                        <div class="block">
                            <span>时间：<%= Order.OrderTime.ToString("yyyy-MM-dd HH:mm") %></span>
                        </div>
                    </div>
                </div>
                <ul class="orderlist">
            </HeaderTemplate>
            <ItemTemplate>
                    <li>
                        <div>
                            <span class="left"><%# Eval("Name") %></span><span class="right"><%# Eval("Quantity") %>个</span>
                            <div style="clear:both;"></div>
                        </div>
                        <div>
                            <span class="left"><%# Eval("UnitPrice") %>元/个</span>
                            <span class="right">共<asp:Label runat="server" ID="TotalPrice"></asp:Label>元</span>
                            <div style="clear:both;"></div>
                        </div>
                    </li>
            </ItemTemplate>
            <FooterTemplate>
                </ul>
            </FooterTemplate>
        </asp:Repeater>
        <div class="clear"></div>
    </div>
</div>