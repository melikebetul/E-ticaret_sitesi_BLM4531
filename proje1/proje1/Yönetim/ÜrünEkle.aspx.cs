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
    public partial class ÜrünEkle : System.Web.UI.Page
    {
        //string cong_baglanti = WebConfigurationManager.ConnectionStrings["dbAhsapMarketConnectionString"].ConnectionString;
        public SqlConnection baglanti = new SqlConnection("Data Source=MBC\\MSSQLSERVERR;Integrated Security=true;Initial Catalog=dbAhsapMarket");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (FileUpload.HasFile)
            {
                if(FileUpload.PostedFile.ContentType == "image/jpeg"  || FileUpload.PostedFile.ContentType == "image/png")
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

            SqlCommand komut = new SqlCommand("insert into tblUrun(Adi,Fiyat,Sure,Resim,Detay) values (@Adi, @Fiyat, @Sure, @Resim, @Detay)", baglanti);
            komut.Parameters.AddWithValue("@Adi", txtad.Text.ToString());
            komut.Parameters.AddWithValue("@Fiyat", Convert.ToDouble(txtfiyat.Text.ToString()));
            komut.Parameters.AddWithValue("@Sure", Convert.ToInt32(txtsüre.Text.ToString()));
            komut.Parameters.AddWithValue("@Resim", lblResim.Text.ToString());
            komut.Parameters.AddWithValue("@Detay", txtDetay.Text.ToString());
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("ÜrünEkle.aspx");
        }
    }
}