<%@ control language="C#" autoeventwireup="true" inherits="Controls_LifeList, App_Web_ubffupp5" %>
<script>
    $(function () {
        var $shoppingcart = $(".shoppingcart_add");
        $shoppingcart.mouseenter(function () {
            var $this = $(this);
            $this.animate({ bottom: "6px" }, "fast").animate({ bottom: "0px" }, "fast");
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
            $target.animate({ top: '-30px', opacity: '0.7' }, "fast").animate({ right: '-600px', width: '0', height: '0', opacity: '0' }, "middle", function () {
                $(this).css({ right: '0px', top: '0px', opacity: '1', width: $width, height: $height });
            });
        }
    });
</script>
<p class="ShopTypeTitle">便捷生活</p>
<asp:Repeater runat="server" ID="RepItemList">
    <HeaderTemplate>
        
    </HeaderTemplate>
             
    <ItemTemplate>
        <div class="any_item_wrapper room_list_panel">
            <div class="top" limit="14"><span><a id="A1" target="_blank" runat="server" href='<%# String.Format("~/Item.aspx?id={0}",Eval("Id")) %>'><%# Eval("Name") %></a></span></div>
            <div class="middle">
                <div limit="50">
                    <a id="A2" target="_blank" runat="server" href='<%# String.Format("~/Item.aspx?id={0}",Eval("Id")) %>'><img id="Img2" runat="server" src='<%# Eval("Image") %>' alt='<%# Eval("Descn") %>' targetID='<%# Eval("Id") %>' style="position:relative;"/></a>
                </div>
            </div>
            <div class="bottom" >
                <span style="float:left;line-height:26px;">
                    原:<span class="listprice"><%# Eval("ListPrice") %></span>
                    现:<span class="unitprice"><%# Eval("UnitPrice") %></span>
                </span>
                <span style="float:right;position:absolute;">
                    <a class="shoppingcart_add" style="text-align: right;"  itemid='<%# Eval("Id") %>' itemname='<%# Eval("Name") %>' price='<%# Eval("UnitPrice") %>' listPrice='<%# Eval("ListPrice") %>'><font style="color:orange;font-weight: bold;">加入购物车</font><img id="Img1" width="25" title="添加到购物车" runat="server" src="~/Images/ShoppingCatIcon.png" /></a>
                </span>
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