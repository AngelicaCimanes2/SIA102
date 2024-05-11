using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Barangay_Management_system
{
   
    public partial class Verification : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblDate.Text = DateTime.Now.ToString("dddd").ToUpper();
            lblDay.Text = DateTime.Now.ToString("MMMM dd, yyyy");
            lblTime.Text = DateTime.Now.ToString("h:mm:ss").ToUpper();
        }
        protected void verifybtn_Click(object sender, EventArgs e)
        {
            try
            {
                // Retrieve the random code from the session variable
                string randomCode = (string)Session["randomCode"];
                DateTime codeExpiration = (DateTime)Session["codeExpiration"];


                // Concatenate the values of all textboxes to form the verification code
                string verificationCode = TextBox1.Text.Trim() + TextBox2.Text.Trim() + TextBox3.Text.Trim() +
                                          TextBox4.Text.Trim() + TextBox5.Text.Trim() + TextBox6.Text.Trim();

                if (string.IsNullOrEmpty(verificationCode))
                {
                    // Display error message for empty verification code
                    string script = "alert('Verification code is required!');";
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
                }
                else if (randomCode == verificationCode)
                {
                    // Code verification successful, redirect to reset password page
                    Response.Redirect("Changepassword.aspx");
                }
                else
                {
                    // Display error message for invalid code
                    string script = "alert('Invalid code!');";
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
                }
            }
            catch (Exception ex)
            {
                // Display error message for any other exception
                string script = "alert('" + ex.Message + "');";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
            }
        }

    }
}