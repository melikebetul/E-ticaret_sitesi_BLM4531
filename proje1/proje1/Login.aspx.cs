using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace proje1
{
    public partial class Login : System.Web.UI.Page
    {
        public SqlConnection baglanti = new SqlConnection("Data Source=MBC\\MSSQLSERVERR;Integrated Security=true;Initial Catalog=dbAhsapMarket");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();

            SqlCommand komut = new SqlCommand("select *  from tblKullanici where UserName=@UserName and Sifre=@Sifre", baglanti);
            komut.Parameters.AddWithValue("@UserName", txtUserName.Text.ToString());
            komut.Parameters.AddWithValue("@Sifre", txtSifre.Text.ToString());
            SqlDataReader oku = komut.ExecuteReader();
            if (oku.Read())
            {
                Session["Kullanici"] = oku["UserName"].ToString();
                Response.Redirect("~/Yönetim/Default.aspx");
            }
            else
            {
                Label1.Text = "Kullanıcı adı veya şifre hatalı";
            }

            oku.Close();
            baglanti.Close();
            baglanti.Dispose();
            
        }
    }
}