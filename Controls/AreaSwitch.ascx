<%@ control language="C#" autoeventwireup="true" inherits="Controls_AreaSwitch, App_Web_ubffupp5" %>

<div class="area_switch_wrapper">
    <div class="area_switch_content">
        <asp:Repeater ID="RepAreaList" runat="server" OnItemDataBound="RepSchoolList_ItemDataBound">
            <HeaderTemplate>
                &nbsp 请选择您所在的区域：
            </HeaderTemplate>
            <ItemTemplate>
                <div class="area_swich_list">
                    <ul>
                        <li class="area"><%# Eval("Name") %></li>
                        <asp:Repeater runat="server" ID="RepSchoolList">
                            <ItemTemplate>
                                <li>
                                    <asp:Button class="area_button" style="font-size:20px;padding:0;margin:0;border:0;background-color:inherit;" ID="ButtonSwitchSchool"  runat="server" CommandArgument='<%# Eval("AddressId") %>' Text='<%# Eval("Name") %>' OnCommand="ButtonSwitchSchool_Command"/>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </ItemTemplate>
            <SeparatorTemplate>
                <div class="separator"></div>
            </SeparatorTemplate>
            <FooterTemplate>

            </FooterTemplate>
        </asp:Repeater>
    </div>
    <div class="area_switch_footer">
        <a class="area_switch_slide_up"  >收起</a>
    </div>
</div>

