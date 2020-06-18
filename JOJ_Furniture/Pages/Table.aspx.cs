using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JOJ_Furniture.Pages
{
    public partial class Table : System.Web.UI.Page
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
            Button thisButton=(Button)sender;

            if(thisButton.ID.Equals("AddtoCarKTA"))
            {
                Response.Cookies["kitchenTableQuantity"].Value = DropDownListKT.SelectedValue;
            }
            else if (thisButton.ID.Equals("AddtoCartCT"))
            {
                Response.Cookies["coffeeTableQuantity"].Value = DropDownListCT.SelectedValue;
            }
            else if (thisButton.ID.Equals("AddtoCartCD"))
            {
                Response.Cookies["computerDeskQuantity"].Value = DropDownListCD.SelectedValue;
            }
        }
    }
}