using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proje1.Yönetim
{
    public partial class ÜrünDüzenleSecilen : System.Web.UI.Page
    {
        public SqlConnection baglanti = new SqlConnection("Data Source=MBC\\MSSQLSERVERR;Integrated Security=true;Initial Catalog=dbAhsapMarket");
      
        protected void Page_Load(object sender, EventArgs e)
        {
          

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (FileUpload.HasFile)
            {
                if (FileUpload.PostedFile.ContentType == "image/jpeg" || FileUpload.PostedFile.ContentType == "image/png")
                {
                    string ResimAd = FileUpload.FileName.ToString();
                    FileUpload.SaveAs(Server.MapPath("~/images/" + ResimAd));
                    lblResim.Text = ResimAd.ToString();

                }
                else
                {
                    lblResim.Text = "Lütfen jpeg ya da png uzantılı bir dosya seçiniz";

                }
            }
            else
            {
                lblResim.Text = "Lütfen resim seçiniz";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();

            SqlCommand komut = new SqlCommand("UPDATE tblUrun set Adi=@Adi,Fiyat=@Fiyat, Sure=@Sure ,Resim=@Resim, Detay=@Detay where id=@id", baglanti);

            komut.Parameters.AddWithValue("@Adi", txtad.Text.ToString());
            komut.Parameters.AddWithValue("@Fiyat", Convert.ToDouble(txtfiyat.Text.ToString()));
            komut.Parameters.AddWithValue("@Sure", Convert.ToInt32(txtsüre.Text.ToString()));
            komut.Parameters.AddWithValue("@Resim", lblResim.Text.ToString());
            komut.Parameters.AddWithValue("@Detay", txtDetay.Text.ToString());
          

            komut.Parameters.AddWithValue("@id", Request.QueryString["id"]);

            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("ÜrünDüzenleSil.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            baglanti.Open();

            SqlCommand komut = new SqlCommand("select *  from tblUrun where id=@id", baglanti);
            komut.Parameters.AddWithValue("@id", Request.QueryString["id"]);

            SqlDataReader oku = komut.ExecuteReader();
            DataTable tablo = new DataTable();
            tablo.Load(oku);
            txtad.Text = tablo.Rows[0]["Adi"].ToString();
            txtfiyat.Text = tablo.Rows[0]["Fiyat"].ToString();
            txtsüre.Text = tablo.Rows[0]["Sure"].ToString();
            lblResim.Text = tablo.Rows[0]["Resim"].ToString();
            txtDetay.Text = tablo.Rows[0]["Detay"].ToString();

            baglanti.Close();
        }
    }
}