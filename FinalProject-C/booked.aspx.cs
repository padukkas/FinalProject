using System;

namespace FinalProject_C
{
    public partial class booked : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var id = 0;
            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("/");
            }
            else
            {
                try
                {
                    id = int.Parse(Request.QueryString["id"]);
                }
                // error parsing, therefor not a valid od
                catch (Exception)
                {
                    Response.Redirect("/");
                }
            }
            Venue _venue = DataAccessLayer.GetVenue(id);
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
}