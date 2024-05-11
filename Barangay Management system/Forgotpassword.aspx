<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forgotpassword.aspx.cs" Inherits="Barangay_Management_system.Forgotpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Forgotpassword.css" />
    <title>Forgot Password</title>
</head>
<body>
 <form id="form1" runat="server">

         <nav>
            <div class="nav-bar">
                <div class="nav-container">
                    <div class="brgy-logo">
                        <img src="Pictures/Logo.png" alt="logo"/>
                    </div>
                    <div class="date">
                        <h3>
                            <asp:Label ID="lblDay" runat="server" Text="Label"></asp:Label></h3>
                        <h3>
                            <asp:Label ID="lblDate" runat="server" Text="Label"></asp:Label></h3>
                        <h3>
                            <asp:Label ID="lblTime" runat="server" Text="Label"></asp:Label></h3>
                    </div>
                </div>
            </div>
        </nav>


        <div class="wrapper-container">
            <div class="wrapper">
                <div class="container">
                    <img src="Pictures/logo.png" alt="logo" />
                    <h2>Forgot Password?</h2>
                    <p>Enter the Email Address associated with your account</p>
                </div>
                <div class="input-box">
                    <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter Your Email Address" CssClass="txtemail" Width="273px"  ></asp:TextBox>
                    <asp:Button ID="sendbtn" runat="server" Text="Send" CssClass="btn" OnClick="sendbtn_Click" />
                </div>
            </div>
        </div>
   

    

  

    <script>
        setInterval(function () {
            var now = new Date();
            var timeLabel = document.getElementById('<%= lblTime.ClientID %>');
            timeLabel.innerHTML = now.toLocaleTimeString();
        }, 1000);

        // Update the date label every day
        setInterval(function () {
            var now = new Date();
            var dateLabel = document.getElementById('<%= lblDate.ClientID %>');
                dateLabel.innerHTML = now.toLocaleDateString();
            }, 86400000); // 24 hours * 60 minutes * 60 seconds * 1000 milliseconds
    </script>
        </form> 

</body>
</html>
