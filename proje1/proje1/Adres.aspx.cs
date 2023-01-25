using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proje1
{
    public partial class Odeme2 : System.Web.UI.Page
    {
        public SqlConnection baglanti = new SqlConnection("Data Source=MBC\\MSSQLSERVERR;Integrated Security=true;Initial Catalog=dbAhsapMarket");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Kullanici"] == null)
            {
                Response.Redirect("~/Login_User.aspx");
            }
            else
            {
                lblMail.Text = Session["Kullanici"].ToString();

            }
        }
     
        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();

            SqlCommand komut = new SqlCommand("insert into tblUserAdres(Ülke,Sehir, Adres ,PostaKodu,Telno, UserMail) values (@Ülke,@Sehir, @Adres ,@PostaKodu,@Telno, @UserMail)", baglanti);
            
            komut.Parameters.AddWithValue("@Ülke", txtÜlke.Text.ToString());
            komut.Parameters.AddWithValue("@Sehir", txtSehir.Text.ToString());
            komut.Parameters.AddWithValue("@Adres", txtAdres.Text.ToString());
            komut.Parameters.AddWithValue("@PostaKodu", txtPostaKodu.Text.ToString());
            komut.Parameters.AddWithValue("@Telno", txtNumara.Text.ToString());
            //komut.Parameters.AddWithValue("@UserMail",1);
            komut.Parameters.AddWithValue("@UserMail", lblMail.Text.ToString());

            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("Adres.aspx");
        }
    }
}