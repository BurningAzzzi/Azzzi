<%@ page title="" language="C#" masterpagefile="~/CommonInterface/CommonInterface.master" autoeventwireup="true" inherits="CommonInterface_ReadyPrint, App_Web_rzv2xkl2" %>
<%@ Register Src="~/Controls/OrderDisplay.ascx" TagPrefix="TuanStu" TagName="OrderDisplay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ManageContent" Runat="Server">
    <script type="text/javascript">
        (function ($) {
            var printAreaCount = 0;
            $.fn.printArea = function () {
                var ele = $(this);
                var idPrefix = "printArea_";
                removePrintArea(idPrefix + printAreaCount);
                printAreaCount++;
                var iframeId = idPrefix + printAreaCount;
                var iframeStyle = 'width:40mm;height:30mm;margin:0px;padding:0px;';
                iframe = document.createElement('IFRAME');
                $(iframe).attr({
                    style: iframeStyle,
                    id: iframeId
                });
                document.body.appendChild(iframe);
                var doc = iframe.contentWindow.document;
                doc.write('<link type="text/css" rel="stylesheet" href="../Content/Print.css"/>');
                doc.write('<div class="' + $(ele).attr("class") + '">' + $(ele).html()
                        + '</div>');
                doc.close();
                var frameWindow = iframe.contentWindow;
                frameWindow.close();
                frameWindow.focus();
                frameWindow.print();
            }
            var removePrintArea = function (id) {
                $("iframe#" + id).remove();
            };
        })(jQuery);
        $(function () {
            //$("#print").click(function () { $("#ordersblock").printArea(); });
            $("#print").click(function () { window.open("./PrintOrders.aspx") });
        });
    </script>
    <div style="padding-top:20px;padding-left:20px;">
    <input type="button" id="print" value="打印"  />
    <asp:Button runat="server" ID="Back" Text="返回" OnClick="Back_Click" />
        <asp:Button runat="server" Text="打印完成" ID="another" OnClick="another_Click" />
    </div>
    
    <div style="margin-top:20px;margin-left:20px;background: white;" id="ordersblock">
        <div id="templete" style="position:absolute;left:-1000px;top:-1000px;width:40mm;height:30mm;"></div>
        <asp:Repeater runat="server" ID="OrdersRepeater" OnItemDataBound="OrdersRepeater_ItemDataBound">
            <ItemTemplate>
                <TuanStu:OrderDisplay runat="server" id="OrderPrintDisplay" />
            </ItemTemplate>
        </asp:Repeater>    
    </div>
</asp:Content>

