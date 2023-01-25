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
    public partial class Ayarlar : System.Web.UI.Page
    {
        public SqlConnection baglanti = new SqlConnection("Data Source=MBC\\MSSQLSERVERR;Integrated Security=true;Initial Catalog=dbAhsapMarket");
        protected void Page_Load(object sender, EventArgs e)
        {
            baglanti.Open();

            SqlCommand komut = new SqlCommand("select *  from tblAyarlar", baglanti);
            SqlDataReader oku = komut.ExecuteReader();
            DataTable tablo = new DataTable();
            tablo.Load(oku);
            txtMail.Text = tablo.Rows[0]["Mail"].ToString();
            txtTlf.Text = tablo.Rows[0]["Tlf"].ToString();
            txtAdres.Text = tablo.Rows[0]["Adres"].ToString();
            txtTwitter.Text = tablo.Rows[0]["Twitter"].ToString();
            txtYoutube.Text = tablo.Rows[0]["Youtube"].ToString();
            txtInstagram.Text = tablo.Rows[0]["Instagram"].ToString();
            txtFacebook.Text = tablo.Rows[0]["Facebook"].ToString();
            lblResim.Text = tablo.Rows[0]["Logo"].ToString();
            txtDetay.Text = tablo.Rows[0]["SiteOzet"].ToString();

            baglanti.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();

            SqlCommand komut = new SqlCommand("insert into tblAyarlar(Mail, Tlf, Adres, Twitter, Youtube, Instagram, Facebook, Logo, SiteOzet) values (@Mail, @Tlf, @Adres, @Twitter, @Youtube, @Instagram, @Facebook, @Logo, @SiteOzet)", baglanti);
            komut.Parameters.AddWithValue("@Mail", txtMail.Text.ToString());
            komut.Parameters.AddWithValue("@Tlf", txtTlf.Text.ToString());
            komut.Parameters.AddWithValue("@Adres", txtAdres.Text.ToString());
            komut.Parameters.AddWithValue("@Twitter", txtTwitter.Text.ToString());
            komut.Parameters.AddWithValue("@Youtube", txtYoutube.Text.ToString());
            komut.Parameters.AddWithValue("@Instagram", txtInstagram.Text.ToString());
            komut.Parameters.AddWithValue("@Facebook", txtFacebook.Text.ToString());
            komut.Parameters.AddWithValue("@Logo", lblResim.Text.ToString());
            komut.Parameters.AddWithValue("@SiteOzet", txtDetay.Text.ToString());

            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("Ayarlar.aspx");
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
    }
}