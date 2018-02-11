<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Izmena klijenata.aspx.cs" Inherits="Default2" Title="Izmena klijenata" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .style17
        {
            color: #FFFFFF;
            font-weight: bold;
        }
    .style13
    {
        width: 161px;
    }
        .style6
    {
        width: 172px;
    }
    .style11
    {
        width: 118px;
        height: 28px;
    }
    .style8
    {
        width: 161px;
        height: 28px;
    }
    .style9
    {
        width: 172px;
        height: 28px;
    }
        .style18
        {
            width: 118px;
        }
        .style19
        {
        width: 97px;
    }
        .style20
        {
        width: 97px;
        height: 28px;
    }
    .style21
    {
        width: 118px;
        height: 32px;
    }
    .style22
    {
        width: 161px;
        height: 32px;
    }
    .style23
    {
        width: 97px;
        height: 32px;
    }
    .style24
    {
        width: 67px;
    }
    .style25
    {
        width: 67px;
        height: 28px;
    }
        .style26
        {
            font-weight: bold;
            font-style: italic;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style3">
        <tr>
            <td class="style18">
                <asp:Label ID="lblPojam" runat="server" 
                Text="Unesite ime klijenta ili samo deo imena"></asp:Label>
            </td>
            <td class="style13">
                <asp:TextBox ID="txtPojam" runat="server"></asp:TextBox>
            </td>
            <td class="style19">
                <asp:Button ID="btnPrikazi" runat="server" onclick="btnPrikazi_Click" 
                    Text="Prikazi" />
            </td>
            <td class="style6">
                <asp:ListBox ID="lstKlijenti" runat="server" AutoPostBack="True" Height="130px" 
                    onselectedindexchanged="lstKlijenti_SelectedIndexChanged" Width="222px">
                </asp:ListBox>
            </td>
            <td class="style24">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                Klijent:</td>
            <td class="style8" align="justify">
                <asp:Label ID="lblIme" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
            <td class="style20">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style25">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                Datum testiranja:</td>
            <td class="style8" align="justify">
                <asp:TextBox ID="txtDatTest" runat="server"></asp:TextBox>
            </td>
            <td class="style20">
                Intolerancija na:</td>
            <td class="style6" rowspan="8">
                <asp:TextBox ID="txtIntolerancija" runat="server" Height="197px" 
                    TextMode="MultiLine" Width="222px"></asp:TextBox>
            </td>
            <td class="style25">
                Napomena:</td>
            <td class="style6" rowspan="8">
                <asp:TextBox ID="txtNapomena" runat="server" Height="197px" 
                    TextMode="MultiLine" Width="222px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style18">
                Ime i prezime:</td>
            <td class="style13">
                <asp:TextBox ID="txtIme" runat="server"></asp:TextBox>
            </td>
            <td class="style19">
                &nbsp;</td>
            <td class="style24" rowspan="7">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style18">
                Mesto:</td>
            <td class="style13">
                <asp:TextBox ID="txtMesto" runat="server"></asp:TextBox>
            </td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style21">
                Telefon:</td>
            <td class="style22">
                <asp:TextBox ID="txtTelefon" runat="server"></asp:TextBox>
            </td>
            <td class="style23">
                </td>
        </tr>
        <tr>
            <td class="style18">
                Visina/tezina:</td>
            <td class="style13">
                <asp:TextBox ID="txtVt" runat="server"></asp:TextBox>
            </td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style18">
                Starost:</td>
            <td class="style13">
                <asp:TextBox ID="txtStarost" runat="server"></asp:TextBox>
            </td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style18">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style18">
                &nbsp;</td>
            <td class="style13">
                <asp:Button ID="btnIzmeni" runat="server" onclick="btnIzmeni_Click" 
                    Text="Izmeni podatke" Width="108px" Font-Bold="True" />
            </td>
            <td class="style19">
                <asp:Label ID="lblKraj" runat="server" CssClass="style26"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style18">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style24">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style18">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style24">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
        </tr>
    </table>
    <p align="left" class="style17" style="font-size: x-large; font-style: normal">
        &nbsp;</p>
    <p align="left" class="style17" style="font-size: x-large; font-style: normal">
        &nbsp;</p>
    <p align="left" class="style17" style="font-size: x-large; font-style: normal">
        &nbsp;</p>
    <p align="left" class="style17" style="font-size: x-large; font-style: normal">
        &nbsp;</p>
    <p align="left" class="style17" style="font-size: x-large; font-style: normal">
        &nbsp;</p>
    <p align="left" class="style17" style="font-size: x-large; font-style: normal">
        &nbsp;</p>
    <p align="left" class="style17" style="font-size: x-large; font-style: normal">
        &nbsp;</p>
    <p align="left" class="style17" style="font-size: x-large; font-style: normal">
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
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <br />
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

