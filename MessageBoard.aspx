<%@ page title="" language="C#" masterpagefile="~/Site.master" autoeventwireup="true" inherits="MessageBoard_MessageBoard, App_Web_oi3sipj0" %>

<%@ Register Src="~/Controls/SiteMessageDisplay.ascx" TagName="SiteMessageDisplay" TagPrefix="TuanStu" %>

<%@ Register Src="~/Controls/AddSiteMessage.ascx" TagName="AddSiteMessage" TagPrefix="TuanStu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <section id="MessageBoard_Content">
        <section class="Content_Head">
            <h1 style="color:orange; font-size:40px;margin:0px;text-shadow:0px 0px 1px black">少年，你有任何话都可以告诉我哦0(^_^)0</h1>
        </section>
        <section class="MessageBoard_Content_Content">
            <div>
                <asp:Repeater runat="server" ID="SiteMessages" OnItemDataBound="SiteMessages_ItemDataBound">
                    <ItemTemplate>
                        <TuanStu:SiteMessageDisplay runat="server" ID="SiteMessage1" />
                    </ItemTemplate>
                </asp:Repeater>
                        <TuanStu:AddSiteMessage runat="server" ID="AddSiteMessage" />
            </div>
        </section>
    </section>
</asp:Content>

