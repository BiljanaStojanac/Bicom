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

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblIdKlijenta.Text = Session["id_klijenta"].ToString();

    }
/**    public void selektUcesnik() //metod koji popunjava detail view dwUcesnik podacima o projektu na kom je angazovan ucesnik selektovan u grid view
    {
        SqlCommand komanda = new SqlCommand();
        komanda.Connection = konekcija;
        komanda.CommandText = "SELECT naz_pro,status_pro, budzet FROM Projekat join UcesnikNaPro on Projekat.sif_pro=UcesnikNaPro.sif_pro WHERE UcesnikNaPro.sif_uce='" + grdUcesnik.SelectedDataKey.Value + "'";


        SqlDataAdapter adapter = new SqlDataAdapter(komanda);
        System.Data.DataSet dsUcesnik = new System.Data.DataSet();
        adapter.Fill(dsUcesnik, "Projekat");

        dwUcesnik.DataSource = dsUcesnik;
        dwUcesnik.DataBind();

    }**/
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       // selektKlijent();
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
