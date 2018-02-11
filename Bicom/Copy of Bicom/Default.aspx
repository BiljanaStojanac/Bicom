<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style5
    {
        width: 157px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        <br />
        <br />
        <asp:Label ID="lblKraj" runat="server" Font-Bold="True" Font-Italic="True" 
            Font-Size="Larger"></asp:Label>
        <table class="style3">
            <tr>
                <td class="style4">
                    Odabrati klijenta:</td>
                <td class="style5">
                    <asp:DropDownList ID="ddlImePrezime" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="ime_i_prezime" 
                        DataValueField="id_klijenta" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:BicomConnectionString3 %>" 
                        SelectCommand="SELECT id_klijenta, ime_i_prezime FROM Klijent">
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Ime:</td>
                <td class="style5">
                    <asp:TextBox ID="txtIme" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtIDklijenta" runat="server" Visible="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Prezime:</td>
                <td class="style5">
                    <asp:TextBox ID="txtPrezime" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    Adresa:</td>
                <td class="style5">
                    <asp:TextBox ID="txtAdresa" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    Mesto :</td>
                <td class="style5">
                    <asp:TextBox ID="txtMesto" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    Telefon:</td>
                <td class="style5">
                    <asp:TextBox ID="txtTelefon" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    Mail:</td>
                <td class="style5">
                    <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" 
                        onclick="Button1_Click" Text="Izmeni" Width="134px" />
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Visina/tezina:</td>
                <td class="style5">
                    <asp:TextBox ID="txtVt" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    Datum rodjenja:</td>
                <td class="style5">
                    <asp:TextBox ID="txtDatRodj" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    Intolerancija na:</td>
                <td class="style5">
                    <asp:TextBox ID="txtIntolerancija" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

