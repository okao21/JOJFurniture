using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JOJ_Furniture.StyleSheets
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        //This entire page just serves to clear cookies, and redirect the user to the home page.
        //We found it was a more elegant solution than adding more code to every page, and allowed us
        //to use a link in the header that remained style consistently with the rest of the links.
        protected void Page_Load(object sender, EventArgs e)
        {
            //first we create a temporary array of all of our cookies
            string[] cookiesTemp = Request.Cookies.AllKeys;

            //And iterate through it, setting the expiry date in such a way that they instantly expire.
            foreach (string c in cookiesTemp)
            {
                Response.Cookies[c].Expires = DateTime.Now.AddDays(-1);
            }

            //Then we redirect the user to the homepage
            Response.Redirect("../Pages/Home.aspx");
        }
    }
}