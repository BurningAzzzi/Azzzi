<%@ control language="C#" autoeventwireup="true" inherits="ViewSwitcher, App_Web_la4bgnin" %>
<div id="viewSwitcher">
    <%: CurrentView %> view | <a href="<%: SwitchUrl %>">Switch to <%: AlternateView %></a>
</div>
