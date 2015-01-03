<%@ control language="C#" autoeventwireup="true" inherits="TuanStu.Controls_RoomList, App_Web_ubffupp5" %>

<p class="ShopTypeTitle">房间信息</p>
<asp:Repeater runat="server" ID="RepItemList">
    <HeaderTemplate>
    </HeaderTemplate>
             
    <ItemTemplate>
        <div class="any_item_wrapper room_list_panel">
            <div class="top"><span limit="14"><a id="A2" target="_blank" runat="server" href='<%# String.Format("~/Item.aspx?id={0}",Eval("Id")) %>'><%# Eval("Name") %></a></span></div>
            <div class="middle">
                <a id="A1" target="_blank" runat="server" href='<%# String.Format("~/Item.aspx?id={0}",Eval("Id")) %>'><img id="Img1" runat="server" src='<%# Eval("Image") %>'/></a>
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
    </FooterTemplate>
</asp:Repeater>
<div class="clear"></div>