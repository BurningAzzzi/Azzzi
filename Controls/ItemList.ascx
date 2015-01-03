<%@ control language="C#" autoeventwireup="true" inherits="Controls_ItemList, App_Web_ubffupp5" %>

<script>
    $(function () {
        var $shoppingcart = $(".shoppingcart_add");
        $shoppingcart.mouseenter(function () {
            var $this = $(this);
            $this.animate({ bottom: "3px" }, "fast").animate({ bottom: "-3px" }, "fast");
        });
        $shoppingcart.click(function () {
            var $this = $(this);
            var $wrapper = $(".shopping_cart_panel_item_list");
            var $id = $this.attr("itemid");
            var $name = $this.attr("itemname");
            if ($name.length > 18) {
                $name = $name.substr(0, 18) + "...";
            }
            var $price = $this.attr("price");
            var $listPrice = $this.attr("listPrice");
            var template = "<li><span>" + $name + "</span><span style=\"display:none\" id=\"listPrice\">" + $listPrice + "</span><span style=\"text-align:center;\"><font id=\"unitprice\">" + $price + "</font></span><span class=\"shopping_cart_item_add_reduce\"><a href=\"##\" itemid='" + $id + "' command=\"reduce\">- </a><font id=\"quantity\" class=\"curr_quantity\">1</font><a href=\"##\" itemid='" + $id + "' command=\"add\"> +</a></span></li>";

            $.post("AjaxFunctions/AddItemToCart.ashx", { commandName: "add", itemid: $id }, function (data) {
                if (data == "add") {
                    animation($id);
                    var $has = false;
                    var $target = null;
                    $wrapper.find("li span a").each(function () {
                        var $this = $(this);
                        $target = $this;
                        if ($this.attr("itemid") == $id) {
                            $has = true;
                            return false;
                        }
                    });
                    if ($has) {
                        var $currItem = $target.parent(":first").find(".curr_quantity:first");
                        var $currCount = parseInt($currItem.html());
                        $target.parent(":first").find(".curr_quantity:first").html($currCount + 1);;
                    }
                    else {
                        $wrapper.append(template);
                    }
                    GetTotalPrice();
                }
            });
        });
        function GetTotalPrice() {
            var total = 0;
            var min = 0;
            $(".shopping_cart_panel_item_list li").each(function () {
                var quantity = parseInt($(this).find("#quantity").html());
                var price = parseFloat($(this).find("#unitprice").html());
                var listPrice = parseFloat($(this).find("#listPrice").html());

                total += quantity * price;
                min += quantity * (listPrice - price);

            });
            $("#shop_cart_totalPrice").html(total.toFixed(2));
            $("#shop_cart_jieshengPrice").html(min.toFixed(2));
        }
        function animation(id) {
            var $target = $("[targetID='" + id + "']");
            var $width = $target.css("width");
            var $height = $target.css("height");;
            $target.animate({ top: '-30px', opacity: '0.7' }, "fast").animate({ right: '-600px',width:'0',height:'0', opacity: '0' }, "middle", function () {
                $(this).css({ right: '0px', top: '0px', opacity: '1', width: $width, height: $height });
            });
        }
    });
</script>

   
<p class="ShopTypeTitle">推荐商品</p>
<asp:Repeater runat="server" ID="RepImgItemList">
    <HeaderTemplate>
    </HeaderTemplate>
             
    <ItemTemplate>
        <div class="any_item_wrapper item_list_panel">
            <div class="top" ><a id="A1" target="_blank" runat="server" href='<%# String.Format("~/Item.aspx?id={0}",Eval("Id")) %>' limit="14"><%# Eval("Name") %></a></div>
            <div class="middle">
                <a runat="server" target="_blank" href='<%# String.Format("~/Item.aspx?id={0}",Eval("Id")) %>'><img runat="server" src='<%# Eval("Image") %>' targetID='<%# Eval("Id") %>' style="position:relative;"/></a>
            </div>
            <div class="bottom">
                ¥<span class="listprice"><%# Eval("ListPrice") %></span>
                现:¥<span class="unitprice"><%# Eval("UnitPrice") %></span>
                <a class="shoppingcart_add"   itemid='<%# Eval("Id") %>' itemname='<%# Eval("Name") %>' price='<%# Eval("UnitPrice") %>' listPrice='<%# Eval("ListPrice") %>'><img width="25" title="添加到购物车" runat="server" src="~/Images/ShoppingCatIcon.png" /></a>
            </div>
            <div class="clear"></div>
        </div>
    </ItemTemplate>
    <SeparatorTemplate>

    </SeparatorTemplate>
    <FooterTemplate>
    </FooterTemplate>
</asp:Repeater>
<asp:Panel runat="server" CssClass="any_item_wrapper" Width="730"  ID="PanelHotItemIsNull">
    <div style="padding:20px;font-size:18px;">暂时没有推荐商品，尽请期待</div>
</asp:Panel>
<div class="clear-fix"></div>
<p class="ShopTypeTitle">商品菜单</p>
<asp:Repeater runat="server" ID="RepItemList">
    <HeaderTemplate>
    </HeaderTemplate>
             
    <ItemTemplate>
        <div class="any_item_wrapper item_list_panel_norm">
            <div class="item_list_panel_norm_left">
                <span><a id="A1" runat="server" href='<%# String.Format("~/Item.aspx?id={0}",Eval("Id")) %>' limit="18"><%# Eval("Name") %></a></span>
            </div>
            <div class="item_list_panel_norm_right">
                原:¥<span class="listprice"><font style="text-decoration:line-through;"><%# Eval("ListPrice") %></font></span>
                现:¥<span class="unitprice"><font style="font-size:17px;color:#FF6600"><%# Eval("UnitPrice") %></font></span>
                <a class="shoppingcart_add"   itemid='<%# Eval("Id") %>' itemname='<%# Eval("Name") %>' price='<%# Eval("UnitPrice") %>' listPrice='<%# Eval("ListPrice") %>'><img id="Img2" width="25" title="添加到购物车" runat="server" src="~/Images/ShoppingCatIcon.png" /></a>
            </div>
            <div class="clear"></div>
        </div>
    </ItemTemplate>
    <SeparatorTemplate>

    </SeparatorTemplate>
    <FooterTemplate>
    </FooterTemplate>
</asp:Repeater>

<asp:Panel runat="server" CssClass="any_item_wrapper" Width="730" ID="PanelItemIsNull">
    <div style="padding:20px;font-size:18px;">暂时没有商品，尽请期待</div>
</asp:Panel>
<div class="clear"></div>

    