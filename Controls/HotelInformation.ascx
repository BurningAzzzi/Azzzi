<%@ control language="C#" autoeventwireup="true" inherits="Controls_HotelInformation, App_Web_ubffupp5" %>

<div class="shop_detail_wrapper">
    <div class="shop_detail_pic float-left">
        <asp:Image runat="server" ID="ImgShop" AlternateText="商铺图片"/>
    </div>
    <div class="shop_detail_info float-right">
        <div class="shop_detail_info_header">
            <div class="shop_detail_info_header_left float-left">
                <asp:Label ID="Label1" CssClass="title-in-shop-detail" runat="server" Text="店名："></asp:Label>
                <asp:Label CssClass="shop_name" runat="server" ID="LabelShopName"></asp:Label>
                <br />
                <asp:Label ID="Label4" CssClass="title-in-shop-detail"  runat="server" Text="电话："></asp:Label>
                <asp:Label runat="server" CssClass="content-in-shop-detail" ID="LabelPhone"></asp:Label>
                <br />
            </div>
            <div class="float-left">
                <asp:Label ID="Label2" CssClass="title-in-shop-detail" runat="server" Text="服务范围："></asp:Label>
                <asp:Label runat="server" CssClass="content-in-shop-detail" ID="LabelServiceArea"></asp:Label>
        
                <br />
                <asp:Label ID="Label3" CssClass="title-in-shop-detail" runat="server" Text="评分："></asp:Label>
                <div style="display:inline-block; width:180px;">
                    <asp:Panel runat="server" ID="Label_Shop_Star" CssClass="stars"></asp:Panel>
                    <div class="stars-none"></div>
                    <asp:Label runat="server" CssClass="shop_details_score" ID="LabelScore" ></asp:Label>
                </div>
            </div>
            <div class="clear"></div>
        </div>
        <div class="shop_detail_info_body">
            <div>
                <asp:Label ID="Label5" CssClass="title-in-shop-detail" runat="server" Text="地址："></asp:Label>
                <asp:Label runat="server" CssClass="content-in-shop-detail" ID="LabelAddress"></asp:Label>
                <br />
                <asp:Label ID="Label6" CssClass="title-in-shop-detail" runat="server" Text="介绍："></asp:Label>
                <asp:Label runat="server" CssClass="shop_detail" ID="LabelShopDetail"></asp:Label>
                <br />
            </div>
        </div>
    </div>
    
    
    <div class="clear"></div>
    
</div>