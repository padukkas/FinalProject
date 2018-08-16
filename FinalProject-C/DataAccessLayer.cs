using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;

namespace FinalProject_C
{
    public class DataAccessLayer
    {
        public static List<Venue> GetAllVenues()
        {
            List<Venue> listVenue = new List<Venue>();
            //Retrieving the connection string from Web.config
            string cs = ConfigurationManager.ConnectionStrings["VenueConnectionString"].ConnectionString;

            //Creates the connection between program and DB
            using (SqlConnection con = new SqlConnection(cs))
            {
                //SqlCommand to store the SQL code
                SqlCommand cmd = new SqlCommand("select * from venue", con);
                //Opens Connection
                con.Open();
                //Executes the SQL command, properties of SqlDataReader is Forward and Read Only
                //ExecuteReader() is used for queries
                SqlDataReader rdr = cmd.ExecuteReader();
                //rdr is the SqlDataReader
                while (rdr.Read())
                {
                    Venue obj = new Venue();
                    obj.ID = Convert.ToInt32(rdr["vnumber"]);
                    obj.Name = rdr["vname"].ToString();
                    obj.Description = rdr["vdesc"].ToString();
                    obj.Capacity = Convert.ToInt32(rdr["vcapacity"]);
                    obj.Price = Convert.ToDouble(rdr["vprice"]);
                    obj.ImageLocation = rdr["vimgpath"].ToString();
                    listVenue.Add(obj);
                }
            }
            return listVenue;
        }

        public static List<Venue> GetAllVenues(string venueName)
        {
            List<Venue> listVenue = new List<Venue>();
            //Retrieving the connection string from Web.config
            string cs = ConfigurationManager.ConnectionStrings["VenueConnectionString"].ConnectionString;

            //Creates the connection between program and DB
            using (SqlConnection con = new SqlConnection(cs))
            {
                //SqlCommand to store the SQL code
                SqlCommand cmd = new SqlCommand("select * from venue where vname LIKE '%'+@vname+'%'", con);
                //Opens Connection
                con.Open();
                cmd.Parameters.Add("vname", venueName);
                //Executes the SQL command, properties of SqlDataReader is Forward and Read Only
                //ExecuteReader() is used for queries
                SqlDataReader rdr = cmd.ExecuteReader();
                //rdr is the SqlDataReader
                while (rdr.Read())
                {
                    Venue obj = new Venue();
                    obj.ID = Convert.ToInt32(rdr["vnumber"]);
                    obj.Name = rdr["vname"].ToString();
                    obj.Description = rdr["vdesc"].ToString();
                    obj.Capacity = Convert.ToInt32(rdr["vcapacity"]);
                    obj.Price = Convert.ToDouble(rdr["vprice"]);
                    obj.ImageLocation = rdr["vimgpath"].ToString();
                    listVenue.Add(obj);
                }
            }
            return listVenue;
        }

        public static Venue GetVenue(int id)
        {
            string cs = ConfigurationManager.ConnectionStrings["VenueConnectionString"].ConnectionString;

            Venue obj = new Venue();
            //Creates the connection between program and DB
            using (SqlConnection con = new SqlConnection(cs))
            {
                //SqlCommand to store the SQL code
                SqlCommand cmd = new SqlCommand("select * from venue where vnumber = @vnumber", con);
                cmd.Parameters.AddWithValue("vnumber", id);
                //Opens Connection
                con.Open();
                //Executes the SQL command, properties of SqlDataReader is Forward and Read Only
                //ExecuteReader() is used for queries
                SqlDataReader rdr = cmd.ExecuteReader();
                //rdr is the SqlDataReader
                while (rdr.Read())
                {
                    obj.ID = Convert.ToInt32(rdr["vnumber"]);
                    obj.Name = rdr["vname"].ToString();
                    obj.Description = rdr["vdesc"].ToString();
                    obj.Capacity = Convert.ToInt32(rdr["vcapacity"]);
                    obj.Price = Convert.ToDouble(rdr["vprice"]);
                    obj.ImageLocation = rdr["vimgpath"].ToString();
                }
            }
            return obj;
        }

