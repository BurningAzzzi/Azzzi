<%@ control language="C#" autoeventwireup="true" inherits="Controls_MediumList, App_Web_ubffupp5" %>

<p class="ShopTypeTitle">我要工作</p>
<asp:Repeater runat="server" ID="RepItemList">
    <HeaderTemplate>
    </HeaderTemplate>
             
    <ItemTemplate>
        <div class="any_item_wrapper room_list_panel">
            <div class="top" limit="14"><span><a target="_blank" id="A1" runat="server" href='<%# String.Format("~/Item.aspx?id={0}",Eval("Id")) %>'><%# Eval("Name") %></a></span></div>
            <div class="middle">
                <div limit="50">
                                        <a id="A2" target="_blank" runat="server" href='<%# String.Format("~/Item.aspx?id={0}",Eval("Id")) %>'><img id="Img2" runat="server" src='<%# Eval("Image") %>' alt='<%# Eval("Descn") %>'/></a>

                    </div>
            </div>
            <div class="bottom">
                中介费：<span class="unitprice"><%# Eval("UnitPrice") %></span>元
            </div>
            <div class="clear"></div>
        </div>
    </ItemTemplate>
    <SeparatorTemplate>

    </SeparatorTemplate>
    <FooterTemplate>
    </FooterTemplate>
</asp:Repeater>
<div class="clear"></div>