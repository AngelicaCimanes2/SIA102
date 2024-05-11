<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Revenue.aspx.cs" Inherits="Barangay_Management_system.Revenue" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .revenue-container{
            background-color: #e4e4e4;
            width: 84%;
            height: 650px;
            margin-left: 235px;
            border-radius: 12px;
            margin-top: 10px;
        }

.mydatagrid{
    width: 98%;
    border-radius: 12px;
    min-width: 90%;
    height: 80%;
    border: 1px solid black;
    margin-top: 20px;
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
    height: 160px;
}

.txt-title{
    display: flex;
    justify-content: space-between;
    margin-left: 10px;
}
.date-container{
    display: flex;
    flex-direction: row;
    gap: 10px;
}
.txt-container{
    display:flex;
    flex-direction:column;
    margin-left: 10px;
}
.title{
    font-size: 16px;
}
.txt-box{
    border: 2px solid black;
    padding: 5px;
}
.printbtn{
    border: none;
    background-color: blue;
    color: white;
    height: 30px;
    cursor:pointer;
    font-size: 16px;
    border-radius: 15px;
    width: 100px;
    font-weight: bold;

}
.print-btn{
      display: flex;
      justify-items:end;
      align-items:flex-end;
      margin-left: 42%;
}
.functionbtn{
    display: flex;
    flex-direction: row;
    align-items: flex-end;
    gap: 10px;
}

.filterbtn{
       border: none;
    background-color: blue;
    color: white;
    height: 30px;
    cursor:pointer;
    font-size: 16px;
    border-radius: 15px;
    width: 100px;
    font-weight: bold;
}

