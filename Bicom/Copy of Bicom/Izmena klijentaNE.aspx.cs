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

public partial class Izmena_klijenta : System.Web.UI.Page
{
    SqlConnection konekcija = new SqlConnection(WebConfigurationManager.ConnectionStrings["mojaKonekcija"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        txtIdKlijenta.Text = Session["id_klijenta"].ToString();
        lblIme.Text = Session["ime_i_prezime"].ToString();
        string selectNaredba;
        //selectNaredba = " SELECT * FROM Klijent WHERE id_klijenta= '"
        //+ ddlImePrezime.SelectedItem.Value + "'";
        selectNaredba = "Select * from Klijent where id_klijenta = @id_klijenta";

        SqlCommand komanda = new SqlCommand(selectNaredba, konekcija);
        komanda.Parameters.AddWithValue("@id_klijenta", txtIdKlijenta.Text);
        SqlDataReader citanje;

        try
        {
            konekcija.Open();
            citanje = komanda.ExecuteReader();
            citanje.Read();
            txtIme.Text = citanje["ime_i_prezime"].ToString();

          //  txtAdresa.Text = citanje["adresa"].ToString();
            //txtMesto.Text = citanje["mesto"].ToString();
            //txtTelefon.Text = citanje["telefon"].ToString();
            //txtMail.Text = citanje["mail"].ToString();
            //txtVt.Text = citanje["visina_tezina"].ToString();
            //txtDatRodj.Text = citanje["datum_rodjenja"].ToString();
            //txtIntolerancija.Text = citanje["intolerancija_na"].ToString();


            citanje.Close();
        }
        catch (Exception ex)
        {
            lblKraj.Text = ex.Message;
        }

        finally
        {
            konekcija.Close();
        }
    }
  
    protected void Button1_Click(object sender, EventArgs e)
    {

       // string naredba = "update Klijent set ime_i_prezime = @ime_i_prezime,adresa = @adresa,telefon = @telefon,mesto = @mesto,mail = @mail,visina_tezina = @visina_tezina,datum_rodjenja = @datum_rodjenja,intolerancija_na = @intolerancija_na where id_klijenta = @id_klijenta";
        string naredba = "update Klijent set ime_i_prezime = @ime_i_prezime where id_klijenta = @id_klijenta";

        SqlCommand cmd = new SqlCommand(naredba, konekcija);

        cmd.Parameters.AddWithValue("@id_klijenta",txtIdKlijenta.Text.ToString());
        cmd.Parameters.AddWithValue("@ime_i_prezime", txtIme.Text.ToString());
        //cmd.Parameters.AddWithValue("@adresa", txtAdresa.Text);
        //cmd.Parameters.AddWithValue("@mesto", txtMesto.Text);
        //cmd.Parameters.AddWithValue("@telefon", txtTelefon.Text.ToString());
        //cmd.Parameters.AddWithValue("@mail", txtMail.Text);
        //cmd.Parameters.AddWithValue("@visina_tezina", txtVt.Text);
        //cmd.Parameters.AddWithValue("@datum_rodjenja", txtDatRodj.Text);
        //cmd.Parameters.AddWithValue("intolerancija_na", txtIntolerancija.Text);

        try
        {
            // otvara konekciju
            konekcija.Open();
            // brojac unetih slogova
            int izmenjeno;
            izmenjeno = cmd.ExecuteNonQuery();
            // ispisuje unete slogovw
            lblKraj.Text = "Broj izmenjenih klijenata je:" + izmenjeno.ToString();
        }
        catch (Exception ex)
        {
            lblKraj.Text = ex.Message;
        }
        finally
        {
            konekcija.Close();
        }

    }
    
}
