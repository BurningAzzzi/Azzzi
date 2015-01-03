<%@ page title="困了睡觉 - " language="C#" masterpagefile="~/Site.master" autoeventwireup="true" inherits="Hotel, App_Web_oi3sipj0" %>

<%@ Register Src="~/Controls/ShopDetail.ascx" TagPrefix="TuanStu" TagName="ShopDetail" %>
<%@ Register Src="~/Controls/Comment.ascx" TagPrefix="TuanStu" TagName="Comment" %>
<%@ Register Src="~/Controls/RoomList.ascx" TagPrefix="TuanStu" TagName="RoomList" %>
<%@ Register Src="~/Controls/ShopAdvert.ascx" TagPrefix="TuanStu" TagName="ShopAdvert" %>
<%@ Register Src="~/Controls/SharePanel.ascx" TagPrefix="TuanStu" TagName="SharePanel" %>
<%@ Register Src="~/Controls/CouponPanel.ascx" TagPrefix="TuanStu" TagName="CouponPanel" %>



<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        div#pics img {
            position:relative;
            min-height:110px;
            min-width:155px;
            height:110px;
        }
        div#pics div {
            overflow:hidden;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <TuanStu:ShopDetail runat="server" ID="ShopDetail" />
    <div style="min-height:30px;"></div>
    <div class="item_list_wrapper">
        <div class="float-left" style="width:740px">
            <TuanStu:ShopAdvert runat="server" id="ShopAdvert" />
            <TuanStu:RoomList runat="server" ID="RoomList" />
        <TuanStu:Comment runat="server" ID="Comment" />
        </div>
        <div class="float-right" style="width:270px">
            <TuanStu:SharePanel runat="server" ID="SharePanel" />
            <TuanStu:CouponPanel runat="server" ID="CouponPanel" />
        </div>
            
        
        <div class="clear-fix"></div>
    </div>
</asp:Content>

