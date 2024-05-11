<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="Barangay_Management_system.Services" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
.tabContainer{
    width: 84%;
    height: 570px;
    margin-left: 238px;
    margin-top: 10px;

}
.tabContainer .buttonContainer button{
    width: 177px;
    height: 60%;
    cursor: pointer;
    padding: 10px;
    font-family: sans-serif;
    font-size: 18px;
    background-color: #eee;
    border-radius: 12px 12px 0px 0px;
    border: 1px black solid;
    border-bottom: 0px;
}
.tabContainer .buttonContainer button:hover{
    background-color: #d7d4d4;
}
.tabContainer .tabPanel{
    height: 109%;
    color: black;
    text-align: center;
    box-sizing: border-box;
    font-family: sans-serif;
    font-size: 22px;
    display: none;
    border-radius: 0px 0px 12px 12px;
}
.mydatagrid{
    width: 98%;
    border-radius: 12px;
    min-width: 90%;
    height: 80%;
    border: 1px solid black;
}
.gridheader{
    background-color: none;
    border: none 0px transparent;
    height: 25px;
    text-align: center;
    font-size: 16px;
    text-align: center;
    border-bottom: 1px solid black;
}
.rows{
    background-color: transparent;
    font-size: 14px;
    border: none 0px transparent;
    border-bottom: 1px black solid;
    text-align: center;
}
.mydatagrid td{
    padding: 5px;
}
.mydatagrid{
    padding: 5px;
}
.pager{
    height: 80px;
}

.txt-title{
    display: flex;
    justify-content: space-between;
    margin-left: 10px;
}
.generate-btn{
    border: none;
    color:white;
    background-color:blue; 
    border-radius: 12px;
    align-items: center;
    padding: 5px;
    cursor:pointer;
}
 .entries{
            display: flex;
            justify-content: flex-start;
            margin-left: 20px;
            padding-top: 30px;
            gap: 5px;
            font-size: 16px;
        }
    .pager a{
    background-color: white;
    border-radius: 100%;
    text-decoration: none;
    padding: 3px 6px 3px 6px;
    border: 1px black solid;
    font-size: 16px;
    font-weight: bold;
}
        .pager span {
            background-color: white;
            border-radius: 100%;
            text-decoration: none;
            padding: 3px 6px 3px 6px;
            border: 1px black solid;
            font-size: 16px;
            font-weight: bold;
        }
    </style>
