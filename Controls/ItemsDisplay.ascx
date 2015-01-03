<%@ control language="C#" autoeventwireup="true" inherits="TuanStu.Controls_ItemsDisplay, App_Web_ubffupp5" %>

<asp:Repeater runat="server" ID="RepItemList">
    <HeaderTemplate>
        <p class="ShopTypeTitle">
                商品
            </p>
    </HeaderTemplate>
             
    <ItemTemplate>
        <div class="any_item_wrapper item_list_panel">
            <div class="top" limit="8"><span><%# Eval("Name") %></span></div>
            <div class="middle">
                <a id="A1" runat="server" href='<%# String.Format("~/Item.aspx?id={0}",Eval("Id")) %>'><img id="Img1" runat="server" src='<%# Eval("Image") %>'/></a>
            </div>
            <div class="bottom">
                <span class="listprice"><%# Eval("ListPrice") %></span>¥
                现:<span class="unitprice"><%# Eval("UnitPrice") %></span>¥
            </div>
            <div class="clear"></div>
        </div>
    </ItemTemplate>
    <SeparatorTemplate>

    </SeparatorTemplate>
    <FooterTemplate>
        <div class="clear"></div>
    </FooterTemplate>
</asp:Repeater>
