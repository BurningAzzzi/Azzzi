<%@ control language="C#" autoeventwireup="true" inherits="Controls_HotelDetail, App_Web_ubffupp5" %>
<%--<script>
    $(function () {
        $(".pics .smallerpic").each(function () {
            var random = Math.random() * 100 + 150;
            $(this).width(random);
        });
    });
</script>--%>
<style type="text/css">
    #pics #picsdiv1 img {
        position:relative;
        min-height:110px;
        min-width:155px;
        height:110px;
    }
    #pics div {
        overflow:hidden;
    }
</style>
<div style="background:red;">
    <div class="pics">
        <%--<div class="biggestpic">
            <img src="Images/HotelPics/1.jpg" />
        </div>
        <div class="smallerpic">
            <img src="Images/HotelPics/1.jpg" />
        </div>
        <div class="smallerpic">
            <img src="Images/HotelPics/1.jpg" />
        </div>
        <div class="smallerpic">
            <img src="Images/HotelPics/1.jpg" />
        </div>
        <div class="smallerpic">
            <img src="Images/HotelPics/1.jpg" />
        </div>
        <div class="smallerpic">
            <img src="Images/HotelPics/1.jpg" />
        </div>
        <div class="smallerpic">
            <img src="Images/HotelPics/1.jpg" />
        </div>
        <div class="smallerpic">
            <img src="Images/HotelPics/1.jpg" />
        </div>
        <div class="smallerpic">
            <img src="Images/HotelPics/1.jpg" />
        </div>
        <div class="clear"></div>--%>
        <div id="picsdiv1" style="width:425px;height:220px;float:left;">
            <div style="height:110px;">
                <div id="picsdiv1top1" style="width:160px;height:110px;float:left;">
                    <img src="Images/HotelPics/2.jpg" style="margin-left:2px;margin-top:2px;" />
                </div>
                <div id="picsdiv1top2" style="width:120px;height:110px;float:left;">
                    <img src="Images/HotelPics/3.jpg" style="margin-left:2px;margin-top:2px;"  />
                </div>
                <div id="picsdiv1top3" style="width:136px;height:110px;float:left;">
                    <img src="Images/HotelPics/4.jpg" style="margin-left:2px;margin-top:2px;" />
                </div>
            </div>
            <div>
                <div id="picsdiv1bottom2" style="width:120px;height:110px;float:left;">
                    <img src="Images/HotelPics/5.jpg"  style="margin-left:2px;margin-top:2px;" />
                </div>
                <div id="picsdiv1bottom1" style="width:160px;height:110px;float:left;">
                    <img src="Images/HotelPics/6.jpg"  style="margin-left:2px;margin-top:2px;" />
                </div>
                <div id="picsdiv1bottom3" style="width:136px;height:110px;float:left;">
                    <img src="Images/HotelPics/7.jpg"  style="margin-left:2px;margin-top:2px;" />
                </div>
            </div>
        </div>
    </div>
</div>