using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClientsTickets.Data.dtsTicketsTableAdapters;
namespace ClientsTickets.pages
{
    public partial class CheckTicket : System.Web.UI.Page
    {
        TicketDetailTableAdapter td = new TicketDetailTableAdapter();
        TicketTableAdapter ticket = new TicketTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

                int ID = Convert.ToInt32(txtTicketID.Text);
                string Email = txtEmail.Text;
                int Answer = (int)ticket.CountRegistrosIguales(ID, Email);
                if (Answer != 0)
                {
                    btnSend.Enabled = true;
                }
                else
                {
                    System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('Ticket not found');", true);

                }
          
            

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            td.Insert(Convert.ToInt32(txtTicketID.Text), DateTime.Now, 100, txtAnswer.InnerText);
            grdTicketDetails.DataBind();
        }
    }
}