<%@ page title="" language="C#" masterpagefile="~/Manage/ManageMasterPage.master" autoeventwireup="true" inherits="TuanStu.Web.Manage_AdManage, App_Web_qfhcndae" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="TipBarHolder" Runat="Server">
        <div class="tip_bar">
            <asp:Label runat="server"  ID="LabelTip"></asp:Label>
        </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="manage_body_wrapper">
        <div id="manage_publish_wrapper">
            <fieldset>
                <legend>发布新广告和活动</legend>
                <asp:Label runat="server" Text="地区："></asp:Label>
                <asp:RadioButtonList ID="area_radio" runat="server" AutoPostBack="true"  RepeatDirection="Horizontal" OnSelectedIndexChanged="area_radio_CheckedChanged"/>
                <asp:Label runat="server" Text="类型："></asp:Label>
                <asp:RadioButtonList ID="RadioButtonTypeList" runat="server" AutoPostBack="true"  RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonTypeList_SelectedIndexChanged"/>
                <asp:Label runat="server" Text="商铺选择："></asp:Label>
                <asp:DropDownList runat="server" ID="DropList_ShopList" AutoPostBack="true" Width="210"></asp:DropDownList><br />
                <asp:Label runat="server" Text="优先级别："></asp:Label>
                <asp:DropDownList runat="server" ID="DropDownPriority">
                    <asp:ListItem Text="首页顶级广告" Value="10"></asp:ListItem>
                    <asp:ListItem Text="首页广告Lv5" Value="9"></asp:ListItem>
                    <asp:ListItem Text="首页广告Lv4" Value="8"></asp:ListItem>
                    <asp:ListItem Text="首页广告Lv3" Value="7"></asp:ListItem>
                    <asp:ListItem Text="首页广告Lv2" Value="6"></asp:ListItem>
                    <asp:ListItem Text="首页广告Lv1" Value="5"></asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:Label runat="server" Text="详细内容："></asp:Label>
                <asp:TextBox ID="Detail_Box" runat="server" Rows="5" TextMode="MultiLine" Width="300"></asp:TextBox><br />
                <asp:Label runat="server" Text="活动图片："></asp:Label>
                <asp:FileUpload ID="ImgUpload" runat="server" /><br />
                <div>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                    <asp:Label ID="Label1" runat="server" Text="活动截止时间："></asp:Label>
                    <asp:Calendar runat="server" ID="CalendarEndDate"></asp:Calendar>
                    </ContentTemplate>
                </asp:UpdatePanel><br />
                </div>
                <asp:Button runat="server" ID="publish_Button" Text="发布" OnClick="publish_Button_Click"/>
                
            </fieldset>
        </div>
        <div id="manage_list_wrapper">
            <div>
                <h2>筛选：</h2>
                <div class="manage_list_header_left">优先级：
                    <asp:TextBox runat="server" ID="TextBoxPriorityMin" Text="0" Width="20"></asp:TextBox>
                    ~<asp:TextBox runat="server" ID="TextBoxPriorityMax" Text="10" Width="20"></asp:TextBox>
                </div>
                <div class="manage_list_header_left">商铺类型：
                    <asp:DropDownList runat="server" ID="DropListType"></asp:DropDownList>
                </div>
                <div class="manage_list_header_left">店铺名、信息关键字：
                    <asp:TextBox runat="server" ID="TextBoxShopName"></asp:TextBox>
                </div>
                <div class="float-right">
                    <asp:Button runat="server" ID="BUTTON_SEARCH" Text="筛选" OnClick="BUTTON_SEARCH_Click"/>
                </div>
                <div class="clear">

                </div>
            </div>
            <asp:Repeater runat="server" ID="Ad_list_repeater">
                <HeaderTemplate>
                    
                    <table>
                        <tr>
                            <th style="width:160px" scope="col">图片展示</th>
                            <th style="width:100px">店铺</th>
                            <th style="width:180px">信息</th>
                            <th style="width:61px">优先级</th>
                            <th style="width:90px">日期</th>
                            <th style="width:120px">操作</th>
                            <th style="width:50px">有效</th>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                            <a href='../Ad.aspx?id=<%# Eval("Id") %>'><img runat="server" src='<%# Eval("Image") %>' height="100" width="160" alt='<%# Eval("Detail") %>' /></a>
                        </td>
                        <td>
                            <p><%# Eval("ShopName")%></p>
                        </td>
                        <td>
                            <p><%# Eval("Detail") %></p>
                        </td>
                        <td>
                            <p><%# Eval("Priority") %></p>
                        </td>
                        <td>
                            <p><%# Eval("Datetime","{0:yyyy-MM-dd HH:mm:ss}") %></p>
                        </td>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="编辑" CommandName="Edit" CommandArgument='<%# Eval("Id") %>' OnCommand="Ad_Command" />
                            <asp:Button ID="Button2" runat="server" Text='<%# bool.Parse(Eval("Enable").ToString())?"删除":"恢复" %>' CommandName='<%# bool.Parse(Eval("Enable").ToString())?"Delete":"Recover" %>' CommandArgument='<%# Eval("Id") %>' OnCommand="Ad_Command" /></td>
                        <td style="width:50px;text-align:center;<%# bool.Parse(Eval("Enable").ToString())?"color:green;":"color:gray;" %>">
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
</asp:Content>

