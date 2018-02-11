using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection konekcija = new SqlConnection(WebConfigurationManager.ConnectionStrings["mojaKonekcija"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
      /*  DateTime datum = DateTime.Now;
        txtDatTest.Text = datum.ToShortDateString();
      */
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand insertKlijenta = new SqlCommand();
        insertKlijenta.Connection = konekcija;

        insertKlijenta.CommandText = "INSERT INTO Klijent ( ime_i_prezime,mesto,telefon,visina_tezina,datum_testiranja,intolerancija_na,starost,napomena) VALUES (@ime_i_prezime,@mesto,@telefon,@visina_tezina,@datum_testiranja,@intolerancija_na,@starost,@napomena )";

        insertKlijenta.Parameters.AddWithValue("@ime_i_prezime", txtIme.Text.ToString());
        //insertKlijenta.Parameters.AddWithValue("@prezime",txtPrezime.Text.ToString());
        insertKlijenta.Parameters.AddWithValue("@starost", txtStarost.Text.ToString());
        insertKlijenta.Parameters.AddWithValue("@mesto", txtMesto.Text.ToString());
        insertKlijenta.Parameters.AddWithValue("@telefon", txtTelefon.Text.ToString());
        insertKlijenta.Parameters.AddWithValue("@napomena", txtNapomena.Text.ToString());
        insertKlijenta.Parameters.AddWithValue("@visina_tezina", txtVisinaTezina.Text.ToString());
        insertKlijenta.Parameters.AddWithValue("@datum_testiranja", txtDatTest.Text.ToString());
        insertKlijenta.Parameters.AddWithValue("@intolerancija_na", txtIntolerancija.Text.ToString());

        try
        {
            konekcija.Open();
            // brojac unetih slogova
            int insertovano;
            insertovano = insertKlijenta.ExecuteNonQuery();
            // ispisuje unete slogovw
            lblInfo.Text = "Uspesno je unet " + insertovano.ToString() + " klijent u bazu!";
        }
        catch (Exception ex)
        {
            lblInfo.Text = ex.Message;
        }
        finally
        {

            konekcija.Close();

        }
    }
}
