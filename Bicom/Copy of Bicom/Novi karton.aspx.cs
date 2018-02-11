using System;
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
        lblIdKlijenta.Text = Session["id_klijenta"].ToString();
        lblIme.Text = Session["ime_i_prezime"].ToString();

       /* DateTime datum = DateTime.Now;
        txtDatum.Text = datum.ToShortDateString();
*/
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtSifkli.Text = ddlKlijent.SelectedValue.ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand insertKartona = new SqlCommand();
        insertKartona.Connection = konekcija;

        insertKartona.CommandText = "INSERT INTO Karton ( id_klijenta, tezina,datum,opis,broj_tretmana ) VALUES (@id_klijenta,@tezina,@datum,@opis,@broj_tretmana)";
        insertKartona.Parameters.AddWithValue("@id_klijenta", lblIdKlijenta.Text.ToString());
       // insertKartona.Parameters.AddWithValue("@visina", txtVisina.Text.ToString());
        insertKartona.Parameters.AddWithValue("@tezina", txtTezina.Text.ToString());
        insertKartona.Parameters.AddWithValue("@datum",txtDatum.Text.ToString());
        insertKartona.Parameters.AddWithValue("@opis", txtOpis.Text.ToString());
        insertKartona.Parameters.AddWithValue("@broj_tretmana", txtBrtret.Text.ToString());
        try
        {
            // otvara konekciju
            konekcija.Open();
            // brojac unetih slogova
            int insertovano;
            insertovano = insertKartona.ExecuteNonQuery();
            // ispisuje unete slogovw
            //lblInfo.Text = "Broj novih kartona je:" + insertovano.ToString();
            lblInfo.Text = "Uspešno ste sačuvali podatke!";
        }
        catch (Exception ex)
        {

            lblInfo.Text = ex.Message;
        }
        finally
        {
            konekcija.Close();
            txtOpis.Text = "";
           // txtDatum.Text = "";
            txtTezina.Text = "";
           // txtVisina.Text = "";
            txtBrtret.Text = "";
        }
    }
    protected void txtOpis_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Novi karton1.aspx");
    }
}
