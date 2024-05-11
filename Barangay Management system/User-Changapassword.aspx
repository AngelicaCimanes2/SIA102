<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User-Changapassword.aspx.cs" Inherits="Barangay_Management_system.User_Changapassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Change Password</title>
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
    justify-content: center;
    align-items: center;
    flex-direction: column;
    width: 500px;
    height: 550px;
    border: 2px solid black;
    border-radius: 16px;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}

    .wrapper img {
        width: 155px;
        height: 150px;
        margin: 25px 50px 20px 50px;
        animation: rotation 100s infinite linear;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        border-radius: 100%;
        margin-bottom: 100px;
    }

@keyframes rotation {
    from {
        transform: rotate(0deg);
    }

    to {
        transform: rotate(359deg);
    }
}


.wrapper .input-box {
    width: 110px;
    height: 30px;
}


.input-box input {
    width: 230%;
    height: 25px;
    border: 2px solid black;
    border-radius: 10px;
    font-size: 16px;
    padding: 0 20px 0 20px;
}

.txt-boxes {
    gap: 5px;
    display: flex;
    flex-direction: column;
}

.wrapper .forgotpass {
    font-size: 16px;
    margin: 5px 0 0;
}

.forgotpass a {
    color: black;
    text-decoration: none;
    cursor: pointer;
}

    .forgotpass a:hover {
        text-decoration: underline;
    }

.wrapper .btn {
    width: 100%;
    height: 25px;
    border: 2px solid black;
    background-color: #0048ff;
    border-radius: 10px;
    font-size: 16px;
    padding: 0 100px 0 100px;
    color: white;
    margin-top: 30px;
}

.btn {
    cursor: pointer;
}

.wrapper .signup {
    font-size: 13px;
    margin: 5px 0 50px;
}

.signup a, p {
    display: flex;
    align-items: center;
    justify-content: center;
}

.txt-account a {
    color: black;
    text-decoration: none;
    cursor: pointer;
}

    .txt-account a:hover {
        color: blue;
        text-decoration: underline;
    }

.forgotpass {
    display: flex;
    justify-content: center;
    flex-direction: column;
    cursor: pointer;
}

    .forgotpass a:hover {
        color: blue;
    }

.signup a:hover {
    text-decoration: underline;
}

.form {
    display: flex;
    flex-direction: column;
}

.txt-content {
    display: flex;
    flex-direction: column;
    align-items: center;
}

.txt-account {
    padding-top: 5px;
    display: flex;
    flex-direction: column;
    text-align: center;
    justify-content: center;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
           <div class="wrapper-container">
       <div class="wrapper">
           <div class="form">
            <img src="pictures/logo.png" alt="logo"/>

               <div class="txt-boxes">
            <div class="input-box">
                <asp:TextBox ID="username" runat="server" placeholder="New Password"></asp:TextBox>
              </div>
              <div class="input-box">
                  <asp:TextBox ID="password" runat="server" placeholder="Confirm Password" type="password"></asp:TextBox>
              </div>
            </div>

               <div class="ap-row">
                      <div class="ap-colum-3">
                         &nbsp;<asp:Label ID="lblerror" runat="server" ForeColor="red"></asp:Label>
                          </div>
                     </div>

             <div class="txt-content">

            <div class="login">
                <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn" CausesValidation="true"/>

            </div>

            </div>
               </div>
           </div>
        </div>
    </form>
    <script>
        function validateForm() {
            var username = document.getElementById("username").value;
            var password = document.getElementById("password").value;
            var errorFlag = false;

            // Check if username is empty
            if (username.trim() === "") {
                document.getElementById("usernameError").innerText = "Please enter your username";
                errorFlag = true;
            } else {
                document.getElementById("usernameError").innerText = ""; // Clear error message
            }

            // Check if password is empty
            if (password.trim() === "") {
                document.getElementById("passwordError").innerText = "Please enter your password";
                errorFlag = true;
            } else {
                document.getElementById("passwordError").innerText = ""; // Clear error message
            }

            // If there's any error, prevent form submission
            if (errorFlag) {
                return false;
            }
        }
    </script>
    </form>
</body>
</html>
