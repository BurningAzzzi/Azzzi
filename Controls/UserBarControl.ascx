<%@ control language="C#" autoeventwireup="true" inherits="Controls_UserBarControl, App_Web_ubffupp5" %>
<script src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js" type="text/javascript" charset="utf-8"></script>

<script>
    $(function () {
        var isHover = false;
        $("#followUs,#follow_panel").mousemove(function () {
            isHover = true;
            $("#follow_panel").slideDown();
        });
        $("#followUs,#follow_panel").mouseleave(function () {
            isHover = false;
            setTimeout(function () {
                if(!isHover){
                    $("#follow_panel").slideUp();
                }
            },1000);
        });
    });
</script>
<div class="top_user_bar">
    <div class="top_user_bar_content">
        <div class="top_user_bar_left">
            <nav>
                <a runat="server" href="~/Default.aspx">首页</a>
                <a id="followUs"  >关注我们</a>
                <a runat="server" href="~/Contact.aspx" >联系客服</a>
                <a runat="server" href="~/About.aspx" >关于</a>
            </nav>
            <div id="follow_panel">
                <div id="follow_panel_arrow"></div>
                <div style="top: -25px;position: relative;">
                    <p style="color:black;font-size:18px;line-height:22px;">新浪微博</p><br />
                    <img runat="server" src="~/Images/xinlangwb.png"/>
                    <iframe allowtransparency="" border="0" frameborder="0" height="22" marginheight="0" marginwidth="0" scrolling="no" src='http://widget.weibo.com/relationship/followbutton.php?width=200&amp;height=22&amp;uid=<%= ConfigurationManager.AppSettings["WeiboId"].ToString() %>&amp;style=5&amp;btn=red&amp;dpc=1' style="width: 64px; height: 22px;margin-left:10px" width="200"></iframe>
                </div>
                <div class="clear-fix"></div>
                <div style="padding-top:10px;top: -25px;position: relative;">
                    <p style="color:black;font-size:18px;line-height:27px;">微信二维码</p><br />
                    <asp:Image runat="server" ImageUrl="~/Images/二维码-8cm版.jpg" Height="180" Width="180" />
                </div>
            </div>
        </div>
        <div class="top_user_bar_mid">
            <asp:LoginView ID="lgnView" runat="server">
                <LoggedInTemplate>
                    <asp:LoginName ID="lgnName" runat="server" CssClass="LoginName" FormatString="欢迎 {0} !"/>
                    <asp:LoginStatus runat="server" LogoutText="注销"/>
                    
                </LoggedInTemplate>
                <AnonymousTemplate>
                    <p>亲,欢迎来到阿谁网,请<asp:LoginStatus CssClass="loginhref" ID="LoginStatus1" runat="server" LoginText="登录"  />，或<a runat="server" class="loginhref" href="~/Account/Register.aspx">免费注册</a></p>
                    
                </AnonymousTemplate>                   
                 
            </asp:LoginView>
        </div>

        <div class="top_user_bar_right">
            <nav>
                <asp:LoginView runat="server">
                    <RoleGroups>
                        <asp:RoleGroup Roles="Administrator">
                            <ContentTemplate>
                                <a  runat="server" href="~/Manage">后台管理</a>
                                <asp:LoginView runat="server">
                                    <RoleGroups>
                                        <asp:RoleGroup Roles="ShopManager">
                                            <ContentTemplate>
                                                <a runat="server" href="~/CommonInterface/AdManage.aspx">我的产品</a>
                                            </ContentTemplate>
                                        </asp:RoleGroup>
                                    </RoleGroups>
                                </asp:LoginView>
                            </ContentTemplate>

                        </asp:RoleGroup>
                        <asp:RoleGroup Roles="ShopManager">
                            <ContentTemplate>
                                <a runat="server" href="~/CommonInterface/AdManage.aspx">我的产品</a>
                            </ContentTemplate>
                        </asp:RoleGroup>
                    </RoleGroups>              
                </asp:LoginView>
                <a runat="server" href="~/Account/UserInfo.aspx">个人资料</a>
                <a runat="server" href="~/ShoppingCart.aspx">
                    <img id="Img1" runat="server" width="20" style="line-height:40px" src="~/Images/ShoppingCatIcon.png"/>
                    购物车</a>
                <a runat="server" href="~/Favorites.aspx">收藏夹</a>
                <a runat="server" href="~/Account/Orders.aspx">购物记录</a>
            </nav>
        </div>
    </div>
</div>
<div class="top_user_bar_space"></div>
