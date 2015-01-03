<%@ control language="C#" autoeventwireup="true" inherits="Controls_ShopsDisplay, App_Web_ubffupp5" %>

<div class="shop_display">
    <asp:Repeater runat="server" ID="Rep_Shop_List" OnItemDataBound="Rep_Shop_List_ItemDataBound">
        <HeaderTemplate>
            <p class="ShopTypeTitle">
                商铺
            </p>
        </HeaderTemplate>
        <ItemTemplate>
            <section class="any_item_wrapper">
                <div class="list_top">
					<a id="A1" href='<%# GetShopUrlByShopId(Int32.Parse(Eval("ShopId").ToString())) %>' class="shop_name" limit="8">
						<%# Eval("Name") %>
					</a>
                    <div class="list_star_wrapper">
                        <asp:Panel runat="server" ID="Label_Shop_Star" CssClass="stars"></asp:Panel>
                        <div class="stars-none"></div>
                        <asp:Label runat="server" CssClass="shop_score" ID="Label_Shop_Score"></asp:Label>
                    </div>
                    <div class="clear"></div>
				</div>
				<div class="descn">
					<%# Eval("Description").ToString().Length<=20?Eval("Description"):String.Format("{0}...",Eval("Description").ToString().Substring(0,20)) %><br />
				</div>
                <div class="bottom">
                    <span class="tip">地址：</span><%# Eval("Address") %><br />
                    <span class="tip">电话：</span><%# Eval("Phone") %><br />
                </div>
            </section>
        </ItemTemplate>
        <FooterTemplate>

        </FooterTemplate>
    </asp:Repeater>
</div>