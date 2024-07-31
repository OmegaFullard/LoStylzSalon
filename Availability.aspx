<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Availability.aspx.cs" Inherits="LoStylz_Salon.Availability" %>

            <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
              
 <div>
        <h3>Availability</h3>
        </div>
<div aria-dropeffect="move" style="padding-left:10px; padding-right:10px; height:850px;overflow: auto; background:#e1f0e9"> 
    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
    <br />
    
    <br />
    
    <asp:TextBox ID="TextBox1" runat="server" CssClass="input-group-sm"></asp:TextBox>          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;          <asp:Button ID="Button1" runat="server" Text="Search" CssClass="btnAction" Width="200px" BackColor="#666666" BorderStyle="Groove" />
        <br />
    <br />
    <br />
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="EmpID" DataSourceID="SqlDataSource1" AlternatingRowStyle-BackColor="#E8E3D8" AlternatingRowStyle-BorderColor="#F2C2F2" AlternatingRowStyle-BorderStyle="Solid" AlternatingRowStyle-BorderWidth="2px" AlternatingRowStyle-CssClass="grdRecords" AlternatingRowStyle-ForeColor="#E846CD" OnLoad="Page_Load" OnPageIndexChanging="GridView1_PageIndexChanging" OnSorting="GridView1_Sorting" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="FN" HeaderText="FN" SortExpression="FN"></asp:BoundField>
            <asp:BoundField DataField="LN" HeaderText="LN" SortExpression="LN"></asp:BoundField>
            <asp:BoundField DataField="EmpID" HeaderText="EmpID" ReadOnly="True" SortExpression="EmpID"></asp:BoundField>
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone"></asp:BoundField>
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
            <asp:BoundField DataField="Available" HeaderText="Available" SortExpression="Available"></asp:BoundField>
        </Columns>
    </asp:GridView>
    <br />
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:LoStylzConnectionString %>' SelectCommand="SELECT FN, LN, EmpID, Phone, Email, Available FROM Employees WHERE (EmpID = @EmpID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" PropertyName="Text" Name="EmpID" Type="String"></asp:ControlParameter>


        </SelectParameters>
    </asp:SqlDataSource>
  
        </div>
        </asp:content>
 
