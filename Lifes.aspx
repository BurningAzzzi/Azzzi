<%@ page title="商铺列表 - " language="C#" masterpagefile="~/Site.master" autoeventwireup="true" inherits="Lifes, App_Web_oi3sipj0" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link href="Content/Hotel.css" rel="stylesheet" />
    <link href="Content/Controls.css" rel="stylesheet" />
    <asp:PlaceHolder ID="PlaceHolder1" runat="server">
        <script src="<%: ResolveUrl("~/Plugin/slide/jquery.slides.min.js") %>"></script>
        <script type="text/javascript">
            $(function () {
                $('#slides').slidesjs({
                    height: 490,
                    navigation: false
                });
            });
		</script>
    </asp:PlaceHolder>
    <link type="text/css" href="<%: ResolveUrl("~/Plugin/slide/example.css") %>" rel="stylesheet" />
    <link type="text/css" href="<%: ResolveUrl("~/Content/IndexPage.css") %>" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    <section class="featured">
        <div class="content-wrapper">
            <!-- SlidesJS Required: Start Slides -->
              <!-- The container is used to define the width of the slideshow -->
              <div class="container">
                <div id="slides">
                    <asp:Repeater runat="server" ID="RepAdvertList" OnItemDataBound="RepAdvertList_ItemDataBound">
                        <ItemTemplate>
                            <asp:HyperLink Target="_blank" runat="server" CssClass="defautpageslide_a"  ID="LINK_TO"><img id="Img1" runat="server" src='<%# Eval("Image") %>' alt='<%# Eval("Detail") %>'/></asp:HyperLink>
                        </ItemTemplate>
                    </asp:Repeater>
                  
                  <a  class="slidesjs-previous slidesjs-navigation"><i class="icon-chevron-left icon-large"></i></a>
                  <a  class="slidesjs-next slidesjs-navigation"><i class="icon-chevron-right icon-large"></i></a>
                </div>
              </div>
              <!-- End SlidesJS Required: Start Slides -->

        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="shop_list">
        <asp:Repeater runat="server" ID="HotelsRepeater" OnItemDataBound="HotelsRepeater_ItemDataBound">
            <HeaderTemplate>
            </HeaderTemplate>
            <ItemTemplate>
                <section class="any_item_wrapper">
                    <div class="list_top">
					    <a id="A1" target="_blank" runat="server" limit="12" href='<%# String.Format("~/Life.aspx?id={0}",Eval("ShopId")) %>' class="shop_name">
						    <%# Eval("Name") %>
					    </a>
                        <div class="list_star_wrapper">
                            <asp:Panel runat="server" ID="Label_Shop_Star" CssClass="stars"></asp:Panel>
                            <div class="stars-none"></div>
                            <asp:Label runat="server" CssClass="shop_score" ID="Label_Shop_Score"></asp:Label>
                        </div>
                        <div class="clear"></div>
				    </div>
				    <div class="descn" limit="55">
					    <%# Eval("Description") %><br />
				    </div>
                    <div class="bottom">
                        <span class="tip">地址：</span><font limit="25"><%# Eval("Address") %></font><br />
                        <span class="tip">电话：</span><font limit="15"><%# Eval("Phone") %></font><br />
                    </div>
                </section>
            </ItemTemplate>
            <FooterTemplate>
            </FooterTemplate>
        </asp:Repeater>
        <div class="clear"></div>
    </div>
    <div>
        <asp:Panel runat="server" Height="210" ID="PanelItemIsNull">
            <div style="padding:40px;font-size:48px;text-align:center;">敬请期待！</div>
        </asp:Panel>
    </div>
</asp:Content>

