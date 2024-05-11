using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Barangay_Management_system
{
    public partial class Baranggay_Official : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=barangayinformationsystem;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            // No need to check connection state in Page_Load
        }

        protected void Insert_btn_Click(object sender, EventArgs e)
        {
            string firstName = firstname.Text;
            string lastName = lastname.Text;
            string Middlename = middlename.Text;
            string status = DropDownList1.SelectedValue;
            string Chairmanship = DropDownList4.SelectedValue;
            string Position = DropDownList5.Text;
            string Termstart = termstart.Text;
            string Termend = termend.Text;

            // Ensure that the connection is open before executing the query
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            // Define the SQL query with parameters and column names
            string query = "INSERT INTO [brgy/resident_info.officials] (first_name, middle_initial, last_name, position, chairmanship, [status]) VALUES (@first_name, @middle_initial, @last_name, @position, @chairmanship, @status)";


            // Create a SqlCommand object with the query and connection
            SqlCommand cmd = new SqlCommand(query, con);

            // Add parameter values to the SqlCommand object
            cmd.Parameters.AddWithValue("@first_name", firstName);
            cmd.Parameters.AddWithValue("@middle_initial", Middlename);
            cmd.Parameters.AddWithValue("@last_name", lastName);
            cmd.Parameters.AddWithValue("@position", Position);
            cmd.Parameters.AddWithValue("@chairmanship", Chairmanship);
            cmd.Parameters.AddWithValue("@status", status);
           


            // Check if any rows were affected by the query
            int rowsAffected = cmd.ExecuteNonQuery();

            if (rowsAffected > 0)
            {
                // Data inserted successfully
                
                GridView1.DataBind();
                // You can optionally display a success message or perform any other action
            }
            else
            {
                // No rows were affected, indicating an issue with the insertion
                // You can display an error message or handle the issue accordingly
            }

            // Close the connection after executing the query
            con.Close();
        }

        protected void Update_btn_Click(object sender, EventArgs e)
        {
            string firstName = firstname.Text;
            string lastName = lastname.Text;
            string Middlename = middlename.Text;
            string status = DropDownList1.SelectedValue;
            string Chairmanship = DropDownList4.SelectedValue;
            string Position = DropDownList5.Text;
            string Termstart = termstart.Text;
            string Termend = termend.Text;

            // Ensure that the connection is open before executing the query
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            // Define the SQL query with parameters and column names
            string query = @"UPDATE [brgy/resident_info.officials] 
                    SET middle_initial = @middle_initial, 
                        last_name = @last_name, 
                        position = @position, 
                        chairmanship = @chairmanship, 
                        [status] = @status 
                    WHERE first_name = @first_name";

            // Create a SqlCommand object with the query and connection
            SqlCommand cmd = new SqlCommand(query, con);

            // Add parameter values to the SqlCommand object
            cmd.Parameters.AddWithValue("@first_name", firstName);
            cmd.Parameters.AddWithValue("@middle_initial", Middlename);
            cmd.Parameters.AddWithValue("@last_name", lastName);
            cmd.Parameters.AddWithValue("@position", Position);
            cmd.Parameters.AddWithValue("@chairmanship", Chairmanship);
            cmd.Parameters.AddWithValue("@status", status);

            // Check if any rows were affected by the query
            int rowsAffected = cmd.ExecuteNonQuery();

            if (rowsAffected > 0)
            {
                // Data updated successfully
                GridView1.DataBind();
                // You can optionally display a success message or perform any other action
            }
            else
            {
                // No rows were affected, indicating an issue with the update
                // You can display an error message or handle the issue accordingly
            }

            // Close the connection after executing the query
            con.Close();
        }





        protected void deleteBtn_Command(object sender, CommandEventArgs e)
        {
            string officialId = e.CommandArgument.ToString();

            // Create a connection string
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=barangayinformationsystem;Integrated Security=True";

            // Create a SQL query to delete the record
            string deleteQuery = "DELETE FROM [brgy/resident_info.officials] WHERE official_id = @officialId";

            // Create a SqlConnection and SqlCommand
            using (SqlConnection connection = new SqlConnection(connectionString))
            using (SqlCommand command = new SqlCommand(deleteQuery, connection))
            {
                // Add the officialId as a parameter
                command.Parameters.AddWithValue("@officialId", officialId);

                // Open the connection
                connection.Open();

                // Execute the delete command
                command.ExecuteNonQuery();

                // Close the connection
                connection.Close();
            }

            // Refresh the GridView or perform any necessary actions
            GridView1.DataBind();
        }

        private void GetDataFromDataSource()
        {
            SqlDataAdapter adapter = new SqlDataAdapter("SELECT * FROM [brgy/resident_info.officials]", con);
            DataTable dt = new DataTable();
            adapter.Fill(dt);

            GridView1.DataSource = dt;
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            UpdateStatus(DropDownList2.SelectedValue, GridView2);
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            UpdateStatus(DropDownList3.SelectedValue, GridView3);
        }

        private void UpdateStatus(string status, GridView gridView)
        {
            // Assuming you have a SqlDataSource associated with the GridView
            // You need to update the SQL query of the SqlDataSource based on the selected status

            // For example, if your SqlDataSource is named "SqlDataSource2" and you want to filter based on a column named "Status":
            SqlDataSource dataSource = gridView.DataSourceID.Equals("SqlDataSource2") ? SqlDataSource2 : SqlDataSource3;
            dataSource.SelectCommand = "SELECT * FROM YourTable WHERE Status = @status"; // Update the query as per your table structure

            // Add the parameter to filter by status
            dataSource.SelectParameters.Clear();
            dataSource.SelectParameters.Add("status", status);

            // Rebind the GridView to reflect the filtered data
            gridView.DataBind();
        }
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string status = DataBinder.Eval(e.Row.DataItem, "status").ToString();
                TableCell statusCell = e.Row.Cells[6]; // Assuming "status" column is the fourth column (index 3)

                if (status.ToLower() == "active")
                {
                    statusCell.ForeColor = System.Drawing.Color.Green; // Green color
                }
                else if (status.ToLower() == "inactive")
                {
                    statusCell.ForeColor = System.Drawing.Color.Red; // Red color
                }

                // Apply additional styling
            }
        }


        protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string status = DataBinder.Eval(e.Row.DataItem, "status").ToString();
                TableCell statusCell = e.Row.Cells[6]; // Assuming "status" column is the fourth column (index 3)

                if (status.ToLower() == "active")
                {
                    statusCell.ForeColor = System.Drawing.Color.Green; // Green color
                }
                else if (status.ToLower() == "inactive")
                {
                    statusCell.ForeColor = System.Drawing.Color.Red; // Red color
                }
                // Apply additional styling
               
            }
        }

        protected void GridView3_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string status = DataBinder.Eval(e.Row.DataItem, "status").ToString();
                TableCell statusCell = e.Row.Cells[6]; // Assuming "status" column is the fourth column (index 3)

                if (status.ToLower() == "active")
                {
                    statusCell.ForeColor = System.Drawing.Color.Green; // Green color
                }
                else if (status.ToLower() == "inactive")
                {
                    statusCell.ForeColor = System.Drawing.Color.Red; // Red color
                }

                // Apply additional styling
            }
        }

       
    }
}