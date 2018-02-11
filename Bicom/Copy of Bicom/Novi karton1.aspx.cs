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
    
   
    protected void btnPrikazi_Click1(object sender, EventArgs e)
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
            lblPoruka.Text = exc.Message;
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
        lblStatic.Visible = true;
        lblUnos.Visible = true;
        lblUnos.Text = txtPojam.Text;
        txtPojam.Text = "";
        lblUputstvo.Visible = true;
    }
    protected void lstKlijenti_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Session["id_klijenta"] = lstKlijenti.SelectedValue;
        Session["ime_i_prezime"] = lstKlijenti.SelectedItem.ToString();

        Response.Redirect("Novi karton.aspx?id_klijenta=" + lstKlijenti.SelectedValue);
    }
}

