<%@ control language="C#" autoeventwireup="true" inherits="Controls_ShopAdvert, App_Web_ubffupp5" %>
 
<script src="<%: ResolveUrl("~/Plugin/easyslide/easySlider1.7.js") %>"></script>
<link type="text/css" href="<%: ResolveUrl("~/Plugin/easyslide/screen.css") %>" rel="stylesheet" />
<script>
    $(document).ready(function () {
        $("#easyslider").easySlider({
            continuous: true,
            auto:true,
            numeric: true,
            speed: 300,
            pause: 3000
        });
    });
</script>

<div class="ArticleTitleDiv_2">
    店主推荐
</div>
<div class="any_item_wrapper shop_advert_wrapper">
    <div id="easyslider">
	    <ul>				
		    
    <asp:Repeater runat="server" ID="RepAdvertData">
        <HeaderTemplate>

        </HeaderTemplate>
        <ItemTemplate>
      
            <li><a target="_blank" runat="server" href='<%# String.Format("~/Ad.aspx?id={0}",Eval("Id")) %>'><img runat="server" src='<%# Eval("Image") %>' alt='<%# Eval("Detail") %>' /></a></li>

        </ItemTemplate>
        <FooterTemplate>
        </FooterTemplate>
    </asp:Repeater>
        </ul>
    </div>
</div>
<div class="clear-fix"></div>