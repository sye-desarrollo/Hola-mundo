using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClientsTickets.Data.dtsTicketsTableAdapters;
namespace ClientsTickets.pages
{
    public partial class Login : System.Web.UI.Page
    {
        StaffTableAdapter login = new StaffTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
        string User = Login1.UserName;
            string Pswd = Encrypt.GetMD5(Login1.Password);
            int answer = (int)login.ValidateU(User, Pswd);
            int Admin =  (int)login.IsAdmin(User, Pswd);
            try
            {
                if (answer != 0)
                {

                    e.Authenticated = true;
                    if (Admin != 0)
                    {
                        Session.Add("Admin", User);
                        Response.Redirect("Administrador.aspx");
                    }
                    else
                    {
                        Session.Add("Resol", User);
                        Response.Redirect("TicketsByResolutor.aspx");
                    }
                }
                else
                {
                    e.Authenticated = false;
                }
            }catch
            {
                System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('We are having some problems with the login, please try in a few minutes later');", true);
            }
        }
        }
    }
