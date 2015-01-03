<%@ control language="C#" autoeventwireup="true" inherits="Controls_SearchControl, App_Web_ubffupp5" %>

<div class="SearchDiv">
    <asp:TextBox CssClass="SearchTextBox" ClientIDMode="Static" runat="server" ID="KeyWords" />
    <asp:ImageButton CssClass="SearchButton" ImageUrl="~/Images/search.png" ValidationGroup="999" runat="server" ID="SiteSearchButton" ClientIDMode="Static" OnClick="Unnamed_Click" />
</div>