using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proje1
{
    public partial class AltSayfa : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Kullanici"] == null)
            {

            }
            else
            {
                Label1.Text = Session["Kullanici"].ToString();

            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Remove("Kullanici");
            Session.Abandon();
            Response.Redirect("Login_User.aspx");
        }


    }


}
