<%@ page language="C#" autoeventwireup="true" inherits="CommonInterface_GetOrdersInExcel, App_Web_eq4e3gqo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="OrderId" HeaderText="订单编号" />
                <asp:BoundField DataField="LineNum" HeaderText="行号" />
                <asp:BoundField DataField="Name" HeaderText="商品名称" />
                <asp:BoundField DataField="Quantity" HeaderText="数量" />
                <asp:BoundField DataField="UnitPrice" HeaderText="单价" />
                <asp:BoundField DataField="UserId" HeaderText="下单人编号" />
                <asp:BoundField DataField="OrderTime" HeaderText="下单时间" />
                <asp:BoundField DataField="ReceiverName" HeaderText="收件人姓名" />
                <asp:BoundField DataField="Status" HeaderText="状态" />
                <asp:BoundField DataField="Phone" HeaderText="手机号码" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
