using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Barangay_Management_system
{
    public partial class Revenue : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonFilter_Click(object sender, EventArgs e)
        {
            // Rebind the GridView with filtered data
           
        }

        protected void BindGridView()
        {
            // Construct the SQL query with parameters for minimum and maximum dates
            string query = "SELECT [brgy/resident_info.resident_info].first_name, [brgy/resident_info.resident_info].last_name, [brgy/resident_info.resident_info].middle_name, [doc_issuing.All_RequestedDocument].reference_number, [doc_issuing.All_RequestedDocument].document_requested, [doc_issuing.All_RequestedDocument].purpose, [doc_issuing.All_RequestedDocument].amount_to_pay, [doc_issuing.All_RequestedDocument].date_requested FROM [Revenue.report] INNER JOIN [doc_issuing.All_RequestedDocument] ON [Revenue.report].reference_number = [doc_issuing.All_RequestedDocument].reference_number INNER JOIN [brgy/resident_info.resident_info] ON [Revenue.report].resident_id = [brgy/resident_info.resident_info].resident_id AND [doc_issuing.All_RequestedDocument].resident_id = [brgy/resident_info.resident_info].resident_id WHERE [doc_issuing.All_RequestedDocument].date_requested >= @MinDate AND [doc_issuing.All_RequestedDocument].date_requested <= @MaxDate ORDER BY [doc_issuing.All_RequestedDocument].date_requested DESC";

            // Set up the connection and command objects
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=barangayinformationsystem;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Set the parameter values
                    command.Parameters.AddWithValue("@MinDate", TextBox1.Text);
                    command.Parameters.AddWithValue("@MaxDate", TextBox2.Text);

                    // Open the connection and execute the query
                    connection.Open();
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataTable dataTable = new DataTable();
                    adapter.Fill(dataTable);

                    // Bind the data to the GridView
                    GridView1.DataSource = dataTable;
                    GridView1.DataBind();
                }
            }
        }

        protected void ButtonReset_Click(object sender, EventArgs e)
        {
            // Clear the TextBoxes
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;

            // Rebind the GridView to its initial state
        }

        protected void entries_SelectedIndexChanged(object sender, EventArgs e)
        {
            int pageSize = int.Parse(entries.SelectedValue);
            GridView1.PageSize = pageSize;
        }
    }
}
