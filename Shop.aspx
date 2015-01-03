﻿<%@ page title="商铺 - " language="C#" masterpagefile="~/Site.master" autoeventwireup="true" inherits="Shop, App_Web_oi3sipj0" %>

<%@ Register Src="~/Controls/ItemList.ascx" TagPrefix="TuanStu" TagName="ItemList" %>
<%@ Register Src="~/Controls/ShopDetail.ascx" TagPrefix="TuanStu" TagName="ShopDetail" %>
<%@ Register Src="~/Controls/Comment.ascx" TagPrefix="TuanStu" TagName="Comment" %>
<%@ Register Src="~/Controls/ShoppingCart.ascx" TagPrefix="TuanStu" TagName="ShoppingCart" %>
<%@ Register Src="~/Controls/ShopAdvert.ascx" TagPrefix="TuanStu" TagName="ShopAdvert" %>
<%@ Register Src="~/Controls/SharePanel.ascx" TagPrefix="TuanStu" TagName="SharePanel" %>
<%@ Register Src="~/Controls/CouponPanel.ascx" TagPrefix="TuanStu" TagName="CouponPanel" %>



<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <TuanStu:ShopDetail runat="server" ID="ShopDetail" />
    <div style="min-height:30px;"></div>
    <div class="item_list_wrapper">
        <div class="float-left" style="width:740px">
            <TuanStu:ShopAdvert runat="server" id="ShopAdvert" />
            <TuanStu:ItemList runat="server" ID="ItemList" />
        <TuanStu:Comment runat="server" ID="Comment" />
        </div>
        <div class="float-right" style="width:270px">
            <TuanStu:SharePanel runat="server" ID="SharePanel" />
            <TuanStu:CouponPanel runat="server" ID="CouponPanel" />
            <TuanStu:ShoppingCart runat="server" ID="ShoppingCart" />
        </div>
            
        
        <div class="clear-fix"></div>
    </div>
</asp:Content>

