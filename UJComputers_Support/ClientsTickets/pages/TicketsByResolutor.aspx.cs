using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClientsTickets.Data.dtsTicketsTableAdapters;
using System.Net;
using System.Net.Mail;
namespace ClientsTickets.pages
{
    public partial class ResolutorTicket : System.Web.UI.Page
    {
        TicketDetailTableAdapter td = new TicketDetailTableAdapter();
        TicketTableAdapter ticket = new TicketTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Resol"] == null) Response.Redirect("Login.aspx");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetExpires(DateTime.Now.AddSeconds(-1));
            Response.Cache.SetNoStore();
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            try
            {

                td.Insert(Convert.ToInt32(grdYourTickets.SelectedRow.Cells[1].Text), DateTime.Now, 2, txtAnswer.InnerText);
                grdYourTicketDetails.DataBind();
                Correos Cr = new Correos();
                var Email = Convert.ToString(grdYourTickets.SelectedRow.Cells[4].Text);
                MailMessage mnsj = new MailMessage();

                mnsj.Subject = "Sistema de Iscripción de Becas";

                mnsj.To.Add(new MailAddress(Email.ToString()));

                mnsj.From = new MailAddress("mariiocast005@gmail.com", "UJComputers");

                mnsj.Body = " UJComputers\n Support Center  \n Hi " + Convert.ToString(grdYourTickets.SelectedRow.Cells[3].Text) + ". \n Your problem has been answered by one of our supporters. \n\n Please visit our page with your code you will see the answers yo your problem.\n\n Have a good day.";


                /* Enviar */
                Cr.MandarCorreo(mnsj);
                txtAnswer.InnerText = "";
            }
            
            catch
            {
                System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('Error sending the message, please try again');", true);

            }
        }
        class Correos
        {
            /*
             * Cliente SMTP
             * Gmail:  smtp.gmail.com  puerto:587
             * Hotmail: smtp.liva.com  puerto:25
             */
            SmtpClient server = new SmtpClient("smtp.gmail.com", 587);

            public Correos()
            {
                server.Credentials = new System.Net.NetworkCredential("mariiocast005@gmail.com", "programacion3");
                server.EnableSsl = true;
            }

            public void MandarCorreo(MailMessage mensaje)
            {
                server.Send(mensaje);
            }
        }
        protected void grdYourTickets_SelectedIndexChanged(object sender, EventArgs e)
        {
            grdYourTicketDetails.Visible.Equals(true);
            btnSend.Visible.Equals(true);
            lblRes.Text = "Give your solution to these problem:";
            lblDetails.Text = "Ticket Details:";
            btnSend.Enabled = true;
        }
    }
}