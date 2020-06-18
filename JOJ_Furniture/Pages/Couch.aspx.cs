using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JOJ_Furniture.Pages
{
    public partial class Couch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //First we check to see if the user is logged in by looking for a cookie with their email
            if (Request.Cookies["email"] == null)
            {
                Response.Redirect("../Pages/Redirect.aspx");
            }
        }

        protected void addProductToCart(object sender, EventArgs e)
        {
            Button thisButton = (Button)sender;

            if (thisButton.ID.Equals("AddtoCartGreenCouch"))
            {
                Response.Cookies["greenCouchQuantity"].Value =DropDownListGreenCouch.SelectedValue;
            }
            else if (thisButton.ID.Equals("AddtoCartGrayCouch"))
            {
                Response.Cookies["grayCouchQuantity"].Value = DropDownListGrayCouch.SelectedValue;
            }
            else if (thisButton.ID.Equals("AddtoCartLightCouch"))
            {
                Response.Cookies["lightGrayCouchQuantity"].Value = DropDownListLightCouch.SelectedValue;
            }
        }
    }
}