.resetbtn{
       border: none;
    background-color: blue;
    color: white;
    height: 30px;
    cursor:pointer;
    font-size: 16px;
    border-radius: 15px;
    width: 100px;
    font-weight: bold;
}
#logo{
    display: block;
    text-align: center;
    margin-bottom: 20px;
}
 .entries{
            display: flex;
            justify-content: flex-start;
            margin-left: 20px;
            padding-top: 30px;
            gap: 5px;
        }

   @media print {
    /* Adjusted styles for printing with added specificity and !important */
    body, html {
        width: 100%;
        margin: 0;
        padding: 0;
        overflow: visible !important; /* Ensures no overflow settings interfere */
    }

    #logo {
        display: flex !important; /* Ensures flexbox is used */
        justify-content: center !important; /* Forces horizontal center alignment */
        align-items: center !important; /* Forces vertical center alignment, if necessary */
        margin: 0 auto !important; /* Center alignment fallback */
        width: 100% !important; /* Ensures full width to allow centering */
        page-break-before: always; /* Adds a page break before the logo if needed */
    }

    #logo img {
        width: 300px !important; /* Adjusts width of the image, modify as needed */
        height: auto !important; /* Maintains aspect ratio */
        margin: 0 auto !important; /* Ensures image is centered within the logo div */
    }
     .pager, .pager span, .pager a {
        display: none !important;
    }
    .pager, .print-btn, .txt-title, .date-container, .mydatagrid {
        display: none !important; /* Hides elements that are not needed in print */

    }

     .pager, .print-btn, .txt-title, .date-container {
        display: none !important;
    }

    /* Table container styles for printing */
    .mydatagrid {
        width: 98% !important;
        border-radius: 0 !important; /* Typically, rounded corners are not preferred in print */
        min-width: 90% !important;
        height: auto !important; /* Height should be auto to accommodate all rows */
        border: 1px solid black !important;
        margin-top: 20px !important;
        padding: 5px !important;
    }

    /* Header row styles for printing */
    .gridheader {
        background-color: gray !important;
        border: none 0px transparent !important;
        height: 25px !important;
        text-align: center !important;
        font-size: 16px !important;
        border-bottom: 1px solid black !important;
    }

    /* Data row styles for printing */
    .rows {
        background-color: transparent !important;
        font-size: 14px !important;
        border: none 0px transparent !important;
        border-bottom: 1px solid black !important;
        text-align: center !important;
    }

    /* Cell padding within the grid */
    .mydatagrid td {
        padding: 5px !important;
    }

    .gridfooter {
        display: block !important;
    }
}


    @media screen {
        /* Hide logo when viewing on the system */
        #logo {
            display:none;
        }
    }
    .pager a{
    background-color: white;
    border-radius: 100%;
    text-decoration: none;
    padding: 3px 6px 3px 6px;
}
        .pager span {
            background-color: white;
            border-radius: 100%;
            text-decoration: none;
            padding: 3px 6px 3px 6px;
        }
    </style>

    <div class="revenue-container" id="revenue">

        <div class="entries">
            <asp:Label ID="Label3" runat="server" Text="Show" CssClass="label"></asp:Label>
           <asp:DropDownList ID="entries" runat="server" CssClass="ddr" OnSelectedIndexChanged="entries_SelectedIndexChanged" AutoPostBack="true" >
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>25</asp:ListItem>
                <asp:ListItem>50</asp:ListItem>
                <asp:ListItem>100</asp:ListItem>
                <asp:ListItem>1000</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label4" runat="server" Text="Entries" CssClass="label"></asp:Label>
        </div>

        <div class="txt-title">
            <h2>Revenue Information</h2>
        </div>

        <div class="date-container">
            <div class="txt-container">
                <asp:Label ID="Label1" runat="server" Text="Minimum Date" CssClass="title"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="txt-box"></asp:TextBox>
            </div>

            <div class="txt-container">
                <asp:Label ID="Label2" runat="server" Text="Maximum Date" CssClass="title"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="txt-box"></asp:TextBox>
            </div>

            <div class="functionbtn">
                <asp:Button ID="ButtonFilter" runat="server" Text="Filter" CssClass="filterbtn"  OnClick="ButtonFilter_Click" />
                <asp:Button ID="ButtonReset" runat="server" Text="Reset" CssClass="resetbtn" OnClick="ButtonReset_Click" />
            </div>

            <div class="print-btn">
                <asp:Button ID="Button1" runat="server" Text="Print" CssClass="printbtn"  OnClientClick="printDiv('divToPrint'); return false;"/>
            </div>
        </div>
    

    <div id="divToPrint" class="divToPrint">

        <div id="logo">
        <img src="Pictures/Logo.png" alt="Logo">
          &nbsp;
        <h1>Barangay Bagong Silangan</h1>
    </div>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="reference_number" DataSourceID="SqlDataSource1" HorizontalAlign="center" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="gridheader" RowStyle-CssClass="rows" AllowPaging="true" PagerSettings-LastPageText="Last" PagerStyle-HorizontalAlign="Right" PagerStyle-ForeColor="Black" PagerStyle-VerticalAlign="Bottom" PagerStyle-BorderColor="#E4E4E4">
            <Columns>
                <asp:TemplateField HeaderText="Full Name">
                    <ItemTemplate>
                        <asp:Label ID="FullNameLabel" runat="server" Text='<%# Eval("first_name") + " " + Eval("last_name") + ( Eval("middle_name") != null ? " " + Eval("middle_name") : "" ) %>'>
                        </asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="reference_number" HeaderText="Reference No." ReadOnly="True" SortExpression="reference_number"></asp:BoundField>
                <asp:BoundField DataField="document_requested" HeaderText="Requested Document" SortExpression="document_requested"></asp:BoundField>
                <asp:BoundField DataField="purpose" HeaderText="Purpose" SortExpression="purpose"></asp:BoundField>
                 <asp:BoundField DataField="date_requested" HeaderText="Request Date" SortExpression="date_requested"></asp:BoundField>
                <asp:BoundField DataField="amount_to_pay" HeaderText="Amount" SortExpression="amount_to_pay"></asp:BoundField>
                <asp:TemplateField>
                    <FooterStyle CssClass="gridfooter" />
                    <FooterTemplate>
                       <asp:Label ID="lblTotalAmount" runat="server" Text="Total Amount: "></asp:Label>
                         <asp:Label ID="lblTotalValue" runat="server" Text=""></asp:Label>
                    </FooterTemplate>
                </asp:TemplateField>
            </Columns>

         
        </asp:GridView>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:barangayinformationsystemConnectionString %>' SelectCommand="SELECT [brgy/resident_info.resident_info].first_name, [brgy/resident_info.resident_info].last_name, [brgy/resident_info.resident_info].middle_name, [doc_issuing.All_RequestedDocument].reference_number, [doc_issuing.All_RequestedDocument].document_requested, [doc_issuing.All_RequestedDocument].purpose, [doc_issuing.All_RequestedDocument].amount_to_pay, [doc_issuing.All_RequestedDocument].date_requested FROM [Revenue.report] INNER JOIN [doc_issuing.All_RequestedDocument] ON [Revenue.report].reference_number = [doc_issuing.All_RequestedDocument].reference_number INNER JOIN [brgy/resident_info.resident_info] ON [Revenue.report].resident_id = [brgy/resident_info.resident_info].resident_id AND [doc_issuing.All_RequestedDocument].resident_id = [brgy/resident_info.resident_info].resident_id WHERE [doc_issuing.All_RequestedDocument].date_requested >= @MinDate AND [doc_issuing.All_RequestedDocument].date_requested <= @MaxDate">
    <SelectParameters>
         <asp:ControlParameter ControlID="TextBox1" Name="MinDate" PropertyName="Text" DefaultValue="1900-01-01" Type="DateTime" />
        <asp:ControlParameter ControlID="TextBox2" Name="MaxDate" PropertyName="Text" DefaultValue="9999-12-31" Type="DateTime" />
    </SelectParameters>
