using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text.RegularExpressions;
using System.ComponentModel.DataAnnotations;
using JOJ_Furniture.Classes;

namespace JOJ_Furniture.Pages
{
    //This outputs whatever value needed to the visual studio output.
    //As it's very helpful for debugging, I've left a copy up here.
    //System.Diagnostics.Debug.WriteLine("test");

    public partial class WebForm3 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreateAccount(object sender, EventArgs e)
        {
            //First we will declare the bools we use for verification
            bool email = false;
            bool firstName = false;
            bool lastName = false;
            bool password = false;
            bool addressProvince = false;
            bool addressMain = false;
            bool postalCode = false;
            bool phoneNumber = false;
            bool policy = false;
            bool nonDuplicateEmail = false;

            //Here we clear any previous error messages, and reset our background colors.
            lblError.Text = "";
            userEmailAddress.BackColor = System.Drawing.Color.White;
            userPassword.BackColor = System.Drawing.Color.White;
            UserConfirmPassword.BackColor = System.Drawing.Color.White;
            UserFirstName.BackColor = System.Drawing.Color.White;
            UserLastName.BackColor = System.Drawing.Color.White;
            DropDownList1.BackColor = System.Drawing.Color.White;
            UserAddress.BackColor = System.Drawing.Color.White;
            UserPostalCode.BackColor = System.Drawing.Color.White;
            UserPhoneNumber.BackColor = System.Drawing.Color.White;
            AgreeToPolicy.BackColor = System.Drawing.Color.White;

            //First we target the location of our CSV file
            string dataFilePath = Server.MapPath("../UserData/JOJUserData.csv");

            //We start with verifying our email
            email = validateEmail(userEmailAddress.Text);

            //Next we verify our names, which can basically be anything as long as they aren't empty
            if(UserFirstName.Text != "") { firstName = true; }
            if(UserLastName.Text != "") { lastName = true; }

            //Now we verify that the passwords match
            if(userPassword.Text == UserConfirmPassword.Text && userPassword.Text != "") { password = true; }

            //This verifies the user has selected a province.
            if(DropDownList1.SelectedValue != "None") { addressProvince = true; }

            //Then we verify that the address field also isn't empty
            if(UserAddress.Text != "") { addressMain = true; }

            //To verify the postal code we will use Regex, and specifically check that its format
            //is letter-number-letter-number-letter-number, and it excludes certain letters (like D, F or O)
            postalCode = Regex.IsMatch((UserPostalCode.Text).ToUpper(), "\\A[ABCEGHJKLMNPRSTVXY]\\d[ABCEGHJKLMNPRSTVWXYZ]\\d[ABCEGHJKLMNPRSTVWXYZ]\\d");

            //We can also use regex to verify the phone number is 10 digits long (and only digits)
            phoneNumber = Regex.IsMatch(UserPhoneNumber.Text, "\\d\\d\\d\\d\\d\\d\\d\\d\\d\\d");

            //Finally, the user has to have agreed to our privacy policy.
            policy = AgreeToPolicy.Checked;

            //Now that we've verified everything is filled out properly, we have to check and make sure an account with the email
            //address doesn't already exist.
            nonDuplicateEmail = emailUsed(userEmailAddress.Text);

            //Now we check all our bools
            if (email && password && firstName && lastName && addressProvince &&
               addressMain && postalCode && phoneNumber && policy && nonDuplicateEmail)
            {
                //If everything is good, we write all the data to a string
                string userData = "\n" + userEmailAddress.Text + "," + userPassword.Text + "," + UserFirstName.Text + "," +
                                         UserLastName.Text + "," + DropDownList1.SelectedValue + "," + UserAddress.Text +
                                         "," + UserPostalCode.Text + "," + UserPhoneNumber.Text;

                //Then we write the string to our csv file
                File.AppendAllText(dataFilePath, userData);

                //And we add the data to the cookies we're going to use
                logDataToCookie(new UserData(userEmailAddress.Text, userPassword.Text, UserFirstName.Text, UserLastName.Text, 
                                            DropDownList1.SelectedValue, UserAddress.Text, UserPostalCode.Text, UserPhoneNumber.Text));

                //Then we can navigate away
                Response.Redirect("../Pages/Products.aspx");
            }
            else
            {
                //This general error notifies the user to look for their specific errors
                lblError.Text = "There was an error with one or more entry fields. Please look for the boxes highlighted in red.";
            }

