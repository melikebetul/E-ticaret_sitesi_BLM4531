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
    public partial class BlogDüzenleSecilen : System.Web.UI.Page
    {
        public SqlConnection baglanti = new SqlConnection("Data Source=MBC\\MSSQLSERVERR;Integrated Security=true;Initial Catalog=dbAhsapMarket");
        DateTime bugun = DateTime.Now;
        protected void Page_Load(object sender, EventArgs e)
        {
            lbltarih.Text = bugun.ToString();
           
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

            SqlCommand komut = new SqlCommand("UPDATE tblBlog set Baslik=@Baslik,Ozet=@Ozet, KategoriId=@Kategori ,Resim=@Resim, Detay=@Detay, Tarih=@Tarih where id=@id", baglanti);
           
            komut.Parameters.AddWithValue("@Baslik", txtBaslik.Text.ToString());
            komut.Parameters.AddWithValue("@Ozet", txtOzet.Text.ToString());
            komut.Parameters.AddWithValue("@Kategori", 1);
            komut.Parameters.AddWithValue("@Resim", lblResim.Text.ToString());
            komut.Parameters.AddWithValue("@Detay", txtDetay.Text.ToString());
            komut.Parameters.AddWithValue("@Tarih", bugun);
           

            komut.Parameters.AddWithValue("@id", Request.QueryString["id"]);
            
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("BlogDüzenleSil.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            baglanti.Open();

            SqlCommand komut = new SqlCommand("select *  from tblBlog where id=@id", baglanti);
            komut.Parameters.AddWithValue("@id", Request.QueryString["id"]);

            SqlDataReader oku = komut.ExecuteReader();
            DataTable tablo = new DataTable();
            tablo.Load(oku);
            txtBaslik.Text = tablo.Rows[0]["Baslik"].ToString();
            txtOzet.Text = tablo.Rows[0]["Ozet"].ToString();
            DropDownList1.Text = tablo.Rows[0]["KategoriId"].ToString();
            lblResim.Text = tablo.Rows[0]["Resim"].ToString();
            txtDetay.Text = tablo.Rows[0]["Detay"].ToString();
            lbltarih.Text = tablo.Rows[0]["Tarih"].ToString();



            baglanti.Close();
        }
    }
}