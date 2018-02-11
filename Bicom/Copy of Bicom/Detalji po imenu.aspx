<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Detalji po imenu.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style3
    {
        width: 100%;
    }
    .style4
    {
        width: 594px;
    }
        .style5
        {
            margin-right: 63px;
        }
        .style6
        {
            width: 877px;
        }
        .style7
        {
            width: 877px;
            height: 483px;
        }
        .style8
        {
            height: 483px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
    <table class="style3">
        <tr>
            <td class="style6">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id_klijenta" DataSourceID="SqlDataSource1" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" Width="900px" 
                    CssClass="style5">
        <Columns>
            <asp:CommandField SelectText="Detaljnije" ShowSelectButton="True" />
            <asp:BoundField DataField="id_klijenta" HeaderText="id_klijenta" 
                InsertVisible="False" ReadOnly="True" SortExpression="id_klijenta" />
            <asp:BoundField DataField="datum_testiranja" HeaderText="datum_testiranja" 
                SortExpression="datum_testiranja" />
            <asp:BoundField DataField="ime_i_prezime" HeaderText="ime_i_prezime" 
                SortExpression="ime_i_prezime" />
            <asp:BoundField DataField="telefon" HeaderText="telefon" 
                SortExpression="telefon" />
            <asp:BoundField DataField="mesto" HeaderText="mesto" 
                SortExpression="mesto" />
            <asp:BoundField DataField="visina_tezina" HeaderText="visina_tezina" 
                SortExpression="visina_tezina" />
            <asp:BoundField DataField="intolerancija_na" HeaderText="intolerancija_na" 
                SortExpression="intolerancija_na" />
            <asp:BoundField DataField="napomena" HeaderText="napomena" 
                SortExpression="napomena" />
        </Columns>
    </asp:GridView>
            &nbsp;
            </td>
            <td>
                </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource2" Width="900px">
                    <Columns>
                        <asp:BoundField DataField="broj_tretmana" HeaderText="broj_tretmana" 
                            SortExpression="broj_tretmana" />
                        <asp:BoundField DataField="datum" HeaderText="datum" 
                            SortExpression="datum" />
                        <asp:BoundField DataField="tezina" HeaderText="tezina" 
                            SortExpression="tezina" />
                        <asp:BoundField DataField="opis" HeaderText="opis" SortExpression="opis" />
                    </Columns>
                </asp:GridView>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:BicomConnectionString13 %>" 
                    
                    SelectCommand="SELECT [broj_tretmana],[datum], [tezina], [opis] FROM [Karton] WHERE ([id_klijenta] = @id_klijenta)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView1" Name="id_klijenta" 
                            PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="style8">
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:BicomConnectionString15 %>" 
        
        
                    
                    SelectCommand="SELECT id_klijenta, datum_testiranja, ime_i_prezime, telefon, mesto, visina_tezina, starost, intolerancija_na, napomena FROM Klijent WHERE (id_klijenta = @id_klijenta)">
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
        <asp:Label ID="lblIdKlijenta" runat="server" Visible="False"></asp:Label>
</p>
<p>
</p>
<p>
</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

