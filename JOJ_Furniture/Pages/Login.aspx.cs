using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

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

            //Here we create a 2d array, that will store user data. The first digit represents
            //each different user, the second represents individual data in the array.
            string[,] userArray2d = new string[arrayLength,8];

            //Then a for loop splits the data up into the right sections of the 2d array.
            for (int i = 0; i<arrayLength; i++)
            {
                //We use a try/for setup to catch any errors reading the .csv file
                //if there's an error in any data, or gaps in the file this will at least
                //skip over them and keep reading the file, avoiding a crash
                try
                {
                    //if we're successful in reading the file, we split each line of the
                    //array into a new array, which we will eventually write to a cookie
                    //after using it to validate a login.
                    string[] temp = userArray[i].Split(',');
                    userArray2d[i, 0] = temp[0];
                    userArray2d[i, 1] = temp[1];
                    userArray2d[i, 2] = temp[2];
                    userArray2d[i, 3] = temp[3];
                    userArray2d[i, 4] = temp[4];
                    userArray2d[i, 5] = temp[5];
                    userArray2d[i, 6] = temp[6];
                    userArray2d[i, 7] = temp[7];
                }
                catch
                {
                    userArray2d[i, 0] = "";
                    userArray2d[i, 1] = "";
                    userArray2d[i, 2] = "";
                    userArray2d[i, 3] = "";
                    userArray2d[i, 4] = "";
                    userArray2d[i, 5] = "";
                    userArray2d[i, 6] = "";
                    userArray2d[i, 7] = "";
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
                if (emailAddressTextBox.Text == userArray2d[i,0])
                {
                    //If the email address is a match we check the password associated with that email.
                    if (passwordTextbox.Text == userArray2d[i,1])
                    {
                        //Response.Write("<script>alert('Login')</script>");
                        //We flip the bool to successful, so we don't load an error message.
                        successfulLogin = true;

                        //Here we will SAVE INFO TO A COOKIE
                        //and we will RESET THE DATA FIELDS

                        //This closes our stream reader, so the file can accessed read by other functions.
                        sr.Close();

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
    }
}