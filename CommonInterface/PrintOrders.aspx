<%@ page language="C#" autoeventwireup="true" inherits="CommonInterface_PrintOrders, App_Web_eq4e3gqo" %>
<%@ Register Src="~/Controls/OrderPrintDisplay.ascx" TagPrefix="TuanStu" TagName="OrderDisplay" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <link type="text/css" rel="stylesheet" href="../Content/Print.css">
        <script src="../Scripts/jquery-1.8.2.min.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(function () {
                var $height1 = $("#templete").height();
                $(".order_display_div").each(function () {
                    var $height2 = $(this).height();
                    for (var $i = 0; $i * $height1 < $height2; $i++) {
                    }
                    $(this).height($height1 * $i);
                });
                window.print();
            });
        </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="ordersblock">
            <div id="templete" style="position:absolute;left:-1000px;top:-1000px;width:40mm;height:30mm;"></div>
            <asp:Repeater runat="server" ID="OrdersRepeater" OnItemDataBound="OrdersRepeater_ItemDataBound">
                <ItemTemplate>
                    <TuanStu:OrderDisplay runat="server" ID="OrderPrintDisplay" />
                    <div style="clear:both;height:0px;background:red;"></div>
                </ItemTemplate>
            </asp:Repeater>    
        </div>
    </form>
</body>
</html>
