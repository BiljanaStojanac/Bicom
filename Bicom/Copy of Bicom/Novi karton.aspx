<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Novi karton.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Novi karton</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 136px;
        }
        .style3
        {
            width: 204px;
        }
        #TextArea2
        {
            height: 53px;
        }
        .style4
        {
            width: 136px;
            height: 6px;
        }
        .style5
        {
            width: 204px;
            height: 6px;
        }
        .style6
        {
            height: 6px;
        }
        .style7
        {
            width: 204px;
            font-style: normal;
            font-weight: bold;
        }
        .style8
        {
            width: 136px;
            font-weight: normal;
        }
        .style9
        {
            width: 8px;
        }
        .style10
        {
            height: 6px;
            width: 8px;
        }
        .style11
        {
            font-size: large;
        }
        .style12
        {
            font-size: small;
        }
        .style13
        {
            font-weight: bold;
            font-size: larger;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-color: #CCCCFF">
    <br />
    <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b> 
        B&nbsp;&nbsp;&nbsp;&nbsp; i&nbsp;&nbsp;&nbsp;&nbsp; c&nbsp;&nbsp;&nbsp;&nbsp; o&nbsp;&nbsp;&nbsp;&nbsp; 
        m</b></span><br />
    <span lang="en-us">&nbsp;&nbsp;&nbsp; </span>
    <span lang="en-us">&nbsp;&nbsp;&nbsp; </span>
    <span lang="en-us">&nbsp;&nbsp;&nbsp; </span>
    <span lang="en-us">&nbsp;&nbsp;&nbsp; </span>
    <span lang="en-us">&nbsp;&nbsp;&nbsp; </span>
    <table 
        class="style1" style="background-color: #FFFFFF">
        <tr>
            <td class="style2">
                <asp:Label ID="lblIdKlijenta" runat="server" Visible="False"></asp:Label>
            </td>
            <td class="style3">
                &nbsp;</td>
            <td bgcolor="White" rowspan="19">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
                    BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource2" 
                    GridLines="Horizontal">
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <Columns>
                        <asp:BoundField DataField="broj_tretmana" HeaderText="broj_tretmana" 
                            SortExpression="broj_tretmana" />
                        <asp:BoundField DataField="datum" HeaderText="datum" 
                            SortExpression="datum" />
                        <asp:BoundField DataField="tezina" HeaderText="tezina" 
                            SortExpression="tezina" />
                        <asp:BoundField DataField="opis" HeaderText="opis" SortExpression="opis" />
                    </Columns>
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:BicomConnectionString2 %>" 
                    
                    
                    SelectCommand="SELECT  [broj_tretmana], [datum],[tezina], [opis] FROM [Karton] WHERE ([id_klijenta] = @id_klijenta)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblIdKlijenta" Name="id_klijenta" 
                            PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
            </td>
            <td>
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                <span lang="en-us">Ime i prezime:</span></td>
            <td class="style5">
                <asp:Label ID="lblIme" runat="server" CssClass="style13"></asp:Label>
                </td>
            <td class="style6">
                </td>
            <td class="style10">
                </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource3">
                    <Columns>
                        <asp:BoundField DataField="datum_testiranja" HeaderText="datum_testiranja" 
                            SortExpression="datum_testiranja" />
                        <asp:BoundField DataField="visina_tezina" HeaderText="visina_tezina" 
                            SortExpression="visina_tezina" />
                        <asp:BoundField DataField="intolerancija_na" HeaderText="intolerancija_na" 
                            SortExpression="intolerancija_na" />
                    </Columns>
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <span lang="en-us"><span class="style12"><b>format</b> <b>datuma (11.11.2011</b>)</span></span></td>
            <td>
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Datum</td>
            <td class="style3">
                <asp:TextBox ID="txtDatum" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <span lang="en-us">Broj tretmana:</span></td>
            <td class="style3">
                <asp:TextBox ID="txtBrtret" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Tezina</td>
            <td class="style3">
                <asp:TextBox ID="txtTezina" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                <span lang="en-us">Opis:</span></td>
            <td class="style7">
                <asp:TextBox ID="txtOpis" runat="server" Height="116px" 
                    ontextchanged="txtOpis_TextChanged" TextMode="MultiLine" Width="272px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <span lang="en-us"> 
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    Text="Prethodni korak" />
                </span></td>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Sačuvaj podatke" />
            </td>
            <td>
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <br />
                <asp:Label ID="lblInfo" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Large" CssClass="style11"></asp:Label>
                </td>
            <td>
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:TextBox ID="txtSifkli" runat="server" Visible="False"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:BicomConnectionString %>" 
                    SelectCommand="SELECT id_klijenta, ime_i_prezime FROM Klijent">
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label1" runat="server" Text="Ime i prezime" Visible="False"></asp:Label>
            </td>
            <td class="style3">
                <asp:DropDownList ID="ddlKlijent" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="ime_i_prezime" 
                    DataValueField="id_klijenta" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                    Visible="False">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
    </table>
    <div style="background-color: #FFFFFF">
    
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:BicomConnectionString14 %>" 
            SelectCommand="SELECT [datum_testiranja], [visina_tezina], [intolerancija_na] FROM [Klijent] WHERE ([id_klijenta] = @id_klijenta)">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblIdKlijenta" Name="id_klijenta" 
                    PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
