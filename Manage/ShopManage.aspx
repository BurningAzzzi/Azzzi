<%@ page title="" language="C#" masterpagefile="~/Manage/ManageMasterPage.master" autoeventwireup="true" inherits="TuanStu.Web.Manage_ShopManage, App_Web_qfhcndae" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">
        $(function () {
            $(".description").each(function () {
                if ($(this).html().length > 20) {
                    $(this).html($(this).html().substr(0, 17) + "...");
                }
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="TipBarHolder" runat="Server">
    <div class="tip_bar">
        <asp:Label runat="server" ID="LabelTip"></asp:Label>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="manage_body_wrapper">

        <div id="manage_publish_wrapper">
            <fieldset>
                <legend>新增商铺</legend>
                <asp:UpdatePanel runat="server"><ContentTemplate>
                <asp:Label runat="server" Text="地区:"></asp:Label>
                <asp:RadioButtonList ID="area_radio" runat="server" AutoPostBack="true" RepeatDirection="Horizontal" OnSelectedIndexChanged="area_radio_SelectedIndexChanged" />
                <asp:Label runat="server" Text="服务范围:"></asp:Label>
                <asp:CheckBoxList runat="server" ID="SchoolsCheckBoxList" />
                    </ContentTemplate></asp:UpdatePanel>
                <asp:Label ID="Label1" runat="server" Text="店铺logo:"></asp:Label>
                <asp:FileUpload ID="ImgUpload" runat="server" /><br />
                <asp:Label ID="Label5" runat="server" Text="店优惠券:"></asp:Label>
                <asp:FileUpload ID="CouponUpload" runat="server" /><br />
                <asp:Label runat="server" Text="经营类型:"></asp:Label>
                <asp:DropDownList runat="server" ID="DropDownListShopType" Width="200"></asp:DropDownList>
                <asp:Label runat="server" Text="店名:"></asp:Label>
                <asp:TextBox ID="shop_name_box" runat="server" Width="200" ></asp:TextBox><br />
                <asp:Label ID="Label6" runat="server" Text="联系电话:"></asp:Label>
                <asp:TextBox ID="shop_phone_box" runat="server" Width="200"></asp:TextBox><br />
                <asp:Label runat="server" Text="介绍信息:"></asp:Label>
                <asp:TextBox ID="shop_info_box" runat="server" Width="444" TextMode="MultiLine" Rows="3"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="shop_phone_box" ValidationExpression="\d{6,13}" Display="Dynamic" EnableClientScript="true" ErrorMessage="手机号码格式：8-13位数字" /><br />
                <asp:Label runat="server" Text="详细地址:"></asp:Label>
                <asp:TextBox ID="shop_address_box" runat="server" Width="444" TextMode="MultiLine" Rows="3"></asp:TextBox><br />

                <asp:Label runat="server" Text="店主选择:"></asp:Label>
                <asp:ListBox runat="server" ID="ListBoxShopManagers" SelectionMode="Single" Width="200" Height="100px"></asp:ListBox>
                <asp:Button runat="server" ID="publish_Button" Text="发布" OnClick="publish_Button_Click" />

            </fieldset>
        </div>
        <div id="manage_list_wrapper">
            <div>
                <div class="manage_list_header_left">
                    地区选择：
                    <asp:DropDownList runat="server" ID="shop_area_list" OnSelectedIndexChanged="shop_area_list_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>

                </div>
                <div class="manage_list_header_left">
                    类型选择：
                    <asp:DropDownList runat="server" ID="DropDownList_type" OnSelectedIndexChanged="DropDownList_type_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>

                </div>
                <div class="manage_list_header_right">
                    <asp:TextBox ID="shop_search_box" runat="server"></asp:TextBox>
                    <asp:Button ID="shop_serch_button" runat="server" Text="搜索" OnClick="shop_serch_button_Click" />
                </div>
            </div>
            <div class="clear"></div>
                    <div>
                        <asp:Repeater runat="server" ID="shop_list_repeater" OnItemDataBound="shop_list_repeater_ItemDataBound">
                            <HeaderTemplate>
                                <table>
                                    <tr>
                                        <th>商铺Logo</th>
                                        <th>店名</th>
                                        <th>描述</th>
                                        <th>地址</th>
                                        <th>电话</th>
                                        <th>操作</th>
                                        <th>有效</th>
                                    </tr>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        
                                            <img id="Img1" style="width: 100px; height: 100px;" runat="server" src='<%# Eval("Image") %>' alt='<%# Eval("Name") %>' />
                                    </td>
                                    <td>
                                        <asp:HyperLink runat="server" ID="LinkShopName" Text='<%# Eval("Name") %>'></asp:HyperLink>
                                    </td>
                                    <td>
                                        <p class="description" style="max-width: 150px;"><%# Eval("Description") %></p>
                                    </td>
                                    <td>
                                        <p><%# Eval("Address") %></p>
                                    </td>
                                    <td>
                                        <p><%# Eval("Phone") %></p>
                                    </td>
                                    <td>
                                        <asp:Button ID="Button1" runat="server" Text="编辑" CommandName="Edit" CommandArgument='<%# Eval("ShopId") %>' OnCommand="Shop_Command" />
                                        <asp:Button ID="Button2" runat="server" Text='<%# bool.Parse(Eval("Enable").ToString())?"删除":"恢复" %>' CommandName='<%# bool.Parse(Eval("Enable").ToString())?"Delete":"Recover" %>' CommandArgument='<%# Eval("ShopId") %>' OnCommand="Shop_Command" /></td>
                                    <td style="width: 50px; text-align: center; <%# bool.Parse(Eval("Enable").ToString())?"color:green;": "color:gray;" %>">
                                        <p>
                                            <%# bool.Parse(Eval("Enable").ToString())?"有效":"失效" %>
                                        </p>
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <FooterTemplate>
                                </table>
                            </FooterTemplate>
                        </asp:Repeater>
                        <div class="pagging">
                            <asp:Label ID="Label2" CssClass="page_label" runat="server" Text="当前页：" />
                            <asp:Label CssClass="page_label" runat="server" ID="CurrentPage" Text="1" />
                            <asp:LinkButton CssClass="page_navigation" runat="server" ID="PreviewButton" OnClick="PreviewButton_Click" Text="上一页" />
                            <asp:LinkButton CssClass="page_navigation" runat="server" ID="NextButton" OnClick="NextButton_Click" Text="下一页" />
                            <asp:Label ID="Label3" CssClass="page_label" runat="server" Text="共" />
                            <asp:Label CssClass="page_label" runat="server" ID="PageCount" />
                            <asp:Label ID="Label4" CssClass="page_label" Style="margin-right: 10px;" runat="server" Text="页" />
                        </div>
                    </div>
        </div>
    </div>
</asp:Content>

