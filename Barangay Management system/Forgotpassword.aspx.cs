using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Configuration;
using System.Text.RegularExpressions;

namespace Barangay_Management_system
{
    public partial class Forgotpassword : System.Web.UI.Page
    {
        string randomCode;
        public static string too;

        protected void Page_Load(object sender, EventArgs e)
        {
            lblDate.Text = DateTime.Now.ToString("dddd").ToUpper();
            lblDay.Text = DateTime.Now.ToString("MMMM dd, yyyy");
            lblTime.Text = DateTime.Now.ToString("h:mm:ss").ToUpper();
        }

        protected void sendbtn_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtEmail.Text))
            {
                string script = "alert('Please enter your email.');";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
                return; // Exit the method if email is empty
            }

            // Check if the email is in a valid format
            if (!IsValidEmail(txtEmail.Text))
            {
                string script = "alert('Please enter a valid email address.');";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
                return; // Exit the method if email is invalid
            }

            string from, pass, messageBody;
            Random rand = new Random();
            this.randomCode = (rand.Next(999999)).ToString();
            Session["randomCode"] = this.randomCode;
            Session["codeExpiration"] = DateTime.Now.AddMinutes(5);
            MailMessage message = new MailMessage();
            too = (txtEmail.Text).ToString();

            from = ConfigurationManager.AppSettings["uname"];
            pass = ConfigurationManager.AppSettings["pass"];
            messageBody = "Dear User,\n\n"
                   + "At your request, a password reset code is provided below. Please enter this code into the Password Reset Form. This code will only be available for 5 minutes.\n\n"
                   + "Password Reset Code: " + this.randomCode;
            message.To.Add(too);
            message.From = new MailAddress(from);
            message.Body = messageBody;
            message.Subject = "Forgot Password Code";

            SmtpClient client = new SmtpClient();
            client.Host = "smtp.gmail.com";
            client.Port = 587;
            client.EnableSsl = true;
            client.UseDefaultCredentials = false;
            client.Credentials = new System.Net.NetworkCredential("barangay.bagongsilangann@gmail.com", "sbvymswhqbyvihxr");

            try
            {
                client.Send(message);
                string script = "alert('Code sent successfully!');";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
                Response.Redirect("Verification.aspx");
            }
            catch (Exception ex)
            {
                string script = "alert('" + ex.Message + "');";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
            }
        }

        protected bool IsValidEmail(string email)
        {
            // This regular expression pattern checks if the email follows the standard email format
            string pattern = @"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$";
            return Regex.IsMatch(email, pattern);
        }
    }
}