</asp:SqlDataSource>
</div>
        </div>


    <script>
        function printDiv(divId) {
            var printContainer = document.getElementById(divId).cloneNode(true);
            var originalContents = document.body.innerHTML;

            // Clone the node for manipulation without affecting the original
            var cloneContainer = printContainer.cloneNode(true);

            // Find all elements with class 'pager' and hide them
            var pagers = printContainer.querySelectorAll('.pager');
            for (var i = 0; i < pagers.length; i++) {
                pagers[i].style.display = 'none';
            }

            // Calculate total amount
            var totalAmount = 0;
            var rows = printContainer.querySelectorAll('.rows');
            for (var i = 0; i < rows.length; i++) {
                var cells = rows[i].querySelectorAll('td'); // Get all cells in the row
                if (cells.length >= 6) { // Assuming amount_to_pay column is the 6th column
                    var amountCell = cells[5]; // Index 5 represents the 6th column (zero-based index)
                    if (amountCell) {
                        var amountValue = amountCell.textContent.trim().replace(/[^\d.]/g, '');
                        console.log("Amount Value:", amountValue); // Add this line for debugging
                        totalAmount += parseFloat(amountValue) || 0;
                    }
                }
            }

            console.log("Total Amount:", totalAmount); // Add this line for debugging

            // Create a div to display total amount
            var totalDiv = document.createElement('div');
            totalDiv.textContent = 'Total Amount: ' + totalAmount.toFixed(2);
            totalDiv.style.textAlign = 'center';
            totalDiv.style.marginTop = '20px';

            // Append total amount div to the print container
            printContainer.appendChild(totalDiv);
            // Style definitions for printing
            var cssForPrint = "<style>" +
                ".mydatagrid {" +
                "   width: 98%;" +
                "   border-radius: 12px;" +
                "   min-width: 90%;" +
                "   height: 80%;" +
                "   border: 1px solid black;" +
                "   margin-top: 20px;" +
                "   padding: 5px;" +
                "}" +
                ".gridheader {" +
                "   background-color: gray;" +
                "   border: none 0px transparent;" +
                "   height: 25px;" +
                "   text-align: center;" +
                "   font-size: 16px;" +
                "   border-bottom: 1px solid black;" +
                "}" +
                ".rows {" +
                "   background-color: transparent;" +
                "   font-size: 14px;" +
                "   border: none 0px transparent;" +
                "   border-bottom: 1px black solid;" +
                "   text-align: center;" +
                "}" +
                ".mydatagrid td {" +
                "   padding: 5px;" +
                "}" +
                "</style>";



            // Set the innerHTML of the body to the modified clone for printing, including new styles
            document.body.innerHTML = cssForPrint + "<div style='text-align: center;'>" + printContainer.outerHTML + "</div>";

            window.print();

            document.body.innerHTML = originalContents;
            location.reload();
        }


     



    </script>
</asp:Content>
