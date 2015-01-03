<%@ control language="C#" autoeventwireup="true" inherits="Controls_HotelList, App_Web_ubffupp5" %>

<asp:Repeater runat="server" ID="RepItemList">
        <HeaderTemplate>
            <h3>房间信息</h3>
        </HeaderTemplate>
        <ItemTemplate>
            <div class="hotellistdiv">
                <div class="hotellistname">
                    <span limit="7"><%# Eval("Name") %></span>
                </div>
                <div class="hotellistunitprice">
                    <span>原价:¥<%# Eval("UnitPrice") %></span>
                </div>
                <div class="hotellistlistprice">
                    <span>现价:¥<%# Eval("ListPrice") %></span>
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