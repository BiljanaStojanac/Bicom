<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Izmena kartona.aspx.cs" Inherits="Izmena_kartona" Title="Izmena kartona" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style6
        {
        width: 697px;
    }
        .style5
        {
            margin-right: 63px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
    <asp:Label ID="lblIdKlijenta" runat="server" Visible="False"></asp:Label>
</p>
    <p>
    <table class="style3">
        <tr>
            <td class="style6">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id_klijenta" DataSourceID="SqlDataSource1" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" Width="670px" 
                    CssClass="style5">
        <Columns>
            <asp:CommandField SelectText="Detaljnije" ShowSelectButton="True" />
            <asp:BoundField DataField="id_klijenta" HeaderText="id_klijenta" 
                InsertVisible="False" ReadOnly="True" SortExpression="id_klijenta" />
            <asp:BoundField DataField="ime_i_prezime" HeaderText="ime_i_prezime" 
                SortExpression="ime_i_prezime" />
            <asp:BoundField DataField="datum_testiranja" HeaderText="datum_testiranja" 
                SortExpression="datum_testiranja" />
            <asp:BoundField DataField="telefon" HeaderText="telefon" 
                SortExpression="telefon" />
            <asp:BoundField DataField="mesto" HeaderText="mesto" 
                SortExpression="mesto" />
            <asp:BoundField DataField="starost" HeaderText="starost" 
                SortExpression="starost" />
            <asp:BoundField DataField="visina_tezina" HeaderText="visina_tezina" 
                SortExpression="visina_tezina" />
            <asp:BoundField DataField="intolerancija_na" HeaderText="intolerancija_na" 
                SortExpression="intolerancija_na" />
            <asp:BoundField DataField="napomena" HeaderText="napomena" 
                SortExpression="napomena" />
        </Columns>
    </asp:GridView>
                <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource2" AllowSorting="True" BorderStyle="None" 
                    DataKeyNames="broj_kartona" 
                    onselectedindexchanged="GridView2_SelectedIndexChanged" Width="850px">
        <Columns>
            <asp:BoundField DataField="broj_kartona" HeaderText="broj_kartona" 
                InsertVisible="False" ReadOnly="True" SortExpression="broj_kartona" />
            <asp:BoundField DataField="datum" HeaderText="datum" 
                SortExpression="datum" />
            <asp:BoundField DataField="tezina" HeaderText="tezina" 
                SortExpression="tezina" />
            <asp:BoundField DataField="opis" HeaderText="opis" SortExpression="opis" />
            <asp:CommandField CancelText="Odustani" EditText="Izmeni" ShowEditButton="True" 
                UpdateText="Azuriraj" />
        </Columns>
    </asp:GridView>
            &nbsp;
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                </td>
            <td>
                </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:BicomConnectionString10 %>" 
        
                    SelectCommand="SELECT  [broj_kartona],[datum],[broj_tretmana],[tezina], [opis] FROM [Karton] WHERE ([id_klijenta] = @id_klijenta)" 
                    
                    UpdateCommand="Update Karton set datum = @datum, opis = @opis,tezina = @tezina where broj_kartona = @broj_kartona">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="id_klijenta" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="datum" />
            <asp:Parameter Name="opis" />
            <asp:Parameter Name="tezina" />
            <asp:Parameter Name="broj_kartona" />
        </UpdateParameters>
    </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:BicomConnectionString9 %>" 
        
        SelectCommand="SELECT * FROM [Klijent] WHERE ([id_klijenta] = @id_klijenta)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lblIdKlijenta" Name="id_klijenta" 
                PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
    <p>
        <asp:Label ID="lblIdKlijenta0" runat="server" Visible="False"></asp:Label>
</p>
<p>
</p>
<p>
</p>
<p>
    <br />
</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

