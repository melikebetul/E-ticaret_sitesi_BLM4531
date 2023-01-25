using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proje1.Yönetim
{
    public partial class Kurumsal : System.Web.UI.Page
    {
        public SqlConnection baglanti = new SqlConnection("Data Source=MBC\\MSSQLSERVERR;Integrated Security=true;Initial Catalog=dbAhsapMarket");
        protected void Page_Load(object sender, EventArgs e)
        {
            baglanti.Open();

            SqlCommand komut = new SqlCommand("select *  from tblKurumsal", baglanti);
            SqlDataReader oku = komut.ExecuteReader();
            DataTable tablo = new DataTable();
            tablo.Load(oku);
            txtBaslik.Text = tablo.Rows[0]["Baslik"].ToString();
            txtDetay.Text = tablo.Rows[0]["Detay"].ToString();
            txtOzet.Text = tablo.Rows[0]["Ozet"].ToString();
         

           
            baglanti.Close();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();

            SqlCommand komut = new SqlCommand("insert into tblKurumsal(Baslik, Ozet, Detay) values (@Baslik, @Ozet, @Detay) ", baglanti);
            komut.Parameters.AddWithValue("@Baslik", txtBaslik.Text.ToString());
            komut.Parameters.AddWithValue("@Ozet", txtOzet.Text.ToString());
            komut.Parameters.AddWithValue("@Detay", txtDetay.Text.ToString());
     
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("Kurumsal.aspx");
        }
    }
}