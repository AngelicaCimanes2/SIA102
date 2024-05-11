<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User-Verification.aspx.cs" Inherits="Barangay_Management_system.User_Verification" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Verification</title>
    <style>
        * {
    padding: 0px;
    margin: 0px;
    box-sizing: border-box;
    font-family: "Abel", sans-serif;
}

body {
    min-height: 100vh;
    overflow: hidden;
    background-color: #f4f4f4;
    display: flex;
    align-items: center;
    justify-content: center;
}

.nav-bar {
    height: 100px;
    background-color: #181A18;
    color: #fbfaf5;
    align-items: center;
    display: flex;
    padding: 0px 20px;
}

.brgy-logo img {
    width: 100px;
    background-color: #fbfaf5;
}

.brgy-logo {
    display: flex;
    align-items: center;
}

.nav-container {
    display: flex;
    justify-content: space-between;
    align-items: center;
    flex-direction: row;
    gap: 60%;
    width: 100%;
}

.date {
    display: flex;
    margin-left: 20px;
    justify-content: space-evenly;
    gap: 10px;
}

.wrapper-container {
    margin-top: 20px;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
}

.wrapper {
    background-color: #fbfaf5;
    display: flex;
    align-items: center;
    flex-direction: column;
    width: 500px;
    height: 570px;
    border: 2px solid black;
    border-radius: 16px;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}

.verification_form {
    padding-top: 50px;
    width: 400px;
    height: 450px;
    text-align: center;
    border-radius: 12px;
}

    .verification_form img {
        width: 155px;
        height: 150px;
        margin-bottom: 20px; /* Adjust spacing between logo and form */
    }

    .verification_form h2 {
        margin-bottom: 20px;
    }

    .verification_form h5 {
        font-weight: normal;
        font-size: 15px;
    }

.form_verify {
    margin-top: 40px;
    display: flex;
    justify-content: center;
    margin-bottom: 20px;
    border-radius: 10px;
}

    .form_verify input {
        width: 50px;
        height: 50px;
        margin: 0 5px;
        padding: 5px;
        text-align: center;
        border: 2px solid black;
        border-radius: 6px;
        font-size: 16px;
    }

.verifybtn {
    margin-top: 30px;
    border-radius: 50px;
    padding: 10px 80px;
    border: none;
    color: white;
    background-color: #0048ff;
    cursor: pointer;
    font-size: 16px;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
         
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
                <asp:Button ID="submitbtn" runat="server" Text="Verify" CssClass="verifybtn" />
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