            //If we haven't navigated away, we have to now highlight all our errors
            if (email == false) 
            {
                userEmailAddress.BackColor = System.Drawing.Color.Tomato;
            }
            if (password == false)
            {
                userPassword.BackColor = System.Drawing.Color.Tomato;
                UserConfirmPassword.BackColor = System.Drawing.Color.Tomato;
            }
            if (password == false && userPassword.Text != "")
            {
                lblError.Text += "\n Your passwords did not match.";
            }
            if (firstName == false)
            {
                UserFirstName.BackColor = System.Drawing.Color.Tomato;
            }
            if (lastName == false)
            {
                UserLastName.BackColor = System.Drawing.Color.Tomato;
            }
            if (addressProvince == false)
            {
                DropDownList1.BackColor = System.Drawing.Color.Tomato;
            }
            if (addressMain == false)
            {
                UserAddress.BackColor = System.Drawing.Color.Tomato;
            }
            if (postalCode == false)
            {
                UserPostalCode.BackColor = System.Drawing.Color.Tomato;
            }
            if (phoneNumber == false)
            {
                UserPhoneNumber.BackColor = System.Drawing.Color.Tomato;
            }
            if (policy == false)
            {
                AgreeToPolicy.BackColor = System.Drawing.Color.Tomato;
            }
            if (nonDuplicateEmail == false && userEmailAddress.Text != "")
            {
                userEmailAddress.BackColor = System.Drawing.Color.Tomato;
                lblError.Text += "\n We're sorry, but there is already an account associated with that email.";
            }


        }


        //This function checks if an entered email is already present in our system.
        protected bool emailUsed(string emailAddress)
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
            string[,] userArray2d = new string[arrayLength, 3];

            //Then a for loop splits the data up into the right sections of the 2d array.
            for (int i = 0; i < arrayLength; i++)
            {
                string[] temp = userArray[i].Split(',');
                userArray2d[i, 0] = temp[0];
            }

            //Now we check if the entered email matches one in our system.
            for (int i = 0; i < arrayLength; i++)
            {
                if (emailAddress == userArray2d[i, 0])
                {
                    sr.Close();
                    return false;
                }
            }
            //This closes our stream reader, so the file can accessed read by other functions.
            sr.Close();

            //If no email matches then we're good to go
            return true;
        }

        //This function validates our email address
        protected bool validateEmail(string emailAddress)
        {
            //First we check for an email address that is shorter than 5 characters (automatically invalid)
            if (emailAddress.Length < 5) { return false; }

            //Now we drop the first and last characters, as we don't want to check those for the '@' or '.'
            //(because if the '@' or '.' are the first or last characters the email is invalid.
            emailAddress = emailAddress.Substring(1, emailAddress.Length-2);

            //This bool checks for the '@' symbol.
            bool atSymbol = emailAddress.Contains('@');  
            if (atSymbol)
            {
                //if we have an '@' in the address, this will return the index of it, so we can check
                //the rest of the email address for a '.' (specifically everything after the '@')
                int atIndex = emailAddress.IndexOf('@');
                try
                {
                    emailAddress = emailAddress.Substring(atIndex, emailAddress.Length - atIndex);
                }
                catch
                {
                    return false;
                }
                
            }
            //Now we check the rest of the email address for a '.'
            bool period = emailAddress.Contains('.');

            //If both are true we return true, otherwise false.
            if (atSymbol == true && period == true) { return true; }
            else { return false; }
        }

        //This logs the correct user data to a cookie
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