using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proje1
{
    public partial class SignIn : System.Web.UI.Page
    {
        public SqlConnection baglanti = new SqlConnection("Data Source=MBC\\MSSQLSERVERR;Integrated Security=true;Initial Catalog=dbAhsapMarket");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();

            SqlCommand komut = new SqlCommand("insert into tblKullanici(UserName, Sifre,Ad,Soyad, Mail) values (@UserName, @Sifre,@Ad,@Soyad, @Mail)", baglanti);
            komut.Parameters.AddWithValue("@UserName", txtUserName.Text.ToString());
            komut.Parameters.AddWithValue("@Sifre", txtSifre.Text.ToString());
            komut.Parameters.AddWithValue("@Ad", txtAd.Text.ToString());
            komut.Parameters.AddWithValue("@Soyad", txtSoyad.Text.ToString());
            komut.Parameters.AddWithValue("@Mail", txtMail.Text.ToString());
         

            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("Login.aspx");
        }
    }
}