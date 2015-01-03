<%@ control language="C#" autoeventwireup="true" inherits="TuanStu.Controls_AreaChoose, App_Web_ubffupp5" %>

<script type="text/javascript">
    function switchAreaOpen() {
        $(".area_choose_wrapper").animate({ left: "0px" }, 500, function () {
        });
    }
    function switchAreaClose() {
        $(".area_choose_wrapper").animate({ left: "-820px" }, 500, function () {
        });
    }
    $(function () {
        $("#area_choose_school").toggle(switchAreaOpen, switchAreaClose);
    });
</script>

<div class="area_choose_wrapper">
    <div class="area_choose_content">
        <asp:Repeater ID="RepAreaList" runat="server" OnItemDataBound="RepSchoolList_ItemDataBound">
            <HeaderTemplate>
                <p style="font-size:18px;margin:0px;padding-left:10px;">请选择您所在的位置：</p>
            </HeaderTemplate>
            <ItemTemplate>
                <div class="area_choose_list">
                    <ul>
                        <li class=""><%# Eval("Name") %></li>
                        <asp:Repeater runat="server" ID="RepSchoolList">
                            <ItemTemplate>
                                <li>
                                    <asp:Button class="area_button"  ID="ButtonSwitchSchool"  runat="server" CommandArgument='<%# Eval("AddressId") %>' Text='<%# Eval("Name") %>' OnCommand="ButtonSwitchSchool_Command"/>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </ItemTemplate>
            <SeparatorTemplate>
            </SeparatorTemplate>
            <FooterTemplate>
            </FooterTemplate>
        </asp:Repeater>
    </div>
    <div class="area_choose_footer">
        <img class="area_choose_circle" width="1" height="1" runat="server" src="~/Images/AreaBgCircle.png" />
    </div>
    <div id="area_choose_school"><asp:Label CssClass="school_text" runat="server" ID="School" /></div>
</div>


