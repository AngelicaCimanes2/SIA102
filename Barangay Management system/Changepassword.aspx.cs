using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Configuration;


namespace Barangay_Management_system
{
    public partial class Changepassword : System.Web.UI.Page
{
    string username;
    protected void Page_Load(object sender, EventArgs e)
    {
        {
            try
            {
                username = Login.to;
            }
            catch (Exception ex)
            {
                string script = "alert('" + ex.Message + "');";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
            }
        }
        lblDate.Text = DateTime.Now.ToString("dddd").ToUpper();
        lblDay.Text = DateTime.Now.ToString("MMMM dd, yyyy");
        lblTime.Text = DateTime.Now.ToString("h:mm:ss").ToUpper();
    }

    protected void changepassbtn_Click(object sender, EventArgs e)

    {
        try
        {
            string password = newPassword.Text;
            string cnPassword = confirmPassword.Text;

            if (password != cnPassword)
            {
                // Display error message if passwords do not match
                string script = "alert('New password and Confirm password do not match!');";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
                return; // Exit method
            }


            string connString = @"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=barangayinformationsystem;Integrated Security=True";

            // Update the password for the user in the adminaccount table
            using (SqlConnection conn = new SqlConnection(connString))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand("UPDATE adminaccount SET password=@password", conn))
                {
                    cmd.Parameters.AddWithValue("@password", password);
                    cmd.ExecuteNonQuery();
                }
            }

            string scriptSuccess = "alert('Password reset successful!');";
            ClientScript.RegisterStartupScript(this.GetType(), "alert", scriptSuccess, true);
            Response.Redirect("Login.aspx");
        }
        catch (SqlException ex)
        {
            string script = "alert('Database error: " + ex.Message.Replace("'", "") + "');";
            ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
        }
        catch (Exception ex)
        {
            string script = "alert('" + ex.Message.Replace("'", "") + "');";
            ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
        }
    }
}
}
