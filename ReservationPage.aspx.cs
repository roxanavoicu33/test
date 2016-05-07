using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void FromAirport_SelectedIndexChanged(object sender, EventArgs e)
    {
        Message.Text  += "You want to travel from ";//+ FromAirport.SelectedItem + " airport ";
    }

    protected void ToAirport_SelectedIndexChanged(object sender, EventArgs e)
    {
        Message.Text += "to " + ToAirport.SelectedItem + " airport ";
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        Message.Text += "on " + Calendar1.SelectedDate + " date.";
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Message.Text = "to " + ToAirport.SelectedItem + " airport ";
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Message.Text = "You want to travel from " + FromAirport.SelectedItem + " airport ";
    }
}