using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using JOJ_Furniture.Classes;

namespace JOJ_Furniture.Pages
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        //This bool tracks wether we've had a successful login
        bool successfulLogin = false;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void userLogin(object sender, EventArgs e)
        {
            //First we target our data file
            var dataFilePath = Server.MapPath("../UserData/JOJUserData.csv");

            //Then we call our stream reader and read our csv to a string
            StreamReader sr = File.OpenText(dataFilePath);
            string dataFileString = sr.ReadToEnd();

            //Now we convert our string to an array of of strings of user data.
            string[] userArray = dataFileString.Split('\n');

            //We will use this array length integer for a few steps
            int arrayLength = userArray.Length;

            //Here we create a list of our UserData objects, which will we read the file into
            List<UserData> clientInfo = new List<UserData>();

            //Then a for loop splits the data up into the right sections to be used in creating a userdata object
            for (int i = 0; i<arrayLength; i++)
            {
                //We use a try/for setup to catch any errors reading the .csv file
                //if there's an error in any data, or gaps in the file this will at least
                //skip over them and keep reading the file, avoiding a crash
                try
                {
                    //if we're successful in reading the file, we split each line of the
                    //array into a new array
                    string[] temp = userArray[i].Split(',');

                    //And now we add the user data to our clientInfo list, after turning it into a user data object.
                    clientInfo.Add(new UserData(temp[0], temp[1], temp[2], temp[3], temp[4], temp[5], temp[6], temp[7]));
                }
                catch
                {
                    //If there is a problem with creating the user object, we don't want it to throw an error for the user to see,
                    //but we want to flag it, so we can write it to output
                    System.Diagnostics.Debug.WriteLine("There was an error reading the entry at line " + i+1 + " of the user data file");
                }
            }
            //Here we reset our error messages, if any have been previously thrown, and reset entry box color
            errorMessages.Text = "";
            emailAddressTextBox.BackColor = System.Drawing.Color.White;
            passwordTextbox.BackColor = System.Drawing.Color.White;

            //We check to make sure an email address was entered.
            if (emailAddressTextBox.Text == "")
            {
                errorMessages.Text = "Please enter your email";
                emailAddressTextBox.BackColor = System.Drawing.Color.Tomato;
            }

            //Now we check if the entered email matches one in our system.
            for (int i = 0; i<arrayLength; i++)
            {
                if (emailAddressTextBox.Text == clientInfo[i].UserEmail)
                {
                    //If the email address is a match we check the password associated with that email.
                    if (passwordTextbox.Text == clientInfo[i].UserPassword)
                    {
                        //Response.Write("<script>alert('Login')</script>");
                        //We flip the bool to successful, so we don't load an error message.
                        successfulLogin = true;

                        //Now we write our user data to a cookie for use at checkout
                        logDataToCookie(clientInfo[i]);
                        //and we will RESET THE DATA FIELDS

                        //This closes our stream reader, so the file can accessed read by other functions.
                        sr.Close();

                        //create cookie for cart use
                        Response.Cookies["greenCouchQuantity"].Value = "0";
                        Response.Cookies["grayCouchQuantity"].Value = "0";
                        Response.Cookies["lightGrayCouchQuantity"].Value = "0";

                        Response.Cookies["kitchenTableQuantity"].Value = "0";
                        Response.Cookies["coffeeTableQuantity"].Value = "0";
                        Response.Cookies["computerDeskQuantity"].Value = "0";

                        //Then we can navigate away
                        Response.Redirect("../Pages/Products.aspx");
                    }
                    //If the password doesn't match, we throw up an error message.
                    else
                    {
                        errorMessages.Text = "Your password is incorrect, please try again";
                        passwordTextbox.BackColor = System.Drawing.Color.Tomato;
                    }
                }
            }
            //If we make it this far an the user hasn't logged in, we throw an error telling them their account doesn't exist.
            if (successfulLogin == false && errorMessages.Text == "")
            {
                errorMessages.Text = "We're sorry, there is no account for that email in our system. Please try again or create an account.";
                emailAddressTextBox.BackColor = System.Drawing.Color.Tomato;
            }

            //This closes our stream reader, so the file can accessed read by other functions.
            sr.Close();
        }

        protected void logDataToCookie(UserData userInfo)
        {
            Response.Cookies["email"].Value = userInfo.UserEmail;
            Response.Cookies["firstName"].Value = userInfo.UserFirstName;
            Response.Cookies["lastName"].Value = userInfo.UserLastName;
            Response.Cookies["province"].Value = userInfo.UserProvince;
            Response.Cookies["address"].Value = userInfo.UserAddress;
            Response.Cookies["postalCode"].Value = userInfo.UserPostalCode;
            Response.Cookies["phoneNumber"].Value = userInfo.UserPhoneNumber;
        }
    }
}