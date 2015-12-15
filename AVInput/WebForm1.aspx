<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="AVInput.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" /> 
    <title></title>
</head>
<body>
    <form id="form1" runat="server" >
    <div class="Grid">
    
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EDV_DataConnectionString %>" SelectCommand="SELECT * FROM [EDV_Vendors]"></asp:SqlDataSource>
   
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" ControlStyle-BorderStyle="Double" CssClass="Grid" BorderStyle="Solid" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#999999" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Select" Text="Select" CssClass="Grid"/>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:BoundField DataField="Company Name" HeaderText="Company Name" SortExpression="Company Name" />
                <asp:BoundField DataField="Approval Status" HeaderText="Approval Status" SortExpression="Approval Status" />
                <asp:BoundField DataField="Authorized Checklist" HeaderText="Authorized Checklist" SortExpression="Authorized Checklist" />
                <asp:BoundField DataField="Vendor No" HeaderText="Vendor No" SortExpression="Vendor No" />
                <asp:BoundField DataField="Products" HeaderText="Products" SortExpression="Products" />
                <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                <asp:BoundField DataField="Contact Name" HeaderText="Contact Name" SortExpression="Contact Name" />
                <asp:BoundField DataField="Contact Info" HeaderText="Contact Info" SortExpression="Contact Info" />
                <asp:BoundField DataField="Contact E-Mail" HeaderText="Contact E-Mail" SortExpression="Contact E-Mail" />
                
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        
    
    </div>
    </form>
</body>
</html>
