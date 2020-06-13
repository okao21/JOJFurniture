using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JOJ_Furniture.Classes
{
    public class UserData
    {
        //Here we set up our class information
        public string UserEmail { get; set; }
        public string UserPassword { get; set; }
        public string UserFirstName { get; set; }
        public string UserLastName { get; set; }
        public string UserProvince { get; set; }
        public string UserAddress { get; set; }
        public string UserPostalCode { get; set; }
        public string UserPhoneNumber { get; set; }


        //This is our class constructor, which enables us to build a user object.
        public UserData(string newUserEmail, string newUserPassword, string newUserFirstName, string newUserLastName, 
                        string newUserProvince, string newUserAddress, string newUserPostalCode, string newUserPhoneNumber)
        {
            UserEmail = newUserEmail;
            UserPassword = newUserPassword;
            UserFirstName = newUserFirstName;
            UserLastName = newUserLastName;
            UserProvince = newUserProvince;
            UserAddress = newUserAddress;
            UserPostalCode = newUserPostalCode;
            UserPhoneNumber = newUserPhoneNumber;
        }


    }
}