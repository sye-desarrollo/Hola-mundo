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
    public partial class CreateTicket : System.Web.UI.Page
    {
        TicketTableAdapter Tickets = new TicketTableAdapter();
        TicketDetailTableAdapter td = new TicketDetailTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {

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
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Tickets.Insert(DateTime.Now, Convert.ToInt32(ddlTopic.SelectedValue.ToString()), Convert.ToInt32(ddlPriority.SelectedValue.ToString()), txtName.Text, txtEmail.Text, txtPhone.Text, txtCompany.Text, txtSummary.Text, TxtDetails.InnerText, 0, 1);
                var LastID = Tickets.MaxID();
                td.Insert((int)LastID, DateTime.Now, 0, "Your problem is going to be resolved in the next few hours");
                System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('Ticket created successfully. Your ticket ID has been sent to your Email');", true);
                    Correos Cr = new Correos();
                    MailMessage mnsj = new MailMessage();

                    mnsj.Subject = "UJComputers Support Center";

                    mnsj.To.Add(new MailAddress(txtEmail.Text));

                    mnsj.From = new MailAddress("mariiocast005@gmail.com", "UJComputers");

                    mnsj.Body = " UJComputers\n Support Center  \n Thanks " + txtName.Text + " for using the Ticket Support Center. \n Your problem will be solved in the next 24 hours  \n Here is your ticket ID, you can use your ticket status in our Support Center Ticket Status page.\n\n Your Ticket ID is: "   + LastID.ToString() + "\n Have a good day.";

                    /* Enviar */
                    Cr.MandarCorreo(mnsj);
                    lblCorreo.Text = "Correo Enviado";
                txtName.Text = "";
                txtName.Text = "";
                txtName.Text = "";
                txtName.Text = "";
                txtName.Text = "";
            }
            catch
            {
                System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('Error Creating your ticket ');", true);
            }
        }
    }
}