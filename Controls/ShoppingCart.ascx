<%@ control language="C#" autoeventwireup="true" inherits="Controls_ShoppingCart, App_Web_ubffupp5" %>
<script>
    $(function () {
        GetTotalPrice();
        //$(".ArticleTitleDiv").click(function () {
        //    alert($(".shopping_cart_panel").position().top);
        //});
        var $temp = $(".shopping_cart_panel");
        var currTop = $temp.position().top - 44;

        $("#thatsadeal").click(function () {
            $("#confirm_window").fadeIn("fast");
        });
        $("#cancel_button").click(function () {
            $("#confirm_window").fadeOut("fast");
        });

        $(".complete_button").click(function () {
            $("#confirm_window").fadeOut("fast");
        });

        $(document).scroll(function () {
            
            if ($(document).scrollTop() > currTop) {
                if (!$temp.hasClass("fixed_top")) {
                    $temp.addClass("fixed_top");
                }
            }
            else {
                if ($temp.hasClass("fixed_top")) {
                    $temp.removeClass("fixed_top");
                }
            }
        });
        /////////////////
        $(".shopping_cart_item_add_reduce a").live("click", function () {
            var $this = $(this);
            var $itemid = $this.attr("itemid");
            var $command = $this.attr("command");
            var $currItem = $this.parent(":first").find(".curr_quantity:first");
            var $currCount = parseInt($currItem.html());
            $.post("AjaxFunctions/AddItemToCart.ashx", { itemid: $itemid, commandName: $command }, function (data) {
                if (data == "add") {
                    $currItem.html($currCount + 1);
                    //alert(data);
                }
                else if (data == "reduce") {
                    if ($currCount == 1) {
                        $this.parents("li:first").remove();
                    } else {
                        $currItem.html($currCount - 1);
                    }
                }
                GetTotalPrice();
            });
        });
        $("#shop_cart_totalPrice").click(function () {
            GetTotalPrice();
        });
        function GetTotalPrice(){
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
        //AnimationBuy();
        function AnimationBuy() {
            $("#thatsadeal").animate({ bottom: '-=20' }, 500).animate({ bottom: '+=20' }, 500, AnimationBuy);//在这轮动画结束的时候再调用自己，使动画无限循环下去 
        }
    });
</script>

<div class="any_item_wrapper shopping_cart_panel">
    <span class="shoppingCartName">
        <asp:Label runat="server" ID="LabelShopName" limit="8"></asp:Label>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/ShoppingCatIcon.png"/>
    </span>
    <ul class="shopping_cart_panel_head">
        <li>名称</li>
        <li>单价</li>
        <li>数量</li>
    </ul>
    <div class="clear-fix" style="border-bottom:dotted 1px black;width:242px;"></div>
    <ul class="shopping_cart_panel_item_list">
<asp:Repeater ID="RepItemList" runat="server">
    <HeaderTemplate>
        
    </HeaderTemplate>
    <ItemTemplate>
        <%--<% if(HasItem == false){ %>
            <li class="">购物车还是空的，赶紧选购吧</li>
        <%} %>--%>
        <li>
            <span limit="18"><%# Eval("Name") %></span>
            <span style="display:none" id="listPrice"><%# Eval("ListPrice") %></span>
            <span style="text-align:center;"><font id="unitprice"><%# Eval("UnitCost") %></font></span>
            <span class="shopping_cart_item_add_reduce"><a itemid='<%# Eval("ItemId") %>' command="reduce">- </a><font id="quantity" class="curr_quantity"><%# Eval("Quantity") %></font><a  itemid='<%# Eval("ItemId") %>' command="add"> +</a></span>
        </li>
    </ItemTemplate>
    <FooterTemplate>
        
    </FooterTemplate>

</asp:Repeater>
</ul>
<p style="display: inline;font-size: 16px;font-weight: bold;">总计：</p><span id="shop_cart_totalPrice">0</span>元
    <br /><p style="display: inline;font-size: 16px;font-weight: bold;">节省：</p><span id="shop_cart_jieshengPrice">0</span>元
<a id="thatsadeal" style="border-top: dotted 1px black;margin-right: 14px;padding-top:10px;position:relative;">点这边购买！</a>
</div>
<div id="confirm_window">
    <div style="padding:15px;font-size:23px;height:auto;">
        <asp:Label runat="server" ID="xxzcdsvgafads">请拨打订餐、购物电话：</asp:Label>
        <asp:Label runat="server" ID="LabelPhoneNumber" CssClass="shop_phoneNumber"></asp:Label>
        <asp:Label runat="server" ID="LabelFruitMessage"></asp:Label>
        <span style="text-align:center;display:block;font-size:14px;">
            是否已经完成购物？(<font style="color:red;">注意:</font>点击完成后将<font style="color:red;">清空购物车</font>，可在<a runat="server" style="color:orange;font-size:14px;" href="~/Account/Orders.aspx">购物记录</a>中查看已购买的内容)
        </span>
        <span style="text-align:right;display:block;">
            <asp:Button runat="server" CssClass="complete_button" Text="完成" OnClick="complete_button_Click"></asp:Button>
            <a id="cancel_button">取消</a>
        </span>
    </div>
</div>