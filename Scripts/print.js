$(function () {
    var $height1 = $("#templete").height();
    $(".order_display_div").each(function () {
        var $height2 = $(this).height();
        for (var $i = 0; $i * $height1 < $height2; $i++) {
        }
        $(this).height($height1 * $i);
    });
});