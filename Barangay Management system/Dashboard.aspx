<%@ Page Title="Barangay Information Management" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Barangay_Management_system.Dasboard1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .Boxes {
    height: auto;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: row;

}

.flex-box1, .flex-box2, .flex-box3, .flex-box4{
    width: 100%;
    height: 165px;
    font-size: 25px;
    text-align: center;
    border-radius: 4px;
    margin: 5px;
    display: flex;
    justify-content: end;
    align-items: center;
    flex-direction:column;
}
.flex-box-items{
  display: flex;
    flex-direction: column;
    align-items: flex-start;
    width: 100%;
}
.flex-box-content{
 width: 90%;
    height: 100%;
    display: flex;
    justify-content: space-evenly;
    align-items: center;
    flex-direction: ROW;
}

.picture{
    display: flex;
    width: 50%;
}

.picture i{
  font-size: 100px;
}
.flex-box1 {
    background-color: #D61D1D;
}

.flex-box2 {
    background-color: #7AD61D;
}

.flex-box3 {
    background-color: #1DD6D6;
}

.flex-box4{
   background-color: #7A1DD6;
}

.flex-box1 a{
    text-decoration: none;
    color: #F5F5F5 ;
}

.flex-box2 a {
    text-decoration: none;
    color: black ;
}

.flex-box3 a {
    text-decoration: none;
    color: black ;
}

.flex-box4 a {
    text-decoration: none;
    color: #F5F5F5 ;
}
.footer1 a, .footer4 a{
    color: white; /* White text color */
    font-size: 18px;
    padding: 0px 30% 0px 30%;
}
.footer2 a, .footer3 a{
    color: black;
    font-size: 18px;
    padding: 0px 30% 0px 30%;
}
.footer1 {
    background-color: #A21414; /* Slightly darker red */
    width: 100%;
}

.footer2 {
    background-color: #599B14; /* Slightly darker green */
    width: 100%;
}

.footer3 {
    background-color: #149595; /* Slightly darker cyan */
    width: 100%;
}

.footer4 {
    background-color: #593E95; /* Slightly darker purple */
    width: 100%;
}
.dashboard-title{
    margin-left: 245px;
}
.dashboard-title h1{
        margin-bottom: 2px;
        font-weight: bold;
        font-size: 36px;
} 
.dashboard-container{
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: 20px;
}

.mydatagrid {
    width:180%;
    border-radius: 12px;
    min-width: 90%;
    height: 100%;
}

.gridheader {
    background-color: none;
    border: none 0px transparent;
    height: 25px;
    text-align: center;
    font-size: 16px;
    text-align: center;
    border-bottom: 1px solid black;
}

.rows {
    background-color: transparent;
    font-size: 14px;
    border: none 0px transparent;
    border-bottom: 1px black solid;
    text-align: center;
    
}

.mydatagrid td {

}

.mydatagrid tr {
    padding: 50px;
}

.mydatagrid {
    padding: 5px;
}
.pager{
    display: none;
}
.pager a{
    background-color: white;
}
.pager span{

}

.chart{
  
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    width: 100%;
    height: 100%;
    padding-top: 70px;
}
.chart-container{
   height: auto;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-wrap: wrap;
    flex-direction: row;
}

.gridheader{
    background-color: black;
    color: white;
}
    </style>
    <div class="dashboard-title">
        <h1>Dashboard</h1>
    </div>
    <section>
      <div class="main-content">
        <div class="Boxes">

            <div class="flex-box1">
                <div class="flex-box-content">
                    <div class="flex-box-items">
                        <asp:Label ID="servicescounter" runat="server" Text="No." ForeColor="White"></asp:Label>
                        <asp:Label ID="Label2" runat="server" Text="Services" ForeColor="White"></asp:Label>
                    </div>
                    <div class="picture">
                        <i class="fa fa-bar-chart" aria-hidden="true" style="color: #A21414"></i>
                    </div>
                    </div>
                <div class="footer1">
                    <a href="Services.aspx#panel1" onclick="showPanel(0, '#E4E4E')">More info</a>
                </div>
            </div>

             <div class="flex-box2">
               <div class="flex-box-content">
                    <div class="flex-box-items">
                        <asp:Label ID="officialcounter" runat="server" Text="No." ForeColor="black"></asp:Label>
                        <asp:Label ID="Label4" runat="server" Text="Officials" ForeColor="black"></asp:Label>
                    </DIV>
                    <div class="picture">
                        <i class="fa fa-users" aria-hidden="true" style="color:#599B14" ></i>
                    </div>
                    </div>
                <div class="footer2">
                    <a href="Baranggay Official.aspx#panel1" onclick="showPanel(0, '#E4E4E')">More info</a>
                </div>
            </div>

             <div class="flex-box3">
                <div class="flex-box-content">
                    <div class="flex-box-items">
                        <asp:Label ID="Label5" runat="server" Text="No." ForeColor="black"></asp:Label>
                        <asp:Label ID="Label6" runat="server" Text="Services" ForeColor="black"></asp:Label>
                    </DIV>
                    <div class="picture">
                      
                    </div>
                    </div>
                <div class="footer3">
                    <a href="Services.aspx#panel1" onclick="showPanel(0, '#E4E4E')">More info</a>
                </div>

            </div>
            <div class="flex-box4">
                <div class="flex-box-content">
                    <div class="flex-box-items">
                        <asp:Label ID="countertotalsales" runat="server" Text="No." ForeColor="White"></asp:Label>
                        <asp:Label ID="Label8" runat="server" Text="Total Sales" ForeColor="White"></asp:Label>
                    </div>
                    <div class="picture">
                    
                    </div>
                </div>
                <div class="footer4">
                    <a href="Revenue.aspx#revenue">More info</a>
                </div>
            </div>
        </div>
    </div>

        <div class="chart">
            <div class="chart-container">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="official_id" DataSourceID="SqlDataSource1" HorizontalAlign="center" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="gridheader" RowStyle-CssClass="rows" AllowPaging="true" PagerSettings-LastPageText="Last" PagerStyle-HorizontalAlign="Right" PagerStyle-ForeColor="Black" PagerStyle-VerticalAlign="Bottom" PagerStyle-BorderColor="#E4E4E4" OnRowDataBound="GridView1_RowDataBound">
                    <Columns>
                        <asp:TemplateField HeaderText="Full Name">
                            <ItemTemplate>
                                <asp:Literal ID="LiteralFullName" runat="server" Text='<%# Eval("first_name") + " " + Eval("middle_initial") + " " + Eval("last_name") %>'></asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="chairmanship" HeaderText="Chairmanship" SortExpression="chairmanship"></asp:BoundField>
                        <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status"></asp:BoundField>
                        <asp:BoundField DataField="position" HeaderText="Position" SortExpression="position"></asp:BoundField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:barangayinformationsystemConnectionString %>' SelectCommand="SELECT * FROM [brgy/resident_info.officials]"></asp:SqlDataSource>
            </div>
        </div>
        
    </section>
</asp:Content>
