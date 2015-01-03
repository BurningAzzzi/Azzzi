<%@ control language="C#" autoeventwireup="true" inherits="Controls_ItemDetail, App_Web_ubffupp5" %>
<script>
    $(function () {
        $("#add_to_cart").click(function () {
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
                    animation();
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
            return false;
        });

        $("#add_to_favorite").click(function () {
            return false;
        });

        $("#remove_from_favorite").click(function () {
            return false;
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
        function animation() {
            var $target = $("#ItemImage");
            var $width = $target.css("width");
            var $height = $target.css("height");;
            $target.animate({ top: '-30px', opacity: '0.7' }, "fast").animate({ top:'100px', right: '-800px', width: '0', height: '0', opacity: '0' }, "middle", function () {
                $(this).css({ right: '0px', top: '0px', opacity: '1', width: $width, height: $height });
            });
        }
    });
</script>
<p class="ShopTypeTitle">商品详情</p>
<div class="any_item_wrapper item_detail_wrapper">
    <div style="border-bottom: solid #E0E0E2 5px;
height: 277px;">
    <div class="item_detail_wrapper_left">
        <div style="width:285px;height:165px;padding:30px;background-color:#E0E0E2;border: solid #D4D4DA 1px;">
            <asp:Image runat="server" ID="ItemImage" CssClass="item_detail_image" ClientIDMode="Static"/>
        </div>
    </div>
    <div class="item_detail_wrapper_right">
        <asp:Label CssClass="item_detail_wrapper_info_first" runat="server" Text="特价优惠："></asp:Label>
        <asp:Label ID="LabelItemName" runat="server" CssClass="item_detail_wrapper_info_first" limit="16"></asp:Label><br />
        <asp:Label CssClass="item_detail_wrapper_info" runat="server" Text="原价："></asp:Label>
        <asp:Label ID="LabelItemListPrice" runat="server" Font-Size="15" CssClass="fuck"></asp:Label><br />
        <asp:Label CssClass="item_detail_wrapper_info" runat="server" Text="现价："></asp:Label>
        <asp:Label ID="LabelItemUnitCost" runat="server" Font-Size="16" CssClass="price"></asp:Label><br />
        <asp:Label CssClass="item_detail_wrapper_info" runat="server" Text="详情："></asp:Label>
        <asp:Label ID="LabelItemDescn" runat="server" Font-Size="14" limit="140"></asp:Label><br />
            <% if(showAddToCart){ %>
            <input type="submit" id="add_to_cart" itemid='<%= Item.Id %>' itemname='<%= Item.Name %>' price='<%= Item.UnitPrice %>' listPrice='<%= Item.ListPrice %>' value="加入购物车" />
            <%} %>
    </div>
    </div>
    <div class="clear"></div>
    <div style="padding-left:20px;">
        <div style="text-align:left;float:left;padding-top:13px;">
            <asp:Button runat="server" ID="Button_Add_To_Favorite"  OnClick="Button_Add_To_Favorite_Click"/>
            <asp:Button runat="server" ID="BackToShop" OnClick="BackToShop_Click" Text="返回店铺" />
        </div>
    </div>
</div>
<div class="clear"></div>