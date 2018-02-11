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

    }
    protected void btnPrikazi_Click(object sender, EventArgs e)
    {
        lstKlijenti.Visible = true;
        lstKlijenti.Items.Clear();
        SqlCommand komanda = new SqlCommand();
        komanda.CommandText = "SELECT * from klijent where ime_i_prezime like '%" + txtPojam.Text + "%'";
        komanda.Connection = konekcija;
        SqlDataAdapter adapter = new SqlDataAdapter(komanda);
        DataTable dtklijent = new DataTable();

        try
        {
            konekcija.Open();
            adapter.Fill(dtklijent);
        }
        catch (Exception exc)
        {
            lblKraj.Text = exc.Message;
        }
        finally
        {
            konekcija.Close();
        }
        foreach (DataRow redKlijent in dtklijent.Rows)
        {
            ListItem stavkaKlijent = new ListItem();
            // stavkaKlijent.Text = redKlijent["ime"].ToString() + " " + redKlijent["prezime"].ToString();
            stavkaKlijent.Text = redKlijent["ime_i_prezime"].ToString();
            stavkaKlijent.Value = redKlijent["id_klijenta"].ToString();
            lstKlijenti.Items.Add(stavkaKlijent);
        }
      //  lblStatic.Visible = true;
     //   lblUnos.Visible = true;
      //  lblUnos.Text = txtPojam.Text;
      //  txtPojam.Text = "";
       // lblUputstvo.Visible = true;
    }
    protected void lstKlijenti_SelectedIndexChanged(object sender, EventArgs e)
    {
        string selectNaredba;
        //selectNaredba = " SELECT * FROM Klijent WHERE id_klijenta= '"
        //+ ddlImePrezime.SelectedItem.Value + "'";
        selectNaredba = "Select * from Klijent where id_klijenta = @id_klijenta";

        SqlCommand komanda = new SqlCommand(selectNaredba, konekcija);
        komanda.Parameters.AddWithValue("@id_klijenta", lstKlijenti.SelectedValue);
        SqlDataReader citanje;

        try
        {
            konekcija.Open();
            citanje = komanda.ExecuteReader();
            citanje.Read();
            lblIme.Text = lstKlijenti.SelectedItem.ToString();
             txtIme.Text = citanje["ime_i_prezime"].ToString();

            //txtPrezime.Text = citanje["prezime"].ToString();

             txtStarost.Text = citanje["starost"].ToString();
           //  txtAdresa.Text = citanje["adresa"].ToString();
            txtMesto.Text = citanje["mesto"].ToString();
            txtTelefon.Text = citanje["telefon"].ToString();
             //txtMail.Text = citanje["mail"].ToString();
            //lblIdKlijenta.Text = citanje["id_klijenta"].ToString();
             txtVt.Text = citanje["visina_tezina"].ToString();
            txtDatTest.Text = citanje["datum_testiranja"].ToString();
            txtIntolerancija.Text = citanje["intolerancija_na"].ToString();
            txtNapomena.Text = citanje["napomena"].ToString();


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
    protected void btnIzmeni_Click(object sender, EventArgs e)
    {
        string naredba = "update Klijent set napomena = @napomena,intolerancija_na = @intolerancija_na,datum_testiranja = @datum_testiranja,visina_tezina = @visina_tezina,ime_i_prezime = @ime_i_prezime,telefon = @telefon,starost = @starost,mesto = @mesto where id_klijenta = @id_klijenta";

        SqlCommand cmd = new SqlCommand(naredba, konekcija);

        cmd.Parameters.AddWithValue("@id_klijenta", lstKlijenti.SelectedValue);
         cmd.Parameters.AddWithValue("@ime_i_prezime", txtIme.Text.ToString());
        //cmd.Parameters.AddWithValue("@prezime", txtPrezime.Text.ToString());
         cmd.Parameters.AddWithValue("@starost", txtStarost.Text.ToString());
        cmd.Parameters.AddWithValue("@mesto", txtMesto.Text.ToString());
        cmd.Parameters.AddWithValue("@telefon", txtTelefon.Text.ToString());
        cmd.Parameters.AddWithValue("@napomena", txtNapomena.Text.ToString());
        cmd.Parameters.AddWithValue("@visina_tezina", txtVt.Text.ToString());
        cmd.Parameters.AddWithValue("@datum_testiranja", txtDatTest.Text.ToString());
        cmd.Parameters.AddWithValue("@intolerancija_na", txtIntolerancija.Text.ToString());

        try
        {
            // otvara konekciju
            konekcija.Open();
            // brojac unetih slogova
            int izmenjeno;
            izmenjeno = cmd.ExecuteNonQuery();
            // ispisuje unete slogovw
          //  lblKraj.Text = "Broj izmenjenih klijenata je:" + izmenjeno.ToString();
            lblKraj.Text = "Uspešno ste izmenili podatke!";
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
