﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientsTickets
{
    public partial class ADMINIMASTER : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void imgExit_Click(object sender, ImageClickEventArgs e)
        {
            Session.Abandon();
            Response.Redirect("ClientsTickets.aspx");
        }
    }
}