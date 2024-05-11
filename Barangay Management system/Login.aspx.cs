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
    public partial class Login : System.Web.UI.Page
    {
        public static string to;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblDate.Text = DateTime.Now.ToString("dddd").ToUpper();
            lblDay.Text = DateTime.Now.ToString("MMMM dd, yyyy");
            lblTime.Text = DateTime.Now.ToString("h:mm:ss").ToUpper();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=barangayinformationsystem;Integrated Security=True";
            string username = Request.Form["username"];
            string password = Request.Form["password"];

            if (string.IsNullOrWhiteSpace(username) || string.IsNullOrWhiteSpace(password))
            {
                lblerror.Text = "Please enter both username and password";
                return; // Exit the function early
            }

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();

                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = conn;
                    cmd.CommandText = "SELECT COUNT(*) FROM [adminaccount] WHERE username = @username AND password = @password";
                    cmd.Parameters.AddWithValue("@username", username);
                    cmd.Parameters.AddWithValue("@password", password);

                    int result = Convert.ToInt32(cmd.ExecuteScalar());

                    if (result > 0)
                    {
                        Login.to = username;
                        Response.Redirect("Dashboard.aspx");
                        return;
                    }
                }
            }

            // If not an admin account, check the general account
            using (SqlConnection connect = new SqlConnection(connectionString))
            {
                connect.Open();
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = connect;
                    cmd.CommandText = "SELECT COUNT(*) FROM [account] WHERE username = @username AND password = @password";
                    cmd.Parameters.AddWithValue("@username", username);
                    cmd.Parameters.AddWithValue("@password", password);

                    int result = Convert.ToInt32(cmd.ExecuteScalar());

                    if (result > 0)
                    {
                        Login.to = username;
                        Response.Redirect("Dashboard.aspx");
                        return;
                    }
                }
            }

            lblerror.Text = "Incorrect Username or Password";
        }

    }

}


