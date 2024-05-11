<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Verification.aspx.cs" Inherits="Barangay_Management_system.Verification" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Verification.css" />
    <title>Verification</title>
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
        <div class="verification_form">
            <img src="Pictures/logo.png" alt="Logo" />
            <h2>Verification</h2>
            <h1></h1>
            <h5>Enter the code receive on email</h5>
            <div action="#" method="post">
                <div class="form_verify">
                    <asp:TextBox ID="TextBox1" runat="server" MaxLength="1" required="required" onkeyup="moveToNext(this, '<%= TextBox2.ClientID %>')"></asp:TextBox>
                    <asp:TextBox ID="TextBox2" runat="server" MaxLength="1" required="required" onkeyup="moveToNext(this, '<%= TextBox3.ClientID %>')"></asp:TextBox>
                    <asp:TextBox ID="TextBox3" runat="server" MaxLength="1" required="required" onkeyup="moveToNext(this, '<%= TextBox4.ClientID %>')"></asp:TextBox>
                    <asp:TextBox ID="TextBox4" runat="server" MaxLength="1" required="required" onkeyup="moveToNext(this, '<%= TextBox5.ClientID %>')"></asp:TextBox>
                    <asp:TextBox ID="TextBox5" runat="server" MaxLength="1" required="required" onkeyup="moveToNext(this, '<%= TextBox6.ClientID %>')"></asp:TextBox>
                    <asp:TextBox ID="TextBox6" runat="server" MaxLength="1" required="required" onkeyup="moveToNext(this, '<%= submitbtn.ClientID %>')"></asp:TextBox>
                </div>
                <asp:Label ID="resend" runat="server">Didn't get the OTP?<a href="#">click here</a></asp:Label>
                <asp:Button ID="submitbtn" runat="server" Text="Verify" CssClass="verifybtn" OnClick="verifybtn_Click" />
            </div>
        </div>
    </div>
</div>

<script>
    const inputs = document.querySelectorAll('.form_verify input');

    inputs.forEach((input, index) => {
        input.addEventListener('input', (event) => {
            if (event.inputType !== 'deleteContentBackward') {
                if (input.value.length === 1) {
                    if (index < inputs.length - 1) {
                        inputs[index + 1].focus();
                    }
                }
            }
        });

        input.addEventListener('keydown', (event) => {
            if (event.keyCode === 8 && input.value.length === 0) {
                if (index > 0) {
                    inputs[index - 1].focus();
                }
            }
        });
    });
</script>
    </form>
       
         
</body>
</html>