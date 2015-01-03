<%@ page title="零食铺列表 - " language="C#" masterpagefile="~/Site.master" autoeventwireup="true" inherits="Market, App_Web_oi3sipj0" %>
<%@ Register Src="~/Controls/ShopList.ascx" TagPrefix="TuanStu" TagName="ShopList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
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
    <TuanStu:ShopList runat="server" ID="ShopList" />
</asp:Content>

