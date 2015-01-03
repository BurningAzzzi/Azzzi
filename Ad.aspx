<%@ page title="促销活动 - " language="C#" masterpagefile="~/Site.master" autoeventwireup="true" inherits="Ad, App_Web_oi3sipj0" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <article style="width:100%;padding:15px 0;">
        <header id="ad_detail_header">
            <asp:HyperLink runat="server" ID="LINK_TO" Font-Size="30"></asp:HyperLink>
            <p>提示：点击标题进入该店铺</p>
        </header>
        <div id="ad_detail_timer">
            开始日期：<asp:Label runat="server" ID="LabelStartTime"></asp:Label>
            截止日期：<asp:Label runat="server" ID="LabelEndTime"></asp:Label>
        </div>
        <section id="ad_detail_body">
            <div style="margin:10px auto; width:800px;padding:10px;">
                <asp:HyperLink runat="server" ID="Link_to_byimg">
                <asp:Image runat="server" ID="ADPageImage" Width="800"/>
                </asp:HyperLink>
                <br />
                <h2>
                    活动详情：
                </h2>
                <div class="any_item_wrapper ad_detail_wrapper">
                    <asp:Label runat="server" ID="LabelBody">
                    </asp:Label>
                </div>
            </div>
        </section>
    </article>
</asp:Content>

