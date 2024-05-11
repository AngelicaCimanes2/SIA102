<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Baranggay Official.aspx.cs" Inherits="Barangay_Management_system.Baranggay_Official" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <style>
.tabContainer{
    width: 84%;
    height: 570px;
    margin-left: 235px;
    margin-top: 10px;

}
.tabContainer .buttonContainer{
    
}
.tabContainer .buttonContainer button{
    width: 250px;
    height: 60%;
    border: none;
    outline:none;
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
    height: 108%;
    color: black;
    text-align: center;
    box-sizing: border-box;
    font-family: sans-serif;
    font-size: 22px;
    display: none;
    border-radius: 0px 12px 12px 12px;
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
    font-size: 16px;
    text-align: center;
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
.add-button {
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
.add{
    display: flex;
    justify-content: flex-end;
    align-items: center;
    margin-right: 30px;
}
.action-dd{
    border: none;
    color: white;
    background-color:blue;
    padding: 5px;
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
}
        .pager span {
            background-color: white;
            border-radius: 100%;
            text-decoration: none;
            padding: 3px 6px 3px 6px;
        }

        
.container{
    width: 100%;
    max-width: 1200px;
    margin: 0 auto;
    overflow: hidden;
}

.picture-container{
    display: flex;
    align-items: center;
    flex-direction: column;
   justify-content: center;
    width:100%;
    height:500px;
}

.modal-official{
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
}

.modal__container{
    margin: auto;
    width: 90%;
    max-width: 600px;
    max-height: 90%;
    background-color: #fff;
    border-radius: 6px;
    padding: 10px 2.5em;
    display: grid;
    gap: 1em;
    place-items: center;
    grid-auto-columns: 100%;
    transform: var(--transform);
    transition:var(--transition);
    display: flex;
    flex-direction: column;
    margin-left: 35%;
}

.modal__title{
    font-size: 32px;
}


.buttons{
  display: flex;
  justify-content: space-evenly;
  width: 50%;
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
.modal-open:hover{
  color: #5550f2;
  background-color: #fff;
  cursor:pointer;
}


.main-user-info{
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
}

.user-input-box:nth-child(2n){
    justify-content: end;
}

.user-input-box{
    display: flex;
    flex-wrap: wrap;
    width: 50%;
    padding-bottom: 8px;
}

.user-input-box label{
    width: 95%;
    color: black;
    font-size: 15px;
    font-weight: 400;
    margin: 5px 0;
}

.user-input-box input  {
    width: 95%;
    border-radius: 7px;
    outline: none;
    border: 1px solid grey;
    padding:5px;
}
.user-input-box select{
    padding: 5px;
    width: 250px;
    border-radius: 7px;
}


.img-area {
	position: relative;
	width: 50%;
	height: 200px;
	border: black 1px dashed ;
	margin-bottom: 30px;
	border-radius: 15px;
	overflow: hidden;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
    margin-bottom: 0;
}
.img-area .icon {
	font-size: 100px;
}
.img-area h3 {
	font-size: 20px;
	font-weight: 500;
	margin-bottom: 6px;
    text-align:center;
}
.img-area p {
	color: #999;
}
.img-area p span {
	font-weight: 600;
}
.img-area img {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	object-fit: contain;
	object-position: center;
	z-index: 100;
}
.img-area::before {
	content: attr(data-img);
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, .5);
    color: white;
	font-weight: 500;
	text-align: center;
	display: flex;
	justify-content: center;
	align-items: center;
	pointer-events: none;
	opacity: 0;
	transition: all .3s ease;
	z-index: 200;
}
.img-area.active:hover::before {
	opacity: 1;
}
.select-image {
    top: 0;
    margin: 0;
	display: block;
	width: 50%;
	padding: 10px;
    color: white;
	border-radius: 15px;
	background: blue;
	font-weight: 500;
	font-size: 16px;
	border: none;
	cursor: pointer;
	transition: all .3s ease;
}
.select-image:hover {
	background: darkblue;
}

@media (max-width:800px) {
    .nav__list{
        display: none;
    }

    .nav__menu{
        display: block;
    }

    .hero__main{
        grid-template-columns: 1fr;
        grid-template-rows:max-content max-content ;
        text-align: center;
    }

    .hero__picture{
        grid-row: 1/2;
    }

    .hero__img{
        max-width: 500px;
        display: block;
        margin: 0 auto;
    }

    .modal__container{
        padding: 2em 1.5em;
    }

    .modal__title{
        font-size: 2rem;
    }
}

@media(max-width: 600px){
    .container{
        min-width: 280px;
    }

    .user-input-box{
        margin-bottom: 12px;
        width: 100%;
    }

    .user-input-box:nth-child(2n){
        justify-content: space-between;
    }

    .gender-category{
        display: flex;
        justify-content: space-between;
        width: 100%;
    }

    .main-user-info{
        max-height: 380px;
        overflow: auto;
    }

    .main-user-info::-webkit-scrollbar{
        width: 0;
    }
}

.delete-btn{
    text-decoration: none;
    color: white;
    background-color: red;
    padding: 5px;
    border-radius: 12px;
}
.edit-btn{
    text-decoration: none;
    color: white;
    background-color: blue;
    padding: 5px 15px 5px 15px;
    border-radius: 12px;
}
    </style>

    <div class="tabContainer">
    <div class="buttonContainer">
        <button class="panel1" onclick="showPanel(0,'#E4E4E4')">Barangay Officials</button>
        <button class="panel2" onclick="showPanel(1,'#E4E4E4')">Active</button>
        <button class="panel3" onclick="showPanel(2,'#E4E4E4')">Inactive</button>
    </div>
       

    <div class="tabPanel">

        <div class="entries">
            <asp:Label ID="Label1" runat="server" Text="Show" CssClass="label"></asp:Label>
            <asp:DropDownList ID="entriesddl" runat="server" AutoPostBack="true">
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>25</asp:ListItem>
                <asp:ListItem>50</asp:ListItem>
                <asp:ListItem>100</asp:ListItem>
                <asp:ListItem>1000</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label2" runat="server" Text="Entries" CssClass="label"></asp:Label>
        </div>

        <div class="txt-title">
            <h2>Baranggay Official's</h2>
            <div class="add"><asp:Button  ID="Button1" runat="server" Text="Add +" CssClass="add-button"/></div>
            </div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="official_id" DataSourceID="SqlDataSource1"  HorizontalAlign="center" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="gridheader" RowStyle-CssClass="rows" AllowPaging="true" PagerSettings-LastPageText="Last" PagerStyle-HorizontalAlign="Right" PagerStyle-ForeColor="Black" PagerStyle-VerticalAlign="Bottom" PagerStyle-BorderColor="#E4E4E4" OnRowDataBound="GridView1_RowDataBound">
            <Columns>
                <asp:BoundField DataField="official_id" HeaderText="official_id" ReadOnly="True" SortExpression="official_id"></asp:BoundField>
                <asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name"></asp:BoundField>
                <asp:BoundField DataField="middle_initial" HeaderText="middle_initial" SortExpression="middle_initial"></asp:BoundField>
                <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name"></asp:BoundField>
                <asp:BoundField DataField="position" HeaderText="position" SortExpression="position"></asp:BoundField>
                <asp:BoundField DataField="chairmanship" HeaderText="chairmanship" SortExpression="chairmanship"></asp:BoundField>
                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status"></asp:BoundField>
                <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:DropDownList ID="actiondd" runat="server" CssClass="action-dd" AutoPostBack="true">
                                <asp:ListItem Text="Choose Status" Value=""></asp:ListItem>
                                <asp:ListItem Text="Active" Value="Active" ></asp:ListItem>
                                <asp:ListItem Text="Inactive" Value="Inactive"></asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                </asp:TemplateField>
                    <asp:TemplateField HeaderText="Tools">
                        <ItemTemplate>
                            <asp:LinkButton ID="editBtn" runat="server" Text="Edit" CssClass="edit-btn"></asp:LinkButton>
                           <asp:LinkButton ID="deleteBtn" runat="server" CommandName="Delete" Text="Delete" CssClass="delete-btn" CausesValidation="False" OnClientClick="return confirm('Are you sure you want to delete this item?');" CommandArgument='<%# Eval("official_id") %>' OnCommand="deleteBtn_Command"></asp:LinkButton>
                        </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:barangayinformationsystemConnectionString %>' SelectCommand="SELECT * FROM [brgy/resident_info.officials]"></asp:SqlDataSource>
        <section class="modal-official ">
            <div class="modal__container">

                <div class="picture-container">
                    <input type="file" id="file" accept="image/*" hidden="hidden" />

                    <div class="img-area" data-img="">
                        <i class='bx bxs-cloud-upload icon'></i>
                        <h3>Upload Image</h3>
                    </div>
                </div>
                <asp:Button ID="imagebtn" runat="server" Text="Select Image" CssClass="select-image"/>
                <div class="main-user-info">


                    <div class="user-input-box">
                        <label>Firstname</label>
                        <asp:TextBox ID="firstname" runat="server" placeholder="Enter First Name"></asp:TextBox>
                    </div>

                    <div class="user-input-box">
                        <label>Lastname</label>
                        <asp:TextBox ID="lastname" runat="server" placeholder="Enter Last Name"></asp:TextBox>
                    </div>

                    <div class="user-input-box">
                        <label>Middlename</label>
                        <asp:TextBox ID="middlename" runat="server" placeholder="Enter Middle Name"></asp:TextBox>
                    </div>
                    <div class="user-input-box">
                        <label for="phoneNumber">Status</label>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem Value="">Status</asp:ListItem>
                            <asp:ListItem>Active</asp:ListItem>
                            <asp:ListItem>Inactive</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="user-input-box">
                        <label>Chairmanship</label>
                        <asp:DropDownList ID="DropDownList4" runat="server">
                            <asp:ListItem >Choose Chairmanship</asp:ListItem>
                            <asp:ListItem>Barangay Chairman</asp:ListItem>
                            <asp:ListItem>Barangay Sercretary</asp:ListItem>
                            <asp:ListItem>Barangay Admin</asp:ListItem>
                            <asp:ListItem>Barangay Treasurer</asp:ListItem>
                            <asp:ListItem>Barangay EX-O</asp:ListItem>
                            <asp:ListItem>SK Chairman</asp:ListItem>
                            <asp:ListItem>Kagawad</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="user-input-box">
                        <label>Position</label>
                        <asp:DropDownList ID="DropDownList5" runat="server">
                             <asp:ListItem value="">Choose Chairmanship</asp:ListItem>
                            <asp:ListItem>Chairman</asp:ListItem>
                            <asp:ListItem>Kagawad</asp:ListItem>
                            <asp:ListItem>Treasurer</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="user-input-box">
                        <label>Term Start</label>
                        <asp:TextBox ID="termstart" runat="server" type="date"></asp:TextBox>
                    </div>
                    <div class="user-input-box">
                        <label>Term End</label>
                       <asp:TextBox ID="termend" runat="server" type="date"></asp:TextBox>
                    </div>
                </div>

                <div>
                    <asp:Button ID="Insert_btn" runat="server" Text="Save"  CssClass="modal-open" OnClick="Insert_btn_Click"/>
                    <asp:Button ID="closebtn" runat="server" Text="Close"  CssClass="modal-close"/>
                </div>
            </div>
        </section>

        <section class="modal-official ">
            <div class="modal__container">

                <div class="picture-container">
                    <input type="file" id="file" accept="image/*" hidden="hidden" />

                    <div class="img-area" data-img="">
                        <i class='bx bxs-cloud-upload icon'></i>
                        <h3>Upload Image</h3>
                    </div>
                </div>
                <asp:Button ID="Button2" runat="server" Text="Select Image" CssClass="select-image"/>
                <div class="main-user-info">


                    <div class="user-input-box">
                        <label>Firstname</label>
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter First Name"></asp:TextBox>
                    </div>

                    <div class="user-input-box">
                        <label>Lastname</label>
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Last Name"></asp:TextBox>
                    </div>

                    <div class="user-input-box">
                        <label>Middlename</label>
                        <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter Middle Name"></asp:TextBox>
                    </div>
                    <div class="user-input-box">
                        <label for="phoneNumber">Status</label>
                        <asp:DropDownList ID="DropDownList6" runat="server">
                            <asp:ListItem Value="">Status</asp:ListItem>
                            <asp:ListItem>Active</asp:ListItem>
                            <asp:ListItem>Inactive</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="user-input-box">
                        <label>Chairmanship</label>
                        <asp:DropDownList ID="DropDownList7" runat="server">
                            <asp:ListItem >Choose Chairmanship</asp:ListItem>
                            <asp:ListItem>Barangay Chairman</asp:ListItem>
                            <asp:ListItem>Barangay Sercretary</asp:ListItem>
                            <asp:ListItem>Barangay Admin</asp:ListItem>
                            <asp:ListItem>Barangay Treasurer</asp:ListItem>
                            <asp:ListItem>Barangay EX-O</asp:ListItem>
                            <asp:ListItem>SK Chairman</asp:ListItem>
                            <asp:ListItem>Kagawad</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="user-input-box">
                        <label>Position</label>
                        <asp:DropDownList ID="DropDownList8" runat="server">
                             <asp:ListItem value="">Choose Chairmanship</asp:ListItem>
                            <asp:ListItem>Chairman</asp:ListItem>
                            <asp:ListItem>Kagawad</asp:ListItem>
                            <asp:ListItem>Treasurer</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="user-input-box">
                        <label>Term Start</label>
                        <asp:TextBox ID="TextBox4" runat="server" type="date"></asp:TextBox>
                    </div>
                    <div class="user-input-box">
                        <label>Term End</label>
                       <asp:TextBox ID="TextBox5" runat="server" type="date"></asp:TextBox>
                    </div>
                </div>

                <div>
                    <asp:Button ID="Update_btn" runat="server" Text="Update"  CssClass="modal-open" OnClick="Update_btn_Click"/>
                    <asp:Button ID="Button4" runat="server" Text="Close"  CssClass="modal-close"/>
                </div>
            </div>
        </section>







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
            <h2>Actives</h2>
            </div>

        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="official_id" DataSourceID="SqlDataSource2"  HorizontalAlign="center" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="gridheader" RowStyle-CssClass="rows" AllowPaging="true" PagerSettings-LastPageText="Last" PagerStyle-HorizontalAlign="Right" PagerStyle-ForeColor="Black" PagerStyle-VerticalAlign="Bottom" PagerStyle-BorderColor="#E4E4E4" OnRowDataBound="GridView2_RowDataBound">
            <Columns>
                <asp:BoundField DataField="official_id" HeaderText="official_id" ReadOnly="True" SortExpression="official_id"></asp:BoundField>
                <asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name"></asp:BoundField>
                <asp:BoundField DataField="middle_initial" HeaderText="middle_initial" SortExpression="middle_initial"></asp:BoundField>
                <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name"></asp:BoundField>
                <asp:BoundField DataField="position" HeaderText="position" SortExpression="position"></asp:BoundField>
                <asp:BoundField DataField="chairmanship" HeaderText="chairmanship" SortExpression="chairmanship"></asp:BoundField>
                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status"></asp:BoundField>
                <asp:TemplateField HeaderText="Tools">
                        <ItemTemplate>
                            <asp:DropDownList ID="actiondd" runat="server" CssClass="action-dd" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="true">
                                 <asp:ListItem Text="Choose Status" Value=""></asp:ListItem>
                                <asp:ListItem Text="Active" Value="Active" ></asp:ListItem>
                                <asp:ListItem Text="Inactive" Value="Inactive"></asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:barangayinformationsystemConnectionString %>' SelectCommand="SELECT * FROM [brgy/resident_info.officials] WHERE ([status] = @status)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Active" Name="status" Type="String"></asp:Parameter>
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
            <h2>Inactives</h2>
            </div>

        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="official_id" DataSourceID="SqlDataSource3"  HorizontalAlign="center" CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="gridheader" RowStyle-CssClass="rows" AllowPaging="true" PagerSettings-LastPageText="Last" PagerStyle-HorizontalAlign="Right" PagerStyle-ForeColor="Black" PagerStyle-VerticalAlign="Bottom" PagerStyle-BorderColor="#E4E4E4" OnRowDataBound="GridView3_RowDataBound">
            <Columns>
                <asp:BoundField DataField="official_id" HeaderText="official_id" ReadOnly="True" SortExpression="official_id"></asp:BoundField>
                <asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name"></asp:BoundField>
                <asp:BoundField DataField="middle_initial" HeaderText="middle_initial" SortExpression="middle_initial"></asp:BoundField>
                <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name"></asp:BoundField>
                <asp:BoundField DataField="position" HeaderText="position" SortExpression="position"></asp:BoundField>
                <asp:BoundField DataField="chairmanship" HeaderText="chairmanship" SortExpression="chairmanship"></asp:BoundField>
                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status"></asp:BoundField>
                <asp:TemplateField HeaderText="Tools">
                        <ItemTemplate>
                            <asp:DropDownList ID="actiondd" runat="server" CssClass="action-dd" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" AutoPostBack="true">
                                <asp:ListItem Text="Choose Status" Value=""></asp:ListItem>
                                <asp:ListItem Text="Active" Value="Active" ></asp:ListItem>
                                <asp:ListItem Text="Inactive" Value="Inactive"></asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:barangayinformationsystemConnectionString %>' SelectCommand="SELECT * FROM [brgy/resident_info.officials] WHERE ([status] = @status)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Inactive" Name="status" Type="String"></asp:Parameter>
            </SelectParameters>
        </asp:SqlDataSource>
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
            showPanel(0, '#E4E4E4'); // This will open the first tab on page load
        };


        const openModalAdd1 = document.querySelector('.add-button');
        const modalAdd1 = document.querySelector('.modal-official'); // Change modal to modalAdd
        const closeModalAdd1 = document.querySelector('.modal-close');

        openModalAdd1.addEventListener('click', (event) => {
            event.preventDefault();
            modalAdd1.classList.add('modal-show'); // Change modal to modalAdd
        });

        closeModalAdd1.addEventListener('click', (event) => {
            event.preventDefault();
            modalAdd1.classList.remove('modal-show'); // Change modal to modalAdd
        });

        const openModalEditButtons = document.querySelectorAll('.edit-btn');
        const modalEdit = document.querySelector('.modal-official');
        const closeModalEdit = document.querySelector('.modal-close');

        openModalEditButtons.forEach(button => {
            button.addEventListener('click', (event) => {
                event.preventDefault();
                console.log('Edit button clicked');
                modalEdit.classList.add('modal-show');
            });
        });

        closeModalEdit.addEventListener('click', (event) => {
            event.preventDefault();
            console.log('Close button clicked');
            modalEdit.classList.remove('modal-show');
        });



            const selectImage = document.querySelector('.select-image');
            const inputFile = document.querySelector('#file');
            const imgArea = document.querySelector('.img-area');

            selectImage.addEventListener('click', function (event) {
                event.preventDefault(); // Prevent default action (i.e., form submission)
                inputFile.click();
            });

            inputFile.addEventListener('change', function () {
                const image = this.files[0];
                if (image.size < 2000000) {
                    const reader = new FileReader();
                    reader.onload = () => {
                        const allImgs = imgArea.querySelectorAll('img');
                        allImgs.forEach(item => item.remove());
                        const imgUrl = reader.result;
                        const img = document.createElement('img');
                        img.src = imgUrl;
                        imgArea.appendChild(img);
                        imgArea.classList.add('active');
                        imgArea.dataset.img = image.name;
                    };
                    reader.readAsDataURL(image);
                } else {
                    alert("Image size more than 2MB");
                }
            });

    </script>


</asp:Content>
