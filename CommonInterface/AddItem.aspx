<%@ page title="" language="C#" masterpagefile="~/CommonInterface/CommonInterface.master" autoeventwireup="true" inherits="CommonInterface_AddItem, App_Web_rzv2xkl2" %>


<asp:Content ID="Content5" ContentPlaceHolderID="ManageContent" Runat="Server">
    <div id="manage_body_wrapper">
        <div id="manage_publish_wrapper">
            <fieldset class="any_item_wrapper manage_wrapper">
                <legend>增加商品</legend>
                <asp:HiddenField  runat="server" ID="HiddenShopType"/>
                <asp:Label ID="Label1" runat="server" Text="名称：" />
                <asp:TextBox runat="server" ID="ItemName" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="ItemName" ForeColor="Red" runat="server" ErrorMessage="不能为空" Display="Dynamic" EnableClientScript="true"></asp:RequiredFieldValidator><br />
                <asp:Label ID="Label2" runat="server" Text="商铺："></asp:Label>
                <asp:Label ID="ShopName" runat="server"></asp:Label><br />
                <asp:Label ID="Label3" runat="server" Text="原价：" />
                <asp:TextBox runat="server" ID="ListPrice" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="ListPrice" ForeColor="Red" runat="server" ErrorMessage="不能为空" Display="Dynamic" EnableClientScript="true"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator runat="server" ValidationExpression="^(\d+.?)?\d+$" ControlToValidate="ListPrice" EnableClientScript="true" Display="Dynamic" ErrorMessage="原价必须是数字或者'.'" /><br />
                <asp:Label ID="Label4" runat="server" Text="现价：" />
                <asp:TextBox runat="server" ID="UnitPrice" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="UnitPrice" ForeColor="Red" runat="server" ErrorMessage="不能为空" Display="Dynamic" EnableClientScript="true"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator runat="server" ValidationExpression="^(\d+.?)?\d+$"  ControlToValidate="UnitPrice" EnableClientScript="true" Display="Dynamic" ErrorMessage="现价必须是数字或者'.'" /><br />
                <asp:Label ID="Label5" runat="server" Text="状态：" />
                <asp:DropDownList runat="server" ID="StatusDropDownList" /><br />
                <asp:Label ID="Label6" runat="server" Text="分类：" />
                <asp:DropDownList runat="server" ID="TypesDropDownList" /><br />
                <asp:Label ID="Label9" runat="server" Text="排序：" />
                <asp:TextBox runat="server" ID="SEQUNENE" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="^-?[1-9]\d*$" ControlToValidate="SEQUNENE" EnableClientScript="true" Display="Dynamic" ErrorMessage="必须是整数" /><br />
                <asp:Label ID="Label8" runat="server" Text="是否是推荐商品：" />
                <asp:CheckBox ID="CheckHot"  runat="server" Checked="false"/><br />
                <asp:Label ID="Label7" Text="商品头像：" runat="server" />
                <asp:FileUpload ID="ImgUpload" runat="server" />
                <br />
                <asp:Label runat="server" Text="物品详情：" /><br />
                <asp:TextBox ID="DescTextBox" runat="server" TextMode="MultiLine" style="max-width:400px;min-width:400px;max-height:200px;min-height:200px;" />
                <br />
                <asp:Button runat="server" ID="publish_Button" Text="发布" OnClick="publish_Button_Click" />
                <asp:Button runat="server" ID="btnBack" Text="返回" OnClick="btnBack_Click" ValidationGroup="9999" />
                <asp:Label ID="Result_tip" CssClass="result_tip" runat="server" ForeColor="Red"></asp:Label>

            </fieldset>
        </div>
    </div>
</asp:Content>


