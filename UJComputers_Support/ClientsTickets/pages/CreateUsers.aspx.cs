using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClientsTickets.Data.dtsTicketsTableAdapters;
namespace ClientsTickets.pages
{
    public partial class CreateUsers : System.Web.UI.Page
    {
        StaffTableAdapter staff = new StaffTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] == null) Response.Redirect("Login.aspx");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetExpires(DateTime.Now.AddSeconds(-1));
            Response.Cache.SetNoStore();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtPassword.Text == txtPasswordConfir.Text)
                {
                    staff.Insert(txtUsername.Text,Encrypt.GetMD5(txtPassword.Text), true,false);
                    System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('User Created');", true);
                }
                else
                {
                    System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('Imposible creating user. Passwords not match');",true);
                }
            }
            catch
            {
                System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('Error: Imposible to create user');", true);
            }
        }
    }
}