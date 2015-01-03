<%@ control language="C#" autoeventwireup="true" inherits="Controls_SiteMessageDisplay, App_Web_ubffupp5" %>

<script>
    $(function () {
        $("ul#rating1 a").each(function () {
            $(this).click(function () {
                var stars = $(this).html().trim();
                $("#Hidden_Comment_Score").val(stars);
                var startlist = "nostar onestar twostar threestar fourstar fivestar";
                $("ul#rating1").removeClass(startlist);
                switch (stars) {
                    case "1":
                        $("ul#rating1").addClass("onestar");
                        break;
                    case "2":
                        $("ul#rating1").addClass("twostar");
                        break;
                    case "3":
                        $("ul#rating1").addClass("threestar");
                        break;
                    case "4":
                        $("ul#rating1").addClass("fourstar");
                        break;
                    case "5":
                        $("ul#rating1").addClass("fivestar");
                        break;
                }
            });
        });
        $("ul#rating2 a").click(function () {
            var stars = $(this).html().trim();
            $("#Hidden_Comment_Time").val(stars);
            var startlist = "nostar onestar twostar threestar fourstar fivestar";
            $("ul#rating2").removeClass(startlist);
            switch (stars) {
                case "1":
                    $("ul#rating2").addClass("onestar");
                    $(".comment-stars span").html("送餐、服务速度：非常慢");
                    break;
                case "2":
                    $("ul#rating2").addClass("twostar");
                    $(".comment-stars span").html("送餐、服务速度：慢");
                    break;
                case "3":
                    $("ul#rating2").addClass("threestar");
                    $(".comment-stars span").html("送餐、服务速度：还行");
                    break;
                case "4":
                    $("ul#rating2").addClass("fourstar");
                    $(".comment-stars span").html("送餐、服务速度：快");
                    break;
                case "5":
                    $("ul#rating2").addClass("fivestar");
                    $(".comment-stars span").html("送餐、服务速度：非常快");
                    break;
            }
        });
        $(".submit_comment").click(function () {
            if ($("ul#rating1").hasClass("nostar") || $("ul#rating2").hasClass("nostar")) {
                alert("请先评分");
                return false;
            }
            if ($(".comment_textarea").val().length < 2) {
                alert("评论内容不能少于2个字");
                //alert($(".comment_textarea").val().length);
                return false;
            }
        });
        $(".comment_list_item_right_footer #up").live("click", function () {
            var $this = $(this);
            var curcount = parseInt($this.find("font").html());
            var $id = $(this).attr("commentid");
            $.post("AjaxFunctions/CommentUpDown.ashx", { command: "up", id: $id }, function (data) {
                if (data == "succeed") {
                    alert("支持成功");
                    $this.find("font").html(curcount + 1);
                } else {
                    alert(data);
                }
            })
        });
        $(".comment_list_item_right_footer #down").live("click", function () {
            var $this = $(this);
            var $id = $(this).attr("commentid");
            var curcount = parseInt($this.find("font").html());
            $.post("AjaxFunctions/CommentUpDown.ashx", { command: "down", id: $id }, function (data) {
                if (data == "succeed") {
                    alert("踩成功");
                    $this.find("font").html(curcount + 1);
                } else {
                    alert(data);
                }
            })
        });

    });
</script>

<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <div class="sitemessagecontrol_block">
           <div class="sitemessagecontrol_facediv">
               <asp:Image runat="server" ID="UserFace" CssClass="sitemessagecontrol_face" />
               <%--<img class="sitemessagecontrol_face" src="http://wenwen.soso.com/p/20091224/20091224135752-220450915.jpg" alt="face.jpg" />--%>
           </div>
            <div>
                <div class="sitemessagecontrol_userinformation">
                    <span class="sitemessagecontrol_username"><%= SiteMessageInfo.UserName %></span>
                    <span class="sitemessagecontrol_createtime"><%= SiteMessageInfo.CreateTime.ToString() %></span>
                </div>
                <div class="sitemessagecontrol_messagecontent">
                    <%= SiteMessageInfo.MessageContent %>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>