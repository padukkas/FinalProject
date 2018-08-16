using System;
using System.Collections.Generic;

namespace FinalProject_C
{
    public partial class book : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var venues = DataAccessLayer.GetAllVenues();
            LoadVenues(venues);
        }

        public void SearchVenue(object sender, EventArgs e)
        {
            var venues = DataAccessLayer.GetAllVenues(searchText.Text);
            LoadVenues(venues);
        }

        public void LoadVenues(List<Venue> venues)
        {
            var counter = 1;
            string append = "<div class='row'>";
            foreach (var venue in venues)
            {
                if ((counter - 1) % 3 == 0)
                {
                    append += "</div><br />"
                              + "<div class='row'>";
                }

                append += "<div class='col-sm-4'>";
                append += $"<img ID='Image{counter}' src='{venue.ImageLocation}' class='img-responsive'/>";
                append += $"<p ID='Venue{counter}' stlye='font-size: XX-Large'>{venue.Name}</p>";
                append += $"<p ID='Description{counter}' style='Font-Size=:Large'>{venue.Description}</p>";
                append += $"<a ID='Button{counter}' href='/bookvenue.aspx?id={venue.ID}' role='button' class='btn btn-primary btn-lg'>Book this venue</a>";
                append += "</div>";
                ;
                counter++;
            }

            append += "</div>";
            content.InnerHtml = append;
        }
    }
}