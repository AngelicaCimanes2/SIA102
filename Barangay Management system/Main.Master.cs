using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Barangay_Management_system
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int hour = DateTime.Now.Hour;

            if (hour < 12)
            {
                Greetinglbl.Text = "Good Morning!";
            }
            else if (hour < 18)
            {
                Greetinglbl.Text = "Good Afternoon!";
            }
            else
            {
                Greetinglbl.Text = "Good Evening!";
            }
        }


    }
}