        public static bool CustomerExists(string email)
        {
            int customerCount = 0;
            //Retrieving the connection string from Web.config
            string cs = ConfigurationManager.ConnectionStrings["VenueConnectionString"].ConnectionString;

            //Creates the connection between program and DB
            using (SqlConnection con = new SqlConnection(cs))
            {
                //SqlCommand to store the SQL code
                SqlCommand cmd = new SqlCommand("select COUNT(*) from customer where cemail = @email", con);
                //Opens Connection
                con.Open();
                cmd.Parameters.AddWithValue("email", email);
                customerCount = (int) cmd.ExecuteScalar();
            }
            return customerCount == 1;
        }

        public static bool IsBooked(int id, DateTime bdate)
        {
            int bookedOnDay = 0;
            //Retrieving the connection string from Web.config
            string cs = ConfigurationManager.ConnectionStrings["VenueConnectionString"].ConnectionString;

            //Creates the connection between program and DB
            using (SqlConnection con = new SqlConnection(cs))
            {
                //SqlCommand to store the SQL code
                SqlCommand cmd = new SqlCommand("select COUNT(*) from booking where vnumber = @vnumber AND bdate = @bdate", con);
                //Opens Connection
                con.Open();
                cmd.Parameters.AddWithValue("vnumber", id);
                cmd.Parameters.AddWithValue("bdate", bdate);
                bookedOnDay = (int)cmd.ExecuteScalar();
            }
            return bookedOnDay == 1;
        }

        public static int NewCustomer(Customer customer)
        {
            string cs = ConfigurationManager.ConnectionStrings["VenueConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("insert into customer (cname, caddress, chphone, cemail) values (@name,@address,@chphone,@email)", con);
                con.Open();

                cmd.Parameters.AddWithValue("name", customer.Name);
                cmd.Parameters.AddWithValue("address", customer.Address);
                cmd.Parameters.AddWithValue("chphone", customer.Phone);
                cmd.Parameters.AddWithValue("email", customer.Email);

                cmd.ExecuteNonQuery();
            }
            return GetCustomer(customer.Email).ID;
        }

        public static Customer GetCustomer(string customerEmail)
        {
            string cs = ConfigurationManager.ConnectionStrings["VenueConnectionString"].ConnectionString;

            Customer obj = new Customer();
            //Creates the connection between program and DB
            using (SqlConnection con = new SqlConnection(cs))
            {
                //SqlCommand to store the SQL code
                SqlCommand cmd = new SqlCommand("select * from customer where cemail = @cemail", con);
                cmd.Parameters.AddWithValue("cemail", customerEmail);
                //Opens Connection
                con.Open();
                //Executes the SQL command, properties of SqlDataReader is Forward and Read Only
                //ExecuteReader() is used for queries
                SqlDataReader rdr = cmd.ExecuteReader();
                //rdr is the SqlDataReader
                while (rdr.Read())
                {
                    obj.ID = Convert.ToInt32(rdr["cnumber"]);
                    obj.Name = rdr["cname"].ToString();
                    obj.Address = rdr["caddress"].ToString();
                    obj.Phone = rdr["chphone"].ToString();
                    obj.Email = rdr["cemail"].ToString();
                }
            }
            return obj;
        }

        public static void NewBooking(Booking booking)
        {
            string cs = ConfigurationManager.ConnectionStrings["VenueConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("insert into booking values (@cnumber,@vnumber,@bdate)", con);
                con.Open();

                cmd.Parameters.AddWithValue("cnumber", booking.CustomerId);
                cmd.Parameters.AddWithValue("vnumber", booking.VenueId);
                cmd.Parameters.AddWithValue("bdate", booking.Date);

                cmd.ExecuteNonQuery();
            }
        }
    }
}
