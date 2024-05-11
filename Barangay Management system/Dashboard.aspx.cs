using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Barangay_Management_system
{
    public partial class Dasboard1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Call method to count officials and display the count
                CountOfficials();
                CountServices();
                CounterTotalSales();
            }

        }

        private void CountOfficials()
        {
            // Connection string to your database
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=barangayinformationsystem;Integrated Security=True";

            // SQL query to count officials
            string query = "SELECT COUNT(*) FROM [brgy/resident_info.officials]";

            // Create connection and command objects
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    try
                    {
                        // Open the connection
                        connection.Open();

                        // Execute the command and get the count
                        int officialCount = (int)command.ExecuteScalar();

                        // Assign the count to the Label
                        officialcounter.Text = officialCount.ToString();
                    }
                    catch (Exception ex)
                    {
                        // Handle exceptions
                        // For simplicity, you can display error message or log it
                        officialcounter.Text = "Error";
                    }
                }
            }
        }
        private void CountServices()
        {
            // Connection string to your database
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=barangayinformationsystem;Integrated Security=True";

            // SQL query to count officials
            string query = "SELECT COUNT(*) FROM [doc_issuing.All_RequestedDocument]";

            // Create connection and command objects
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    try
                    {
                        // Open the connection
                        connection.Open();

                        // Execute the command and get the count
                        int officialCount = (int)command.ExecuteScalar();

                        // Assign the count to the Label
                        servicescounter.Text = officialCount.ToString();
                    }
                    catch (Exception ex)
                    {
                        // Handle exceptions
                        // For simplicity, you can display error message or log it
                        servicescounter.Text = "Error";
                    }
                }
            }
        }
        private void CounterTotalSales()
        {
            // Connection string to your database
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=barangayinformationsystem;Integrated Security=True";

            // SQL query to count officials
            string query = "SELECT SUM (amount_to_pay) FROM [doc_issuing.All_RequestedDocument]";


            // Create connection and command objects
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    try
                    {
                        // Open the connection
                        connection.Open();

                        // Execute the command and get the total
                        object result = command.ExecuteScalar();

                        // Check if the result is not null
                        if (result != null && result != DBNull.Value)
                        {
                            // Convert the result to the appropriate data type (decimal in this case)
                            decimal totalAmount = Convert.ToDecimal(result);

                            // Assign the total to the Label
                            countertotalsales.Text = totalAmount.ToString();
                        }
                        else
                        {
                            // If the result is null, display 0 as the total
                            countertotalsales.Text = "0";
                        }
                    }
                    catch (Exception ex)
                    {
                        // Handle exceptions
                        // For simplicity, you can display an error message or log it
                        countertotalsales.Text = "Error";
                    }
                }
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string status = DataBinder.Eval(e.Row.DataItem, "status").ToString();
                TableCell statusCell = e.Row.Cells[2]; // Assuming "status" column is the fourth column (index 3)

                if (status.ToLower() == "active")
                {
                    statusCell.BackColor = System.Drawing.Color.FromArgb(122, 214, 29);
                }
                else if (status.ToLower() == "inactive")
                {
                    statusCell.BackColor = System.Drawing.Color.FromArgb(214, 29, 29);
                }

                // Apply additional styling
                statusCell.ForeColor = System.Drawing.Color.White;
                statusCell.Style["border-radius"] = "24px";
            }
        }

    }
}
