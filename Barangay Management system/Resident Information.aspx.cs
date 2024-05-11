using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Barangay_Management_system
{
    public partial class Resident_Information : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        
         
        }

        protected void lblView(object sender, EventArgs e)
        {
            if (GridView1.SelectedIndex >= 0)
            {
                // Get the resident ID from the selected row
                string resident_id = GridView1.SelectedRow.Cells[0].Text; // Assuming the resident ID is in the first column

                string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=barangayinformationsystem;Integrated Security=True";
                string sqlQuery = "SELECT * FROM [brgy/resident_info.resident_info] WHERE resident_id = @resident_id";

                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(sqlQuery, con))
                    {
                        cmd.Parameters.AddWithValue("@resident_id", resident_id);

                        SqlDataReader reader = cmd.ExecuteReader();

                        if (reader.HasRows)
                        {
                            reader.Read(); // Move to the first row
                            lblName.Text = reader["first_name"].ToString() + " " + reader["middle_name"].ToString() + " " + reader["last_name"].ToString() + " " + reader["suffix"].ToString();
                            lblGender.Text = reader["gender"].ToString();
                            // Format birthdate and display
                            string rawBirthdate = reader["birthdate"].ToString();
                            DateTime birthdate;
                            if (DateTime.TryParse(rawBirthdate, out birthdate))
                            {
                                lblBirthdate.Text = birthdate.ToString("MM/dd/yyyy");
                            }
                            else
                            {
                                lblBirthdate.Text = "Invalid date"; // Or any other appropriate message
                            }
                            lblBirthplace.Text = reader["birthplace"].ToString();
                            lblAddressID.Text = reader["address_id"].ToString();
                            lblCivilStatus.Text = reader["civil_status"].ToString();
                            lblNationality.Text = reader["nationality"].ToString();
                            lblVotingStatus.Text = reader["voting_status"].ToString();
                            lblContactNumber.Text = reader["contact_number"].ToString();

                            // Show the modal
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
                        }
                        else
                        {
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "alert('No data found for selected resident.');", true);
                        }

                        reader.Close();
                    }
                }
            }
        }
    }
}