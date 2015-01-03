<%@ control language="C#" autoeventwireup="true" inherits="TuanStu.Controls_OrderDisplay, App_Web_ubffupp5" %>

<div style="width:1020px;">
    <div class="any_item_wrapper order_display_div">
        <% if(ShowShopNav){ %>
        <div class="order_display_div1">
            <asp:HyperLink runat="server" ID="ShopLink" limit="20"  CssClass="fwbeoiughsdf" ></asp:HyperLink>
        </div>
        <%}if(ShowUserNav){  %>
        <div class="order_display_div2">
            <asp:Label runat="server" ID="UserLink" limit="35"   CssClass="fwbeoiughsdf"></asp:Label>
            <asp:Label runat="server" ID="Phone" CssClass="orderdisplay_phone"></asp:Label>
        </div>
        <%}%>
        <asp:Repeater runat="server" ID="OrderRepeater" OnItemDataBound="OrderRepeater_ItemDataBound">
             <HeaderTemplate>
                <div class="order_title">
                    <span>订单编号：</span><span class="order_display_code"><%= Order.OrderId %></span>
                    <span class="order_display_span1">交易时间：</span><span class="order_display_datetime"><%= Order.OrderTime.ToString("yyyy-MM-dd HH:mm:ss") %></span>
                    <span class="order_display_span1" >合计：</span><span class="order_display_span2"><%= Order.TotalPrice %>元</span>
                </div>
                <ul class="order_display_lineitem">
            </HeaderTemplate>
            <ItemTemplate>
                    <li>
                        <div class="name">
                            <a limit="18" href='../Item.aspx?id=<%# Eval("ItemId") %>'><%# Eval("Name") %></a>
                        </div>
                        <div class="unitprice">
                            <span>价格：<%# Eval("UnitPrice") %>元</span>
                        </div>
                        <div class="quantity">
                            <span>数量：<%# Eval("Quantity") %></span>
                        </div>
                        <div class="totalprice">
                            总计：<asp:Label runat="server" ID="TotalPrice"></asp:Label>元
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