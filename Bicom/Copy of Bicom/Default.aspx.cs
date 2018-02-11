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

public partial class _Default : System.Web.UI.Page
{
    SqlConnection konekcija = new SqlConnection(WebConfigurationManager.ConnectionStrings["mojaKonekcija"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string selectNaredba;
        selectNaredba = " SELECT * FROM Klijent WHERE id_klijenta= '"
            + ddlImePrezime.SelectedItem.Value + "'";

        SqlCommand komanda = new SqlCommand(selectNaredba, konekcija);
        SqlDataReader citanje;

        try
        {
            konekcija.Open();
            citanje = komanda.ExecuteReader();
            citanje.Read();
            txtIme.Text = citanje["ime_i_prezime"].ToString();
           // txtPrezime.Text = citanje["prezime"].ToString();
            txtAdresa.Text = citanje["adresa"].ToString();
            txtMesto.Text = citanje["mesto"].ToString();
            txtTelefon.Text = citanje["telefon"].ToString();
            txtMail.Text = citanje["mail"].ToString();
            txtIDklijenta.Text = citanje["id_klijenta"].ToString();
            txtVt.Text = citanje["visina_tezina"].ToString();
            txtDatRodj.Text = citanje["datum_rodjenja"].ToString();
            txtIntolerancija.Text = citanje["intolerancija"].ToString();
                
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
        string naredba = "update Klijent set ime_i_prezime = @ime_i_prezime,adresa = @adresa,telefon = @telefon,mesto = @mesto,mail = @mail,visina_tezina = @visina_tezina,datum_rodjenja = @datum_rodjenja,intolerancija_na = @intolerancija_na where id_klijenta = @id_klijenta";

        SqlCommand cmd = new SqlCommand(naredba, konekcija);

        cmd.Parameters.AddWithValue("@id_klijenta", txtIDklijenta.Text.ToString());
        cmd.Parameters.AddWithValue("@ime_i_prezime", txtIme.Text.ToString());
        //cmd.Parameters.AddWithValue("@prezime", txtPrezime.Text.ToString());
        cmd.Parameters.AddWithValue("@adresa", txtAdresa.Text.ToString());
        cmd.Parameters.AddWithValue("@mesto", txtMesto.Text.ToString());
        cmd.Parameters.AddWithValue("@telefon", txtTelefon.Text.ToString());
        cmd.Parameters.AddWithValue("@mail", txtMail.Text.ToString());
        cmd.Parameters.AddWithValue("@visina_tezina", txtVt.Text.ToString());
        cmd.Parameters.AddWithValue("@datum_rodjenja", txtDatRodj.Text.ToString());
        cmd.Parameters.AddWithValue("intolerancija_na", txtIntolerancija.Text.ToString());

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
