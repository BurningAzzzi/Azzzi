<%@ control language="C#" autoeventwireup="true" inherits="Controls_ShopList, App_Web_ubffupp5" %>
<div class="shop_list">
    <asp:Repeater runat="server" ID="Rep_Shop_List" OnItemDataBound="Rep_Shop_List_ItemDataBound">
        <HeaderTemplate>
            
        </HeaderTemplate>
        <ItemTemplate>
            <section class="any_item_wrapper">
                <div class="list_top">
                    <div>
					<a limit="12" target="_blank" runat="server" href='<%# String.Format("~/Shop.aspx?id={0}",Eval("ShopId")) %>' class="shop_name">
						<%# Eval("Name") %>
					</a>
                    </div>
                    <div class="list_star_wrapper">
                        <asp:Panel runat="server" ID="Label_Shop_Star" CssClass="stars"></asp:Panel>
                        <div class="stars-none"></div>
                        <asp:Label runat="server" CssClass="shop_score" ID="Label_Shop_Score"></asp:Label>
                    </div>
                    <div class="clear"></div>
				</div>
				<div class="descn" limit="50">
					<%# Eval("Description")  %><br />
				</div>
                <div class="bottom">
                    <span class="tip">地址：</span><font limit="25"><%# Eval("Address") %></font><br />
                    <span class="tip">电话：</span><font limit="15"><%# Eval("Phone") %></font><br />
                </div>
            </section>
        </ItemTemplate>
        <FooterTemplate>

        </FooterTemplate>
    </asp:Repeater>
</div>
<div>
    <asp:Panel runat="server" Height="210" ID="PanelItemIsNull">
        <div style="padding:40px;font-size:48px;text-align:center;">敬请期待！</div>
    </asp:Panel>
</div>