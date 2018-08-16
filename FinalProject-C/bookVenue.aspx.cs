using System;
using System.Drawing;
using System.Linq;
using System.Web.UI.WebControls;

namespace FinalProject_C
{
    public partial class bookvenue : System.Web.UI.Page
    {
        private int _id;
        private Venue _venue;
        protected void Page_Load(object sender, EventArgs e)
        {
            // if the _id is not passed redirect to main page
            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("/");
            }
            else
            {
                // if the ID is passed store it for later use
                try
                {
                    _id = int.Parse(Request.QueryString["id"]);
                }
                // error parsing, therefor not a valid od
                catch (Exception)
                {
                    Response.Redirect("/");
                }

                _venue = DataAccessLayer.GetVenue(_id);
                if (_venue.Name == null)
                {
                    Response.Redirect("/");
                }
                venueName.Text = $"Name: {_venue.Name}";
                venueDescription.Text = $"Description: {_venue.Description}";
                venueCapacity.Text = $"Capacity: {_venue.Capacity.ToString()} people";
                venueCost.Text = $"${_venue.Price.ToString()} a day";
            }
        }

        protected void Book_Click(object sender, EventArgs e)
        {
            // get all the customer information
            string CustomerName = NameText.Text;
            string CustomerEmail = EmailText.Text;
            string CustomerAddress = AddressText.Text;
            string CustomerPhoneNumber = PhoneText.Text;
            DateTime SelectedDate = CalendarDate.SelectedDate;

            Customer customer;

            // if customer exists (name in DB) get the object
            if (!(DataAccessLayer.CustomerExists(CustomerEmail)))
            {
                customer = new Customer()
                {
                    Name = CustomerName,
                    Email = CustomerEmail,
                    Address = CustomerAddress,
                    Phone = CustomerPhoneNumber
                };
                var id = DataAccessLayer.NewCustomer(customer);
                customer.ID = id;
            }
            else
            {
                customer = DataAccessLayer.GetCustomer(CustomerEmail);
            }
            if (DataAccessLayer.IsBooked(_id, SelectedDate.Date))
            {
                Response.Write("This venue is booked");
                return;
            }
            var booking = new Booking()
            {
                CustomerId = customer.ID,
                VenueId = _id,
                Date = SelectedDate
            };
            DataAccessLayer.NewBooking(booking);
            Response.Redirect($"/booked.aspx?id={_id}");
        }

        protected void CalendarDate_DayRender(object sender, DayRenderEventArgs e)
        {
            // disable any previous/already booked dates
            if (e.Day.Date < System.DateTime.Today || DataAccessLayer.IsBooked(_id, e.Day.Date))
            {
                e.Day.IsSelectable = false;
                e.Cell.BackColor = Color.Gray;
                e.Cell.ForeColor = Color.Black;
            }
        }
    }
}