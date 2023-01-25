using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace proje1.Yönetim
{
    public partial class BlogKategori : System.Web.UI.Page
    {
        public SqlConnection baglanti = new SqlConnection("Data Source=MBC\\MSSQLSERVERR;Integrated Security=true;Initial Catalog=dbAhsapMarket");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();

            SqlCommand komut = new SqlCommand("insert into tblBlogKategori(Adi) values (@Adi)", baglanti);
            komut.Parameters.AddWithValue("@Adi", txtkategori.Text.ToString());
           
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("BlogKategori.aspx");
        }
    }
}