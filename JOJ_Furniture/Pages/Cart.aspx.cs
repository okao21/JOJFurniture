using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JOJ_Furniture.Pages
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        const double COUCH_PRICE = 500;
        const double GREEN_COUCH_PRICE = 550;
        const double COMPUTER_DESK_PRICE = 400;
        const double TABLE_PRICE = 300;

        int graycouchQuantity = 0;
        int lightGrayCouchQuantity = 0;
        int greenCouchQuantity = 0;
        int kitchenTableQuantity = 0;
        int coffeeTableQuanaity = 0;
        int ComputerDeskQuantity = 0;

        
        double grayCouchTotal;
        double lightGrayCouchTotal;
        double greenCouchCouchTotal;
        double kitchenTableTotal;
        double coffeeTableTotal;
        double computerDeskTotal;

        int currentOrderID;

        Random rand = new Random();

        protected void goToCheckout(object sender, EventArgs e)
        {
            placeOrderLbl.Visible = true;

            //disable add and remove buttons for all products

            addButtonGrayS.Enabled = false;
            removeButtonGrayS.Enabled = false;

            addButtonGS.Enabled = false; ;
            removeButtonGS.Enabled = false; ;

            addButtonLGrayS.Enabled = false; ;
            removeButtonLGrayS.Enabled = false; ;

            addCD.Enabled = false; ;
            removeCD.Enabled = false; ;

            addCT.Enabled = false; ;
            removeCT.Enabled = false; ;

            addKT.Enabled = false; ;
            removeKT.Enabled = false;            

            editBtn.Visible = true;

            confirmBtn.Visible = true;

            checkoutBtn.Visible = false;
        }

        protected void editOrder(object sender, EventArgs e)
        {
            placeOrderLbl.Visible = false;

            checkoutBtn.Text = "Proceed to Check Out";

            //Allow User to change quantities
            //enable add and remove buttons for all products
            addButtonGrayS.Enabled = true;
            removeButtonGrayS.Enabled = true;

            addButtonGS.Enabled = true; ;
            removeButtonGS.Enabled = true; ;

            addButtonLGrayS.Enabled = true; ;
            removeButtonLGrayS.Enabled = true; ;

            addCD.Enabled = true; ;
            removeCD.Enabled = true; ;

            addCT.Enabled = true; ;
            removeCT.Enabled = true; ;

            addKT.Enabled = true; ;
            removeKT.Enabled = true;

            editBtn.Visible = false;

            checkoutBtn.Visible = true;

            confirmBtn.Visible = false;



        }

        protected void placeOrder(Object sender, EventArgs e)
        {
            //generate random Order ID
            currentOrderID = rand.Next(10000, 100000);

            Response.Cookies["Order ID"].Value = currentOrderID.ToString();


            Response.Redirect("../Pages/Confirm.aspx");



        }

        protected void addProduct(object sender, EventArgs e)
        {
            Button thisButton = (Button)sender;

            switch (thisButton.ID)
            {
                case ("addButtonGS"):
                    greenCouchQuantity = greenCouchQuantity + 1;
                    Response.Cookies["greenCouchQuantity"].Value = greenCouchQuantity.ToString();
                    GreenSofaQlbl.Text = greenCouchQuantity.ToString();
                    break;
                case ("addKT"):
                    kitchenTableQuantity = kitchenTableQuantity+ 1;
                    Response.Cookies["kitchenTableQuantity"].Value = kitchenTableQuantity.ToString();
                    KitchenTableQlbl.Text = kitchenTableQuantity.ToString();
                    
                    break;
                case ("addCD"):
                    ComputerDeskQuantity += 1;
                    Response.Cookies["computerDeskQuantity"].Value = ComputerDeskQuantity.ToString();
                    computerDeskQlbl.Text = ComputerDeskQuantity.ToString();
                    break;
                case ("addCT"):
                    coffeeTableQuanaity += 1;
                    Response.Cookies["coffeeTableQuantity"].Value = coffeeTableQuanaity.ToString();
                    coffeeTableQlbl.Text = coffeeTableQuanaity.ToString();
                    break;
                case ("addButtonGrayS"):
                    graycouchQuantity += 1;
                    Response.Cookies["grayCouchQuantity"].Value = graycouchQuantity.ToString();
                    GraySofaQlbl.Text = graycouchQuantity.ToString();
                    break;
                case ("addButtonLGrayS"):
                    lightGrayCouchQuantity += 1;
                    Response.Cookies["lightGrayCouchQuantity"].Value = lightGrayCouchQuantity.ToString();
                    LightGraySofaQlbl.Text = lightGrayCouchQuantity.ToString();
                    break;
            }
            updateDisplay();
            
        }

        protected void removeProduct(object sender, EventArgs e)
        {
            Button thisButton = (Button)sender;
            switch (thisButton.ID)
            {
                case ("removeKT"):
                    if (kitchenTableQuantity > 0)
                    {
                        kitchenTableQuantity = kitchenTableQuantity-1;
                        Response.Cookies["kitchenTableQuantity"].Value = kitchenTableQuantity.ToString();
                        KitchenTableQlbl.Text = kitchenTableQuantity.ToString();
                        
                    }
                    
                    break;

                case ("removeButtonGS"):
                    if (greenCouchQuantity > 0)
                    {
                        greenCouchQuantity = greenCouchQuantity - 1;
                        Response.Cookies["greenCouchQuantity"].Value = greenCouchQuantity.ToString();
                        GreenSofaQlbl.Text = greenCouchQuantity.ToString();
                        
                    }
                    break;
                case ("removeButtonGrayS"):
                    if (graycouchQuantity > 0)
                    {
                        graycouchQuantity -= 1;
                        Response.Cookies["grayCouchQuantity"].Value = graycouchQuantity.ToString();
                        GraySofaQlbl.Text = graycouchQuantity.ToString();

                    }
                    break;
                case ("removeButtonLGrayS"):
                    if (lightGrayCouchQuantity > 0)
                    {
                        lightGrayCouchQuantity -= 1;
                        Response.Cookies["lightGrayCouchQuantity"].Value = lightGrayCouchQuantity.ToString();
                        LightGraySofaQlbl.Text = LightGraySofaQlbl.ToString();

                    }
                    break;

                case ("removeCD"):
                    if (ComputerDeskQuantity > 0)
                    {
                        ComputerDeskQuantity -= 1;
                        Response.Cookies["computerDeskQuantity"].Value = ComputerDeskQuantity.ToString();
                        computerDeskQlbl.Text = ComputerDeskQuantity.ToString();
                    }
                    break;
                case ("removeCT"):
                    if (coffeeTableQuanaity > 0)
                    {
                        coffeeTableQuanaity -= 1;
                        Response.Cookies["coffeeTableQuantity"].Value = coffeeTableQuanaity.ToString();
                        coffeeTableQlbl.Text = coffeeTableQuanaity.ToString();
                    }
                    break;
            }
            updateDisplay();

        }

        private void updateDisplay()
        {
            grayCouchTotal = graycouchQuantity * COUCH_PRICE;
            lightGrayCouchTotal = lightGrayCouchQuantity * COUCH_PRICE;
            greenCouchCouchTotal = greenCouchQuantity * GREEN_COUCH_PRICE;
            kitchenTableTotal = kitchenTableQuantity * TABLE_PRICE;
            coffeeTableTotal = coffeeTableQuanaity * TABLE_PRICE;
            computerDeskTotal= ComputerDeskQuantity * COMPUTER_DESK_PRICE;

            double grandTotal = grayCouchTotal + lightGrayCouchTotal + greenCouchCouchTotal+kitchenTableTotal+coffeeTableTotal+computerDeskTotal;
            double afterTaxTotal = grandTotal * (1.00+getProvinceTaxRate());

            GrayCouchTotalLbl.Text = grayCouchTotal.ToString("C", CultureInfo.CurrentCulture);
            lightGrayCouchTotallbl.Text=lightGrayCouchTotal.ToString("C", CultureInfo.CurrentCulture);
            GreenCouchTotalLbl.Text=greenCouchCouchTotal.ToString("C", CultureInfo.CurrentCulture);

            KitchenTableTotalLbl.Text=kitchenTableTotal.ToString("C", CultureInfo.CurrentCulture);
            CoffeeTableTotallbl.Text=coffeeTableTotal.ToString("C", CultureInfo.CurrentCulture); ;
            ComputerDeskTotallbl.Text=computerDeskTotal.ToString("C", CultureInfo.CurrentCulture);

            GrandTotalLbl.Text = "Grand Total: " + grandTotal.ToString("C", CultureInfo.CurrentCulture);
            AfterTaxTotalLbl.Text = "Total(+TAX): " + afterTaxTotal.ToString("C", CultureInfo.CurrentCulture);
        }

        private double getProvinceTaxRate()
        {
            double taxRate;
            string provinceSelected = Request.Cookies["province"].Value;

            if(provinceSelected=="Alberta"||provinceSelected == "Northwest Territories" || provinceSelected == "Nunavut" || provinceSelected == "Yukon")
            {
                return taxRate = 0.05;
            }
            else if (provinceSelected == "Manitoba"||provinceSelected== "British Columbia")
            {
                return taxRate = 0.12;
            }
            else if(provinceSelected=="New Brunswick"||provinceSelected=="Newfoundland and Labrador"||provinceSelected=="Nova Scotia"||provinceSelected=="Prince Edward Island")
            {
                return taxRate = 0.15;
            }
            else if (provinceSelected == "Ontario")
            {
                return taxRate = 0.13;
            }
            else if (provinceSelected == "Quebec")
            {
                return taxRate = 0.14975;
            }
            else if (provinceSelected == "Saskatchewan")
            {
                return taxRate = 0.11;
            }
            else
            {
                return 0;
            }
            
        }

        private int cookieStringtoNumber(string thisString)
        {
            if (string.IsNullOrEmpty(thisString))
            {
                return 0;
            }
            else
            {
                return Int32.Parse(thisString);
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            string emailAddress;
            //First we check to see if the user is logged in by looking for a cookie with their email
            if (Request.Cookies["email"] == null)
            {
                Response.Redirect("../Pages/Redirect.aspx");
            }
            else
            {
                emailAddress = Request.Cookies["email"].Value;


                graycouchQuantity = cookieStringtoNumber(Request.Cookies["grayCouchQuantity"].Value);
                GraySofaQlbl.Text = Request.Cookies["grayCouchQuantity"].Value;

                lightGrayCouchQuantity = cookieStringtoNumber(Request.Cookies["lightGrayCouchQuantity"].Value);
                LightGraySofaQlbl.Text = Request.Cookies["lightGrayCouchQuantity"].Value;

                greenCouchQuantity = cookieStringtoNumber(Request.Cookies["greenCouchQuantity"].Value);
                GreenSofaQlbl.Text = Request.Cookies["greenCouchQuantity"].Value;

                kitchenTableQuantity = cookieStringtoNumber(Request.Cookies["kitchenTableQuantity"].Value);
                KitchenTableQlbl.Text = Request.Cookies["kitchenTableQuantity"].Value;
                
                coffeeTableQuanaity = cookieStringtoNumber(Request.Cookies["coffeeTableQuantity"].Value);
                coffeeTableQlbl.Text = Request.Cookies["coffeeTableQuantity"].Value;

                ComputerDeskQuantity = cookieStringtoNumber(Request.Cookies["computerDeskQuantity"].Value);
                computerDeskQlbl.Text = Request.Cookies["computerDeskQuantity"].Value;

                updateDisplay();
            }
        }
    }
}