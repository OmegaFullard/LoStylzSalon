using Microsoft.VisualBasic;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoStylz_Salon
{
	public partial class Availability : System.Web.UI.Page
	{
		protected DropDownList stylistDropDown;
		protected TextBox dateTextBox;
		protected TextBox timeTextBox;
		protected TextBox depositTextBox;
		protected Label errorLabel;
		protected Label confirmationLabel;

		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				// Initialize controls
				stylistDropDown = (DropDownList)FindControl("stylistDropDown");
				dateTextBox = (TextBox)FindControl("dateTextBox");
				timeTextBox = (TextBox)FindControl("timeTextBox");
				depositTextBox = (TextBox)FindControl("depositTextBox");
				errorLabel = (Label)FindControl("errorLabel");
				confirmationLabel = (Label)FindControl("confirmationLabel");
			}
		}

		protected void btnBook_Click(object sender, EventArgs e)
		{
			string stylist = stylistDropDown.SelectedValue;
			DateTime date;
			TimeSpan time;
			decimal deposit;

			// Parse and validate input
			if (!DateTime.TryParse(	dateTextBox.Text, out date) ||
				!TimeSpan.TryParse(timeTextBox.Text, out time) ||
				!decimal.TryParse(depositTextBox.Text, out deposit))
			{
				// Show error message
				errorLabel.Text = "Invalid input. Please check your entries.";
				return;
			}

			// Check availability (pseudo-code)
			if (!IsStylistAvailable(stylist, date, time))
			{
				errorLabel.Text = "Selected stylist is not available at this time.";
				return;
			}

			// Save booking (pseudo-code)
			SaveAppointment(stylist, date, time, deposit);

			// Show confirmation
			confirmationLabel.Text = "Appointment booked successfully!";
		}

		// Example stub for availability check
		private bool IsStylistAvailable(string stylist, DateTime date, TimeSpan time)
		{
			// Query your data store to check for conflicts
			return true;
		}

		// Example stub for saving appointment
		private void SaveAppointment(string stylist, DateTime date, TimeSpan time, decimal deposit)
		{
			// Insert into your database or data store
		}
	}
}
