<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Requested Document.aspx.cs" Inherits="Barangay_Management_system.Requested_Document" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <style>
        .requested-document{
            background-color: #e4e4e4;
            width: 84%;
            height: 650px;
            margin-left: 235px;
            border-radius: 12px;
            margin-top: 10px;
        }

        .entries{
            display: flex;
            justify-content: flex-start;
            margin-left: 20px;
            padding-top: 30px;
            gap: 5px;
        }

        .txt-title{
            display: flex;
            justify-content: space-between;
            margin-left: 10px;
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
    height: 130px;
}
           .action-dd {
               border: none;
               color: white;
               background-color: blue;
               padding: 5px;
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

    <div class="requested-document">

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
            <h2>Requested Document</h2>
        </div>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="reference_number" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="reference_number" HeaderText="reference_number" ReadOnly="True" InsertVisible="False" SortExpression="reference_number"></asp:BoundField>
                <asp:BoundField DataField="resident_id" HeaderText="resident_id" SortExpression="resident_id"></asp:BoundField>
                <asp:BoundField DataField="document_requested" HeaderText="document_requested" SortExpression="document_requested"></asp:BoundField>
                <asp:BoundField DataField="purpose" HeaderText="purpose" SortExpression="purpose"></asp:BoundField>
                <asp:BoundField DataField="amount_to_pay" HeaderText="amount_to_pay" SortExpression="amount_to_pay"></asp:BoundField>
                <asp:BoundField DataField="date_requested" HeaderText="date_requested" SortExpression="date_requested"></asp:BoundField>
                <asp:BoundField DataField="pickup_date" HeaderText="pickup_date" SortExpression="pickup_date"></asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:barangayinformationsystemConnectionString %>' SelectCommand="SELECT * FROM [doc_issuing.All_RequestedDocument]"></asp:SqlDataSource>
    </div>
</asp:Content>
