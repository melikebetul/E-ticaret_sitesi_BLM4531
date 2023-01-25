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
    public partial class GaleriDüzenleSecilen : System.Web.UI.Page
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

            SqlCommand komut = new SqlCommand("UPDATE tblGaleri set Baslik=@Baslik, KategoriId=@Kategori ,Resim=@Resim", baglanti);

            komut.Parameters.AddWithValue("@Baslik", txtResimAd.Text.ToString());
   
            komut.Parameters.AddWithValue("@Kategori", 1);
            komut.Parameters.AddWithValue("@Resim", lblResim.Text.ToString());

            komut.Parameters.AddWithValue("@id", Request.QueryString["id"]);

            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("GaleriDüzenleSil.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            baglanti.Open();

            SqlCommand komut = new SqlCommand("select *  from tblGaleri where id=@id", baglanti);
            komut.Parameters.AddWithValue("@id", Request.QueryString["id"]);

            SqlDataReader oku = komut.ExecuteReader();
            DataTable tablo = new DataTable();
            tablo.Load(oku);
            txtResimAd.Text = tablo.Rows[0]["Baslik"].ToString();
           
            DropDownList1.Text = tablo.Rows[0]["KategoriId"].ToString();
            lblResim.Text = tablo.Rows[0]["Resim"].ToString();
          



            baglanti.Close();
        }
    }
}