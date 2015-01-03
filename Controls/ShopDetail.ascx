<%@ control language="C#" autoeventwireup="true" inherits="Controls_ShopDetail, App_Web_ubffupp5" %>
    
<div class="shop_detail_wrapper" style="background-image:url('<%=ShopImgUrl %>')">
    <%--<div class="shop_detail_pic float-left">
        <asp:Image runat="server" ID="ImgShop" AlternateText="商铺图片"/>
    </div>--%>
    <div class="shop_detail_info">
        <div style="padding:10px;background-color:rgba(238, 238, 238,0.9);height:432px;width:335px;margin-left:10px;border-style:solid;border-width:10px;border-color:rgba(128,128,128,0.85);">
            <div class="shop_detail_info_header">
                <asp:Label CssClass="shop_name" runat="server" ID="LabelShopName" limit="12"></asp:Label>
            </div>
            
            <div class="shop_detail_info_body">
                <asp:Label ID="Label3" CssClass="title-in-shop-detail" runat="server" Text="评分："></asp:Label>
                <div style="display:inline-block; width:180px;">
                    <asp:Panel runat="server" ID="Label_Shop_Star" CssClass="stars"></asp:Panel>
                    <div class="stars-none"></div>
                    <asp:Label runat="server" CssClass="shop_details_score" ID="LabelScore" ></asp:Label>
                </div>
                <br />
                <asp:Label ID="Label2" CssClass="title-in-shop-detail" runat="server" Text="服务范围："></asp:Label>
                <asp:Label runat="server" CssClass="content-in-shop-detail" ID="LabelServiceArea"></asp:Label>
                <br />
                <asp:Label ID="Label7" CssClass="title-in-shop-detail"  runat="server" Text="平均送餐时间："></asp:Label>
                <asp:Label runat="server" CssClass="content-in-shop-detail" ID="LabelShipTime"></asp:Label>
                <br />
                <asp:Label ID="Label4" CssClass="title-in-shop-detail"  runat="server" Text="电话："></asp:Label>
                <asp:Label runat="server" CssClass="content-in-shop-detail" ID="LabelPhone" limit="15"></asp:Label>
                <br />
                <asp:Label ID="Label5" CssClass="title-in-shop-detail" runat="server" Text="地址："></asp:Label>
                <asp:Label runat="server" CssClass="content-in-shop-detail" ID="LabelAddress" limit="35"></asp:Label>
                <br />
                <asp:Label ID="Label6" CssClass="title-in-shop-detail" runat="server" Text="介绍："></asp:Label>
                <asp:Label runat="server" CssClass="shop_detail" ID="LabelShopDetail" limit="110"></asp:Label>
                <br />
            </div>
        </div>
        <div class="clear"></div>
    </div>
    
</div>