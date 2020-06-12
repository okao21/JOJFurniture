using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JOJ_Furniture.Pages
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        String EmailAddress = "oswald.kao@student.vcc.ca";

        const double COUCH_PRICE = 500;
        const double CHAIR_PRICE = 200;
        const double TABLE_PRICE = 100;

        int couchQuantity = 0;
        int chairQuantity = 0;
        int tableQuantity = 0;

        double couchTotal;
        double chairTotal;
        double tableTotal;

        int currentOrderID;

        Random rand = new Random();

        protected void goToCheckout(object sender, EventArgs e)
        {
            placeOrderLbl.Visible = true;

            CouchQuantityddl.Enabled = false;
            ChairQuantityddl.Enabled = false;
            TableQuantityddl.Enabled = false;

            editBtn.Visible = true;

            confirmBtn.Visible = true;

            checkoutBtn.Visible = false;
        }

        protected void editOrder(object sender, EventArgs e)
        {
            placeOrderLbl.Visible = false;

            checkoutBtn.Text = "Proceed to Check Out";

            CouchQuantityddl.Enabled = true;
            ChairQuantityddl.Enabled = true;
            TableQuantityddl.Enabled = true;

            editBtn.Visible = false;

            checkoutBtn.Visible = true;

            confirmBtn.Visible = false;



        }

        protected void placeOrder(Object sender, EventArgs e)
        {
            //generate random Order ID
            currentOrderID = rand.Next(10000, 100000);

            writeToDB();

            Response.Cookies["Order ID"].Value = currentOrderID.ToString();


            Response.Redirect("../Pages/Confirm.aspx");



        }

        protected void Quantity_Change(Object sender, EventArgs e)
        {
            bool isCouchSelected = Int32.TryParse(CouchQuantityddl.SelectedValue, out couchQuantity);
            bool isTableSelected = Int32.TryParse(TableQuantityddl.SelectedValue, out tableQuantity);
            bool isChairSelected = Int32.TryParse(ChairQuantityddl.SelectedValue, out chairQuantity);

            Response.Cookies["couchQuantity"].Value = CouchQuantityddl.SelectedValue;
            Response.Cookies["tableQuantity"].Value = TableQuantityddl.SelectedValue;
            Response.Cookies["chairQuantity"].Value = ChairQuantityddl.SelectedValue;

            if (couchQuantity == 0 && tableQuantity == 0 && chairQuantity == 0 && isCouchSelected == true && isTableSelected == true && isChairSelected == true)
            {
                Response.Write("<script>alert('Cart is Empty. Redirect to Products Page');window.location='../Pages/Products.aspx';</script>");
            }

            updateDisplay();
        }

        private void writeToDB()
        {
            var dbFilePath = Server.MapPath("../TestOrder/JOJOrdersDb.csv");

            string couchQuantityString = Request.Cookies["couchQuantity"].Value;
            string tableQuantityString = Request.Cookies["tableQuantity"].Value;
            string chairQuantityString = Request.Cookies["chairQuantity"].Value;

            couchQuantity = Int32.Parse(couchQuantityString);
            tableQuantity = Int32.Parse(tableQuantityString);
            chairQuantity = Int32.Parse(chairQuantityString);

            string newOrder = "\n" + currentOrderID + "," + couchQuantity + "," + tableQuantity + "," + chairQuantity + "," + COUCH_PRICE + "," + TABLE_PRICE + "," + CHAIR_PRICE + "," + EmailAddress;

            File.AppendAllText(dbFilePath, newOrder);
        }

        private void updateDisplay()
        {
            couchTotal = couchQuantity * COUCH_PRICE;
            chairTotal = chairQuantity * CHAIR_PRICE;
            tableTotal = tableQuantity * TABLE_PRICE;

            double grandTotal = couchTotal + chairTotal + tableTotal;
            double afterTaxTotal = grandTotal * 1.12;

            CouchTotalLbl.Text = "$" + couchTotal;
            ChairTotalLbl.Text = "$" + chairTotal;
            TableTotalLbl.Text = "$" + tableTotal;

            GrandTotalLbl.Text = "Grand Total: $" + grandTotal;
            AfterTaxTotalLbl.Text = "Total(+TAX): $" + afterTaxTotal;
        }
    }
}