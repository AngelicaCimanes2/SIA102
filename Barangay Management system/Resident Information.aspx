    <%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Resident Information.aspx.cs" Inherits="Barangay_Management_system.Resident_Information" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .resident-information{
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
    height: 230px;
}
.viewBtn{
    border: none;
    color:white;
    background-color: #48BB78; 
    border-radius: 12px;
    align-items: center;
    padding: 5px;
    cursor:pointer;
    text-decoration: none;
    margin-right: 5px;
      padding: 2px 10px 2px 10px;
}

.btn-container{
    display: flex;
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
        .modal-Resident{
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: #111111bd;
    display: flex;
    opacity: 0;
    pointer-events: none;
    animation: none;
     font-family: "Abel", sans-serif;
}

.modal-show{
    opacity: 1;
    pointer-events: unset;
    transition: opacity .6s;
    --transform: translateY(0);
    --transition: transform .8s .8s;
}

.modal-container{
  margin: auto;
    width: 75%;
    max-height: 90%;
    background-color: #fff;
    border-radius: 6px;
    gap: 1em;
    transform: var(--transform);
    transition: var(--transition);
    display: flex;
    align-items: center;
    flex-direction: column;
    margin-left: 20%;
    padding-bottom: 20px;
}
.modal-close{
    text-decoration: none;
    color: #fff;
    background-color: red;
    padding: 8px 20px;
    border: 1px solid ;
    border-radius: 6px;
    display: inline-block;
    font-weight: 300;
    transition: background-color .3s;
}
.modal-open{
  text-decoration: none;
  color: #fff;
  background-color:blue;
  padding: 8px 20px;
  border: 1px solid ;
  border-radius: 6px;
  display: inline-block;
  font-weight: 300;
  transition: background-color .3s;
}

.modal-close:hover{
    color: #F26250;
    background-color: #fff;
    cursor:pointer;
}
        .modal-open:hover {
            color: #5550f2;
            background-color: #fff;
            cursor: pointer;
        }
        .buttons{
  display: flex;
  justify-content: space-evenly;
  width: 50%;
}
.resident-info-container{
    display: grid;
    justify-items: flex-start;
    grid-template-columns: 40% 40% 40%;
    width: 90%;
}
.resident-info-title{
    width: 100%;
    display:flex;
    align-items: start;
    justify-content: start;
    flex-direction:column;
    font-size: 20px;
}
.resident-info-content{
    display:flex;
    align-items:start;
    flex-direction: column;
    line-height: 1px;
}

    </style>

    <div class="resident-information">

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
            <h2>Resident Information</h2>
        </div>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="resident_id" DataSourceID="SqlDataSource1" HorizontalAlign="center" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="gridheader" RowStyle-CssClass="rows" AllowPaging="true" PagerSettings-LastPageText="Last" PagerStyle-HorizontalAlign="Right" PagerStyle-ForeColor="Black" PagerStyle-VerticalAlign="Bottom" PagerStyle-BorderColor="#E4E4E4">
            <Columns>
                <asp:BoundField DataField="resident_id" HeaderText="resident_id" ReadOnly="True" SortExpression="resident_id"></asp:BoundField>
                <asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name"></asp:BoundField>
                <asp:BoundField DataField="middle_name" HeaderText="middle_name" SortExpression="middle_name"></asp:BoundField>
                <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name"></asp:BoundField>
                <asp:BoundField DataField="suffix" HeaderText="suffix" SortExpression="suffix"></asp:BoundField>
                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender"></asp:BoundField>
                <asp:BoundField DataField="birthdate" HeaderText="birthdate" SortExpression="birthdate"></asp:BoundField>
                <asp:BoundField DataField="birthplace" HeaderText="birthplace" SortExpression="birthplace"></asp:BoundField>
                <asp:BoundField DataField="address_id" HeaderText="address_id" SortExpression="address_id"></asp:BoundField>
                <asp:BoundField DataField="civil_status" HeaderText="civil_status" SortExpression="civil_status"></asp:BoundField>
                <asp:BoundField DataField="nationality" HeaderText="nationality" SortExpression="nationality"></asp:BoundField>
                <asp:BoundField DataField="voting_status" HeaderText="voting_status" SortExpression="voting_status"></asp:BoundField>
                <asp:BoundField DataField="contact_number" HeaderText="contact_number" SortExpression="contact_number"></asp:BoundField>
                <asp:TemplateField HeaderText="Tools">
                    <ItemTemplate>
                        <!--To fire the View event.-->
                         <asp:LinkButton ID="lbView" runat="server" CommandName="View" Text="View" CssClass="viewBtn"
            OnClientClick='<%# "openModal(" + Container.DataItemIndex + "); return false;" %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:barangayinformationsystemConnectionString %>' SelectCommand="SELECT * FROM [brgy/resident_info.resident_info]"></asp:SqlDataSource>
        <section class="modal-Resident ">
            <div class="modal-container">
                <div class="resident-info-container">
                    <div class="resident-info-title">
                        <h2>Resident Profile</h2>
                     </div>

                    <div></div>
                    <div></div>

                    <div class="resident-info-content">
                        <h1>Personal Information</h1>
                        <p>Name:
                            <asp:Label ID="lblName" runat="server" Text="name"></asp:Label></p>
                        <p>Gender:
                            <asp:Label ID="lblGender" runat="server"></asp:Label></p>
                        <p>Birthdate:
                            <asp:Label ID="lblBirthdate" runat="server"></asp:Label></p>
                        <p>Birthplace:
                            <asp:Label ID="lblBirthplace" runat="server"></asp:Label></p>
                        <p>Address ID:
                            <asp:Label ID="lblAddressID" runat="server"></asp:Label></p>
                        <p>Civil Status:
                            <asp:Label ID="lblCivilStatus" runat="server"></asp:Label></p>
                        <p>Nationality:
                            <asp:Label ID="lblNationality" runat="server"></asp:Label></p>
                        <p>Voting Status:
                            <asp:Label ID="lblVotingStatus" runat="server"></asp:Label></p>
                        <p>Contact Number:
                            <asp:Label ID="lblContactNumber" runat="server"></asp:Label></p>
                    </div>

                    <div class="resident-info-content">
                        <h1>Family Background</h1>
                         <p>Spouse Name:
                            <asp:Label ID="Label3" runat="server"></asp:Label></p>
                        <p>Contact Number:
                            <asp:Label ID="Label4" runat="server"></asp:Label></p>
                        <p>Mother's Name:
                            <asp:Label ID="Label5" runat="server"></asp:Label></p>
                        <p>Contact Number:
                            <asp:Label ID="Label6" runat="server"></asp:Label></p>
                        <p>Father's Name:
                            <asp:Label ID="Label7" runat="server"></asp:Label></p>
                        <p>Contact Number:
                            <asp:Label ID="Label8" runat="server"></asp:Label></p>
                        <p>Number of Children:
                            <asp:Label ID="Label9" runat="server"></asp:Label></p>
                        <p> Childrens Name:
                            <asp:Label ID="Label10" runat="server"></asp:Label></p>
                    </div>

                    <div class="resident-info-content">
                        <h1>Address</h1>
                        <p>House Number:
                            <asp:Label ID="Label11" runat="server"></asp:Label></p>
                        <p> Street Number:
                            <asp:Label ID="Label12" runat="server"></asp:Label></p>
                        <p>Subdivision:
                            <asp:Label ID="Label13" runat="server"></asp:Label></p>
                        <p>Purok:
                            <asp:Label ID="Label14" runat="server"></asp:Label></p>
                        <p>Area:
                            <asp:Label ID="Label15" runat="server"></asp:Label></p>
                        <p>Zip Code:
                            <asp:Label ID="Label16" runat="server"></asp:Label></p>
                    </div>

                </div>
                <div>
                    <asp:Button ID="openbtn" runat="server" Text="Edit" CssClass="modal-open" />
                    <asp:Button ID="closebtn" runat="server" Text="Close" CssClass="modal-close" />
                </div>
            </div>
            </section>
    </div>
    <script>
        function openModal(index) {
            console.log("Open modal function called.");

            var grid = document.getElementById('<%= GridView1.ClientID %>');
            var row = grid.rows[index + 1]; // Add 1 to account for the header row

            var fullName = row.cells[1].textContent.trim() + " " +
                row.cells[2].textContent.trim() + " " +
                row.cells[3].textContent.trim() + " " +
                row.cells[4].textContent.trim();

            document.getElementById('<%= lblName.ClientID %>').textContent = fullName;
            document.getElementById('<%= lblGender.ClientID %>').textContent = row.cells[5].textContent.trim();
            document.getElementById('<%= lblBirthdate.ClientID %>').textContent = row.cells[6].textContent.trim();
            document.getElementById('<%= lblBirthplace.ClientID %>').textContent = row.cells[7].textContent.trim();
    document.getElementById('<%= lblAddressID.ClientID %>').textContent = row.cells[8].textContent.trim();
    document.getElementById('<%= lblCivilStatus.ClientID %>').textContent = row.cells[9].textContent.trim();
    document.getElementById('<%= lblNationality.ClientID %>').textContent = row.cells[10].textContent.trim();
    document.getElementById('<%= lblVotingStatus.ClientID %>').textContent = row.cells[11].textContent.trim();
            document.getElementById('<%= lblContactNumber.ClientID %>').textContent = row.cells[12].textContent.trim();

            var modal = document.querySelector('.modal-Resident');
            modal.classList.add('modal-show');
    // Code to open the modal


            // Code to open the modal
        }
        document.addEventListener("DOMContentLoaded", function () {
            const openModalButtons = document.querySelectorAll('.viewBtn');
            const modal = document.querySelector('.modal-Resident');
            const closeModal = document.querySelector('.modal-close');

            openModalButtons.forEach((button) => {
                button.addEventListener('click', (event) => {
                    event.preventDefault();
                    modal.classList.add('modal-show');
                });
            });

            closeModal.addEventListener('click', (event) => {
                event.preventDefault();
                modal.classList.remove('modal-show');
            });
        });
    </script>
</asp:Content>
