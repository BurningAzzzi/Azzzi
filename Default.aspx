<%@ page title="" language="C#" masterpagefile="~/Site.Master" autoeventwireup="true" inherits="_Default, App_Web_oi3sipj0" %>

<%@ Register Src="~/Controls/IndexPageAdvertisementDisplay.ascx" TagPrefix="TuanStu" TagName="IndexPageAdvertisementDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <asp:PlaceHolder runat="server">
        <script src="<%: ResolveUrl("~/Plugin/slide/jquery.slides.min.js") %>"></script>
        <script type="text/javascript">
            $(function () {
                $('#slides').slidesjs({
                    height:490,
                    navigation: false
                });
            });
		</script>
    </asp:PlaceHolder>
    <link type="text/css" href="<%: ResolveUrl("~/Plugin/slide/example.css") %>" rel="stylesheet" />
    <link type="text/css" href="<%: ResolveUrl("~/Content/IndexPage.css") %>" rel="stylesheet" />
</asp:Content>
<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <!-- SlidesJS Required: Start Slides -->
              <!-- The container is used to define the width of the slideshow -->
              <div class="container">
                <div id="slides">
                    <asp:Repeater runat="server" ID="RepAdvertList" OnItemDataBound="RepAdvertList_ItemDataBound">
                        <ItemTemplate>
                            <asp:HyperLink Target="_blank" runat="server" CssClass="defautpageslide_a"  ID="LINK_TO"><img runat="server" src='<%# Eval("Image") %>' alt='<%# Eval("Detail") %>'/></asp:HyperLink>
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

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="AdvertisementListDiv">

        <TuanStu:IndexPageAdvertisementDisplay runat="server" ID="BenDiIndexPageAdvertisementDisplay" />
        <div class="AdvertisementBottomDiv"></div>

        <TuanStu:IndexPageAdvertisementDisplay runat="server" ID="CanYinIndexPageAdvertisementDisplay" />
        <div class="AdvertisementBottomDiv"></div>

        <TuanStu:IndexPageAdvertisementDisplay runat="server" ID="MarketIndexPageAdvertisementDisplay" />
        <div class="AdvertisementBottomDiv"></div>

        <%--<TuanStu:IndexPageAdvertisementDisplay runat="server" ID="ZhuSuIndexPageAdvertisementDisplay" />
        <div class="AdvertisementBottomDiv"></div>--%>

        <%--<TuanStu:IndexPageAdvertisementDisplay runat="server" ID="ZhongJieIndexPageAdvertisementDisplay" />
        <div class="AdvertisementBottomDiv"></div>--%>
        

        
    </div>
</asp:Content>