<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Pregled klijenata.aspx.cs" Inherits="Default2" Title="Pregled klijenata" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style5">
        <tr>
            <td>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" AllowSorting="True" Height="106px" Width="955px" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" EnableModelValidation="True">
        <Columns>
            <asp:BoundField DataField="datum_testiranja" HeaderText="datum_testiranja" 
                SortExpression="datum_testiranja" />
            <asp:BoundField DataField="ime_i_prezime" HeaderText="ime_i_prezime" 
                SortExpression="ime_i_prezime" />
            <asp:BoundField DataField="mesto" HeaderText="mesto" 
                SortExpression="mesto" />
            <asp:BoundField DataField="telefon" HeaderText="telefon" 
                SortExpression="telefon" />
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
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:BicomConnectionString %>" 
        
            
            SelectCommand="SELECT [datum_testiranja], [ime_i_prezime], [mesto], [telefon], [starost], [visina_tezina], [intolerancija_na], [napomena] FROM [Klijent]" OnSelecting="SqlDataSource1_Selecting">
    </asp:SqlDataSource>
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
<p>
</p>
<p>
</p>
<p>
    <br />
</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

