<%@ page title="" language="C#" masterpagefile="~/CommonInterface/CommonInterface.master" autoeventwireup="true" inherits="CommonInterface_AdManage, App_Web_rzv2xkl2" %>


<asp:Content ID="Content5" ContentPlaceHolderID="ManageContent" runat="Server">
    <div id="manage_body_wrapper">
        <div id="manage_publish_wrapper">
            <fieldset class="any_item_wrapper manage_wrapper">
                <legend>发布新广告和活动</legend>
                <asp:Label CssClass="bold" ID="Label2" runat="server" Text="商铺："></asp:Label>
                <asp:Label ID="ShopName" runat="server"></asp:Label><br />
                <asp:Label CssClass="bold" ID="Label4" runat="server" Text="活动图片："></asp:Label>
                <asp:FileUpload ID="ImgUpload" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="ImgUpload" ForeColor="Red" runat="server" ErrorMessage="不能为空" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator><br />
                <asp:Label CssClass="bold" runat="server" Text="活动截止时间："></asp:Label>
                <div class="AdManage_Calendar">
                    <asp:UpdatePanel runat="server" UpdateMode="Always">
                        <ContentTemplate>
                            <asp:Calendar runat="server" ID="CalendarEndDate"></asp:Calendar>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
                <asp:Label CssClass="bold" ID="Label3" runat="server" Text="详细内容："></asp:Label><br />
                <asp:TextBox ID="Detail_Box" runat="server" TextMode="MultiLine" Rows="5" Style="max-width: 60%;min-width:60%;min-height:200px;max-height:200px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="Detail_Box" ForeColor="Red" runat="server" ErrorMessage="不能为空" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator><br />
                <asp:Button runat="server" ID="publish_Button" Text="发布" OnClick="publish_Button_Click" />
                <asp:Button runat="server" ID="btnBack" Text="返回" OnClick="btnBack_Click"  ValidationGroup="9999" />

                <asp:Label ID="Result_tip" CssClass="result_tip" runat="server" ForeColor="Red"></asp:Label>
            </fieldset>
        </div>
        <asp:UpdatePanel runat="server">
            <ContentTemplate>
                <div id="manage_list_wrapper" class="any_item_wrapper manage_wrapper">
                    <h3>现有广告信息：</h3>
                    <br />
                    <asp:Repeater runat="server" ID="Ad_list_repeater" OnItemDataBound="Ad_list_repeater_ItemDataBound">
                        <HeaderTemplate>
                            <table style="width: 100%;">
                                <tr>
                                    <th scope="col">图片展示</th>
                                    <th>信息</th>
                                    <th>级别</th>
                                    <th>开始日期</th>
                                    <th>截止日期</th>
                                    <th>操作</th>
                                    <th>有效</th>
                                </tr>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <a href='../Ad.aspx?id=<%# Eval("Id")%>'>
                                        <img id="Img1" runat="server" src='<%# Eval("Image") %>' height="120" width="180" alt='<%# Eval("Detail") %>' /></a>
                                </td>
                                
                                <td>
                                    <div style="width: 200px; max-width: 200px;">
                                        <p limit="50"><%# Eval("Detail") %></p>
                                    </div>
                                </td>
                                <td style="width:600px;">
                                    <asp:Label runat="server" ID="lbPriority"></asp:Label>
                                </td>
                                <td>
                                    <p><%# Eval("Datetime","{0:yyyy-MM-dd HH:mm:ss}") %></p>
                                </td>
                                <td>
                                    <p><%# Eval("EndDatetime","{0:yyyy-MM-dd HH:mm:ss}") %></p>
                                </td>
                                <td style="width:650px; ">
                                    <asp:Button ID="Button1" runat="server" Text="编辑" CommandName="Edit" CommandArgument='<%# Eval("Id") %>' OnCommand="Ad_Command" />
                                    <asp:Button ID="Button2" runat="server" Text='<%# bool.Parse(Eval("Enable").ToString())?"失效":"恢复" %>' CommandName='<%# bool.Parse(Eval("Enable").ToString())?"Delete":"Recover" %>' CommandArgument='<%# Eval("Id") %>' OnCommand="Ad_Command" />
                                </td>
                                <td style="width: 250px; text-align: center; <%# bool.Parse(Eval("Enable").ToString())?"color:green;": "color:gray;" %>">
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
                        <asp:Label ID="Label1" CssClass="page_label" runat="server" Text="当前页：" />
                        <asp:Label CssClass="page_label" runat="server" ID="CurrentPage" Text="1" />
                        <asp:LinkButton CssClass="page_navigation" runat="server" ID="PreviewButton" OnClick="PreviewButton_Click" Text="上一页" />
                        <asp:LinkButton CssClass="page_navigation" runat="server" ID="NextButton" OnClick="NextButton_Click" Text="下一页" />
                        <asp:Label ID="Label5" CssClass="page_label" runat="server" Text="共" />
                        <asp:Label CssClass="page_label" runat="server" ID="PageCount" />
                        <asp:Label ID="Label6" CssClass="page_label" Style="margin-right: 10px;" runat="server" Text="页" />
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>

