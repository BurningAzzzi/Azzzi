$(function () {
    $(".area-name-switch").click(function () {
        $(".area_switch_wrapper").slideDown("fast");
    });
    $(".area_switch_slide_up").click(function () {
        $(".area_switch_wrapper").slideUp("fast");
    });
    $(".area_button").click(function () {
        $(".area_switch_wrapper").slideUp("fast");
        //window.location.href = window.location.href
        return true;
    });
});