<div class="tabContainer">
    <div class="buttonContainer">
        <button class="panel1" onclick="showPanel(0,'#E4E4E4')">Barangay Certificate</button>
        <button class="panel2" onclick="showPanel(1,'#E4E4E4')">Residency Certificate</button>
        <button class="panel3" onclick="showPanel(2,'#E4E4E4')">Business Clearance</button>
        <button class="panel4" onclick="showPanel(3,'#E4E4E4')">Barangay Indigency</button>
        <button class="panel5" onclick="showPanel(4,'#E4E4E4')">Cohibition Certificate</button>
        <button class="panel6" onclick="showPanel(5,'#E4E4E4')">Barangay Clearance</button>
        <button class="panel7" onclick="showPanel(6,'#E4E4E4')">Requested Document</button>
    </div>

    <div class="tabPanel">

        
        <div class="entries">
            <asp:Label ID="Label1" runat="server" Text="Show" CssClass="label"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>25</asp:ListItem>
                <asp:ListItem>50</asp:ListItem>
                <asp:ListItem>100</asp:ListItem>
                <asp:ListItem>1000</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label2" runat="server" Text="Entries" CssClass="label"></asp:Label>
        </div>

        <div class="txt-title">
            <h2>Baranggay Certificate</h2>
        </div>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="reference_number" DataSourceID="SqlDataSource1"  HorizontalAlign="center" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="gridheader" RowStyle-CssClass="rows" AllowPaging="true" PagerSettings-LastPageText="Last" PagerStyle-HorizontalAlign="Right" PagerStyle-ForeColor="Black" PagerStyle-VerticalAlign="Bottom" PagerStyle-BorderColor="#E4E4E4">
            <Columns>
                <asp:BoundField DataField="reference_number" HeaderText="Reference Number" ReadOnly="True" SortExpression="reference_number"></asp:BoundField>
                <asp:BoundField DataField="resident_id" HeaderText="Resident ID" SortExpression="resident_id"></asp:BoundField>
                <asp:BoundField DataField="document_requested" HeaderText="Requested Document" SortExpression="document_requested"></asp:BoundField>
                <asp:BoundField DataField="purpose" HeaderText="Purpose" SortExpression="purpose"></asp:BoundField>
                <asp:BoundField DataField="amount_to_pay" HeaderText="Amount" SortExpression="amount_to_pay"></asp:BoundField>
                <asp:BoundField DataField="date_requested" HeaderText="Date Requested" SortExpression="date_requested"></asp:BoundField>
                <asp:BoundField DataField="pickup_date" HeaderText="Pickup Date" SortExpression="pickup_date"></asp:BoundField>
                 <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:Button ID="generatebtn" runat="server" Text="Generate" Cssclass="generate-btn"/>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:barangayinformationsystemConnectionString %>' SelectCommand="SELECT * FROM [doc_issuing.All_RequestedDocument] WHERE ([document_requested] = @document_requested) ORDER BY [date_requested]">
            <SelectParameters>
                <asp:Parameter DefaultValue="Barangay Certificate" Name="document_requested" Type="String"></asp:Parameter>
            </SelectParameters>
        </asp:SqlDataSource>
    </div>

    <div class="tabPanel">

        
        <div class="entries">
            <asp:Label ID="Label3" runat="server" Text="Show" CssClass="label"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>25</asp:ListItem>
                <asp:ListItem>50</asp:ListItem>
                <asp:ListItem>100</asp:ListItem>
                <asp:ListItem>1000</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label4" runat="server" Text="Entries" CssClass="label"></asp:Label>
        </div>

         <div class="txt-title">
            <h2>Residency Certificate</h2>
        </div>

        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="reference_number" DataSourceID="SqlDataSource2"  HorizontalAlign="center" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="gridheader" RowStyle-CssClass="rows" AllowPaging="true" PagerSettings-LastPageText="Last" PagerStyle-HorizontalAlign="Right" PagerStyle-ForeColor="Black" PagerStyle-VerticalAlign="Bottom" PagerStyle-BorderColor="#E4E4E4">
            <Columns>
                 <asp:BoundField DataField="reference_number" HeaderText="Reference Number" ReadOnly="True" SortExpression="reference_number"></asp:BoundField>
                <asp:BoundField DataField="resident_id" HeaderText="Resident ID" SortExpression="resident_id"></asp:BoundField>
                <asp:BoundField DataField="document_requested" HeaderText="Requested Document" SortExpression="document_requested"></asp:BoundField>
                <asp:BoundField DataField="purpose" HeaderText="Purpose" SortExpression="purpose"></asp:BoundField>
                <asp:BoundField DataField="amount_to_pay" HeaderText="Amount" SortExpression="amount_to_pay"></asp:BoundField>
                <asp:BoundField DataField="date_requested" HeaderText="Date Requested" SortExpression="date_requested"></asp:BoundField>
                <asp:BoundField DataField="pickup_date" HeaderText="Pickup Date" SortExpression="pickup_date"></asp:BoundField>
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:Button ID="generatebtn" runat="server" Text="Generate" Cssclass="generate-btn"/>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:barangayinformationsystemConnectionString %>' SelectCommand="SELECT * FROM [doc_issuing.All_RequestedDocument] WHERE ([document_requested] = @document_requested) ORDER BY [date_requested]">
            <SelectParameters>
                <asp:Parameter DefaultValue="Certificate Of Residency" Name="document_requested" Type="String"></asp:Parameter>
            </SelectParameters>
        </asp:SqlDataSource>
    </div> 

    <div class="tabPanel">

        
        <div class="entries">
            <asp:Label ID="Label5" runat="server" Text="Show" CssClass="label"></asp:Label>
            <asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>25</asp:ListItem>
                <asp:ListItem>50</asp:ListItem>
                <asp:ListItem>100</asp:ListItem>
                <asp:ListItem>1000</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label6" runat="server" Text="Entries" CssClass="label"></asp:Label>
        </div>

         <div class="txt-title">
            <h2>Business Clearance</h2>
        </div>

        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="reference_number" DataSourceID="SqlDataSource3" HorizontalAlign="center" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="gridheader" RowStyle-CssClass="rows" AllowPaging="true" PagerSettings-LastPageText="Last" PagerStyle-HorizontalAlign="Right" PagerStyle-ForeColor="Black" PagerStyle-VerticalAlign="Bottom" PagerStyle-BorderColor="#E4E4E4">
            <Columns>
                 <asp:BoundField DataField="reference_number" HeaderText="Reference Number" ReadOnly="True" SortExpression="reference_number"></asp:BoundField>
                <asp:BoundField DataField="resident_id" HeaderText="Resident ID" SortExpression="resident_id"></asp:BoundField>
                <asp:BoundField DataField="document_requested" HeaderText="Requested Document" SortExpression="document_requested"></asp:BoundField>
                <asp:BoundField DataField="purpose" HeaderText="Purpose" SortExpression="purpose"></asp:BoundField>
                <asp:BoundField DataField="amount_to_pay" HeaderText="Amount" SortExpression="amount_to_pay"></asp:BoundField>
                <asp:BoundField DataField="date_requested" HeaderText="Date Requested" SortExpression="date_requested"></asp:BoundField>
                <asp:BoundField DataField="pickup_date" HeaderText="Pickup Date" SortExpression="pickup_date"></asp:BoundField>
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:Button ID="generatebtn" runat="server" Text="Generate" Cssclass="generate-btn"/>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:barangayinformationsystemConnectionString %>' SelectCommand="SELECT * FROM [doc_issuing.All_RequestedDocument] WHERE ([document_requested] = @document_requested) ORDER BY [date_requested]">
            <SelectParameters>
                <asp:Parameter DefaultValue="Business Clearance" Name="document_requested" Type="String"></asp:Parameter>
            </SelectParameters>
        </asp:SqlDataSource>
    </div>


    <div class="tabPanel">

        
        <div class="entries">
            <asp:Label ID="Label7" runat="server" Text="Show" CssClass="label"></asp:Label>
            <asp:DropDownList ID="DropDownList4" runat="server">
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>25</asp:ListItem>
                <asp:ListItem>50</asp:ListItem>
                <asp:ListItem>100</asp:ListItem>
                <asp:ListItem>1000</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label8" runat="server" Text="Entries" CssClass="label"></asp:Label>
        </div>

         <div class="txt-title">
            <h2>Barangay Indigency</h2>
        </div>

        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="reference_number" DataSourceID="SqlDataSource4" HorizontalAlign="center" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="gridheader" RowStyle-CssClass="rows" AllowPaging="true" PagerSettings-LastPageText="Last" PagerStyle-HorizontalAlign="Right" PagerStyle-ForeColor="Black" PagerStyle-VerticalAlign="Bottom" PagerStyle-BorderColor="#E4E4E4">
            <Columns>
                <asp:BoundField DataField="reference_number" HeaderText="Reference Number" ReadOnly="True" SortExpression="reference_number"></asp:BoundField>
                <asp:BoundField DataField="resident_id" HeaderText="Resident ID" SortExpression="resident_id"></asp:BoundField>
                <asp:BoundField DataField="document_requested" HeaderText="Requested Document" SortExpression="document_requested"></asp:BoundField>
                <asp:BoundField DataField="purpose" HeaderText="Purpose" SortExpression="purpose"></asp:BoundField>
                <asp:BoundField DataField="amount_to_pay" HeaderText="Amount" SortExpression="amount_to_pay"></asp:BoundField>
                <asp:BoundField DataField="date_requested" HeaderText="Date Requested" SortExpression="date_requested"></asp:BoundField>
                <asp:BoundField DataField="pickup_date" HeaderText="Pickup Date" SortExpression="pickup_date"></asp:BoundField>
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:Button ID="generatebtn" runat="server" Text="Generate" Cssclass="generate-btn"/>
                    </ItemTemplate>
                </asp:TemplateField>
                </Columns>
        </asp:GridView>

        <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString='<%$ ConnectionStrings:barangayinformationsystemConnectionString %>' SelectCommand="SELECT * FROM [doc_issuing.All_RequestedDocument] WHERE ([document_requested] = @document_requested) ORDER BY [date_requested]">
            <SelectParameters>
                <asp:Parameter DefaultValue="Certificate of Indigency" Name="document_requested" Type="String"></asp:Parameter>
            </SelectParameters>
        </asp:SqlDataSource>
    </div> 


    <div class="tabPanel">


        <div class="entries">
            <asp:Label ID="Label9" runat="server" Text="Show" CssClass="label"></asp:Label>
            <asp:DropDownList ID="DropDownList5" runat="server" >
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>25</asp:ListItem>
                <asp:ListItem>50</asp:ListItem>
                <asp:ListItem>100</asp:ListItem>
                <asp:ListItem>1000</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label10" runat="server" Text="Entries" CssClass="label"></asp:Label>
        </div>

        <div class="txt-title">
            <h2>Cohibitation Certificate</h2>
        </div>

        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="reference_number" DataSourceID="SqlDataSource5" HorizontalAlign="center" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="gridheader" RowStyle-CssClass="rows" AllowPaging="true" PagerSettings-LastPageText="Last" PagerStyle-HorizontalAlign="Right" PagerStyle-ForeColor="Black" PagerStyle-VerticalAlign="Bottom" PagerStyle-BorderColor="#E4E4E4">
            <Columns>
                 <asp:BoundField DataField="reference_number" HeaderText="Reference Number" ReadOnly="True" SortExpression="reference_number"></asp:BoundField>
                <asp:BoundField DataField="resident_id" HeaderText="Resident ID" SortExpression="resident_id"></asp:BoundField>
                <asp:BoundField DataField="document_requested" HeaderText="Requested Document" SortExpression="document_requested"></asp:BoundField>
                <asp:BoundField DataField="purpose" HeaderText="Purpose" SortExpression="purpose"></asp:BoundField>
                <asp:BoundField DataField="amount_to_pay" HeaderText="Amount" SortExpression="amount_to_pay"></asp:BoundField>
                <asp:BoundField DataField="date_requested" HeaderText="Date Requested" SortExpression="date_requested"></asp:BoundField>
                <asp:BoundField DataField="pickup_date" HeaderText="Pickup Date" SortExpression="pickup_date"></asp:BoundField>
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:Button ID="generatebtn" runat="server" Text="Generate" Cssclass="generate-btn"/>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource runat="server" ID="SqlDataSource5" ConnectionString='<%$ ConnectionStrings:barangayinformationsystemConnectionString %>' SelectCommand="SELECT * FROM [doc_issuing.All_RequestedDocument] WHERE ([document_requested] = @document_requested) ORDER BY [date_requested]">
            <SelectParameters>
                <asp:Parameter DefaultValue="Certificate of Cohabitation" Name="document_requested" Type="String"></asp:Parameter>
            </SelectParameters>
        </asp:SqlDataSource>
    </div>

       <div class="tabPanel">

        
        <div class="entries">
            <asp:Label ID="Label11" runat="server" Text="Show" CssClass="label"></asp:Label>
            <asp:DropDownList ID="DropDownList6" runat="server">
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>25</asp:ListItem>
                <asp:ListItem>50</asp:ListItem>
                <asp:ListItem>100</asp:ListItem>
                <asp:ListItem>1000</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label12" runat="server" Text="Entries" CssClass="label"></asp:Label>
        </div>

         <div class="txt-title">
            <h2>Barangay Clearance</h2>
        </div>

           <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataKeyNames="reference_number" DataSourceID="SqlDataSource6" HorizontalAlign="center" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="gridheader" RowStyle-CssClass="rows" AllowPaging="true" PagerSettings-LastPageText="Last" PagerStyle-HorizontalAlign="Right" PagerStyle-ForeColor="Black" PagerStyle-VerticalAlign="Bottom" PagerStyle-BorderColor="#E4E4E4">
              <Columns>
                 <asp:BoundField DataField="reference_number" HeaderText="Reference Number" ReadOnly="True" SortExpression="reference_number"></asp:BoundField>
                <asp:BoundField DataField="resident_id" HeaderText="Resident ID" SortExpression="resident_id"></asp:BoundField>
                <asp:BoundField DataField="document_requested" HeaderText="Requested Document" SortExpression="document_requested"></asp:BoundField>
                <asp:BoundField DataField="purpose" HeaderText="Purpose" SortExpression="purpose"></asp:BoundField>
                <asp:BoundField DataField="amount_to_pay" HeaderText="Amount" SortExpression="amount_to_pay"></asp:BoundField>
                <asp:BoundField DataField="date_requested" HeaderText="Date Requested" SortExpression="date_requested"></asp:BoundField>
                <asp:BoundField DataField="pickup_date" HeaderText="Pickup Date" SortExpression="pickup_date"></asp:BoundField>
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:Button ID="generatebtn" runat="server" Text="Generate" Cssclass="generate-btn"/>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
           </asp:GridView>

           <asp:SqlDataSource runat="server" ID="SqlDataSource6" ConnectionString='<%$ ConnectionStrings:barangayinformationsystemConnectionString %>' SelectCommand="SELECT * FROM [doc_issuing.All_RequestedDocument] WHERE ([document_requested] = @document_requested) ORDER BY [date_requested]">
               <SelectParameters>
                   <asp:Parameter DefaultValue="Barangay Clearance" Name="document_requested" Type="String"></asp:Parameter>
               </SelectParameters>
           </asp:SqlDataSource>
       </div>

    <div class="tabPanel">

        
        <div class="entries">
            <asp:Label ID="Label15" runat="server" Text="Show" CssClass="label"></asp:Label>
            <asp:DropDownList ID="DropDownList8" runat="server">
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>25</asp:ListItem>
                <asp:ListItem>50</asp:ListItem>
                <asp:ListItem>100</asp:ListItem>
                <asp:ListItem>1000</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label16" runat="server" Text="Entries" CssClass="label"></asp:Label>
        </div>
        
        
         <div class="txt-title">
            <h2>All Requested Document</h2>
        </div>

        <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" DataKeyNames="reference_number" DataSourceID="SqlDataSource7" HorizontalAlign="center" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="gridheader" RowStyle-CssClass="rows" AllowPaging="true" PagerSettings-LastPageText="Last" PagerStyle-HorizontalAlign="Right" PagerStyle-ForeColor="Black" PagerStyle-VerticalAlign="Bottom" PagerStyle-BorderColor="#E4E4E4">
            <Columns>
               <asp:BoundField DataField="reference_number" HeaderText="Reference Number" ReadOnly="True" SortExpression="reference_number"></asp:BoundField>
                <asp:BoundField DataField="resident_id" HeaderText="Resident ID" SortExpression="resident_id"></asp:BoundField>
                <asp:BoundField DataField="document_requested" HeaderText="Requested Document" SortExpression="document_requested"></asp:BoundField>
                <asp:BoundField DataField="purpose" HeaderText="Purpose" SortExpression="purpose"></asp:BoundField>
                <asp:BoundField DataField="amount_to_pay" HeaderText="Amount" SortExpression="amount_to_pay"></asp:BoundField>
                <asp:BoundField DataField="date_requested" HeaderText="Date Requested" SortExpression="date_requested"></asp:BoundField>
                <asp:BoundField DataField="pickup_date" HeaderText="Pickup Date" SortExpression="pickup_date"></asp:BoundField>
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:Button ID="generatebtn" runat="server" Text="Generate" Cssclass="generate-btn"/>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource runat="server" ID="SqlDataSource7" ConnectionString='<%$ ConnectionStrings:barangayinformationsystemConnectionString %>' SelectCommand="SELECT * FROM [doc_issuing.All_RequestedDocument] ORDER BY [date_requested]"></asp:SqlDataSource>
    </div>
</div>
   <script>
       var tabButtons = document.querySelectorAll(".tabContainer .buttonContainer button");
       var tabPanels = document.querySelectorAll(".tabContainer .tabPanel");

       function showPanel(panelIndex) {
           event.preventDefault();
           tabButtons.forEach(function (node) {
               node.style.backgroundColor = "";
               node.style.color = "";
           });
           tabButtons[panelIndex].style.backgroundColor = "black";
           tabButtons[panelIndex].style.color = "white";
           tabPanels.forEach(function (node) {
               node.style.display = "none";
           });
           tabPanels[panelIndex].style.display = "block";
           tabPanels[panelIndex].style.backgroundColor = "#e4e4e4";
       }

       window.onload = function () {
           showPanel(6, '#E4E4E4'); // This will open the first tab on page load
       };
   </script>
</asp:Content>
