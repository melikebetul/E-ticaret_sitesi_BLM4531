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
    public partial class Urun_Detay : System.Web.UI.Page
    {
        public SqlConnection baglanti = new SqlConnection("Data Source=MBC\\MSSQLSERVERR;Integrated Security=true;Initial Catalog=dbAhsapMarket");
        protected void Page_Load(object sender, EventArgs e)
        {
            baglanti.Open();

            SqlCommand komut = new SqlCommand("select *  from tblUrun where id=@id", baglanti);
            komut.Parameters.AddWithValue("@id", Request.QueryString["id"]);

            SqlDataReader oku = komut.ExecuteReader();
            DataTable tablo = new DataTable();
            tablo.Load(oku);
            lblresim.Text = tablo.Rows[0]["Resim"].ToString();
            lblBaslik.Text = tablo.Rows[0]["Adi"].ToString();

            lblDetay.Text = tablo.Rows[0]["Detay"].ToString();
            lblFiyat.Text = tablo.Rows[0]["Fiyat"].ToString();

            baglanti.Close();
        }
    }
}