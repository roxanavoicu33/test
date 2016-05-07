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

    protected void GetTicket(object sender, EventArgs e)
    {
        if (System.Web.HttpContext.Current != null &&
                System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            Response.Redirect("ReservationPage.aspx");
        else
            Response.Redirect("~/Account/Register.aspx");
    }
}