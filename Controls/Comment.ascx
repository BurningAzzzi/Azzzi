<%@ control language="C#" autoeventwireup="true" inherits="Controls_CommentbyItem, App_Web_ubffupp5" %>

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
            if ($("ul#rating1").hasClass("nostar")|| $("ul#rating2").hasClass("nostar")) {
                alert("请先评分");
                return false;
            }
            if ($(".comment_textarea").val().length < 2) {
                alert("评论内容不能少于2个字");
                //alert($(".comment_textarea").val().length);
                return false;
            }
        });
        $(".comment_list_item_right_footer #up").live("click",function () {
            var $this = $(this);
            var curcount =  parseInt($this.find("font").html());
            var $id = $(this).attr("commentid");
            $.post("AjaxFunctions/CommentUpDown.ashx", { command: "up", id: $id }, function (data) {
                if (data == "succeed") {
                    alert("支持成功");
                    $this.find("font").html(curcount+1);
                } else {
                    alert(data);
                }
            })
        });
        $(".comment_list_item_right_footer #down").live("click",function () {
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
<p class="ShopTypeTitle">评论</p>
<asp:HiddenField runat="server" ID="HiddenItemId" />
<asp:LoginView runat="server" ID="LoginViewComment">
    <AnonymousTemplate>
        <div class="any_item_wrapper comment_list_panel">
            <asp:LoginStatus ID="LoginStatus1" runat="server" LoginText="登录" Font-Bold="true"/>后才可以评论
        </div>
    </AnonymousTemplate>
    <LoggedInTemplate>
        <div class="any_item_wrapper comment_list_panel" style="height:150px;">
            <div class="comment_list_item" style="height:120px;">
                <div class="col_1 float-left" style="width:120px;">
                    <asp:Image runat="server" ID="ImageMyIcon" Height="80" Width="80" />
                    <div class="comment_list_username"><a limit="10" ><%= userNickName %></a></div>
                </div>
                <div class="col_2 float-left" style="width:520px;">
                    <asp:TextBox runat="server"  TextMode="MultiLine" MaxLength="200" CssClass="comment_textarea" Rows="4" ID="TextBox_Comment"></asp:TextBox>
                        <asp:HiddenField runat="server" ClientIDMode="Static" ID="Hidden_Comment_Score" Value="5"></asp:HiddenField>
                        <asp:HiddenField runat="server" ClientIDMode="Static" ID="Hidden_Comment_Time" Value="5"></asp:HiddenField>
                    <div class="comment-stars">
                        整体评分:<ul class="rating nostar" id="rating1">
	                        <li class="one"><a title="1星">1</a></li>
	                        <li class="two"><a title="2星">2</a></li>
	                        <li class="three"><a title="3星">3</a></li>
	                        <li class="four"><a title="4星">4</a></li>
	                        <li class="five"><a title="5星">5</a></li>
                        </ul>
                        
                    </div>
                    <% if(commentType.Trim().Equals("shop")){ %>
                    <div class="comment-stars">
                        <span>送餐、服务速度:</span><ul class="rating nostar" id="rating2">
	                        <li class="one"><a title="1星">1</a></li>
	                        <li class="two"><a title="2星">2</a></li>
	                        <li class="three"><a title="3星">3</a></li>
	                        <li class="four"><a title="4星">4</a></li>
	                        <li class="five"><a title="5星">5</a></li>
                        </ul>
                    </div>
                    <%} %>
                    <div class="float-right comment-add-botton">
                        <asp:Button ID="Button_upload" runat="server" CssClass="submit_comment" Text="提交" OnClick="Button_upload_Click"/>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </LoggedInTemplate>
</asp:LoginView>
<asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
<div class="any_item_wrapper comment_list_panel">
<asp:Repeater runat="server" ID="RepCommentList" OnItemDataBound="RepCommentList_ItemDataBound">
    
    <HeaderTemplate>
    </HeaderTemplate>
    <ItemTemplate>
        <div class="comment_list_item">
            <div class="col_1 float-left">
                <asp:Image runat="server" ID="ImageUserIcon" Height="60" Width="60" />
                <div class="comment_list_username"><a ><asp:Label runat="server" ID="LabelCommentItemName" limit="10" ></asp:Label></a></div>
            </div>
            <div class="col_2 float-right">
                <header>
                    <div class="float-left" style="height:20px;">
                        <span class="comment_list_score" style="width:<%# Int32.Parse(Eval("Score").ToString())*16%>px;"></span>
                        <span class="comment_list_score_space"></span>
                    </div>
                    <div class="float-right">
                        <%# Convert.ToDateTime(Eval("Datetime")).ToString("yyyy-MM-dd HH:mm:ss") %>
                    </div>
                </header>
                <section>
                    <p style="word-break:break-all;padding:0;margin:0;" limit="110">
                    <%# Eval("Comment") %>

                    </p>
                </section>
                <div class="comment_list_item_right_footer">
                    <span id="up" commentid='<%# Eval("Id") %>'>顶(<font style="color:red;"><%# Eval("Good") %></font>)</span>
                    <span id="down" commentid='<%# Eval("Id") %>'>踩(<font style="color:gray;"><%# Eval("Bad") %></font>)</span>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </ItemTemplate>
    <FooterTemplate>

    </FooterTemplate>
    <SeparatorTemplate>
        <div class="comment_list_panel_separator"></div>
    </SeparatorTemplate>
</asp:Repeater>
    <div class="pagging">
        <asp:Label CssClass="page_label" runat="server" Text="当前页：" />
        <asp:Label CssClass="page_label" runat="server" ID="CurrentPage" Text="1" />
        <asp:LinkButton CssClass="page_navigation" runat="server" ID="PreviewButton" OnClick="PreviewButton_Click" Text="上一页" />
        <asp:LinkButton CssClass="page_navigation" runat="server" ID="NextButton" OnClick="NextButton_Click" Text="下一页" />
        <asp:Label CssClass="page_label" runat="server" Text="共" />
        <asp:Label CssClass="page_label" runat="server" ID="PageCount" />
        <asp:Label CssClass="page_label" style="margin-right:10px;" runat="server" Text="页" />
    </div>
</div>
    </ContentTemplate></asp:UpdatePanel>