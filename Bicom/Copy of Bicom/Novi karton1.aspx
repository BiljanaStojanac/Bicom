<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Novi karton1.aspx.cs" Inherits="_Default" Title="Novi karton" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style12
    {
        width: 227px;
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
        width: 227px;
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
        .style14
        {
            color: #FFFFFF;
            font-weight: bold;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p class="style14">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; T R E T M A N I</p>
<table class="style3">
    <tr>
        <td class="style12">
            <asp:Label ID="lblPojam" runat="server" 
                Text="Unesite ime klijenta ili samo deo imena"></asp:Label>
            :</td>
        <td class="style13">
            <asp:TextBox ID="txtPojam" runat="server"></asp:TextBox>
        </td>
        <td class="style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style11">
        </td>
        <td class="style8" align="justify">
            <asp:Button ID="btnPrikazi" runat="server" onclick="btnPrikazi_Click1" 
                Text="Prikaži" />
        </td>
        <td class="style9">
        </td>
    </tr>
    <tr>
        <td class="style12">
            &nbsp;</td>
        <td class="style13">
            <br />
            <asp:Label ID="lblStatic" runat="server" Text="Uneli ste pojam:"></asp:Label>
&nbsp;<asp:Label ID="lblUnos" runat="server"></asp:Label>
        </td>
        <td class="style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style12">
            <asp:Label ID="lblUputstvo" runat="server" 
                Text="Klikom na klijenta iz liste mozete da vidite detalje o tom klijentu:"></asp:Label>
        </td>
        <td class="style13">
            <asp:ListBox ID="lstKlijenti" runat="server" AutoPostBack="True" Height="133px" 
                onselectedindexchanged="lstKlijenti_SelectedIndexChanged1" Width="202px">
            </asp:ListBox>
        </td>
        <td class="style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style12">
            &nbsp;</td>
        <td class="style13">
            &nbsp;</td>
        <td class="style6">
            <asp:Label ID="lblPoruka" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style12">
            &nbsp;</td>
        <td class="style13">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style12">
            &nbsp;</td>
        <td class="style13">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style12">
            &nbsp;</td>
        <td class="style13">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style12">
            &nbsp;</td>
        <td class="style13">
            &nbsp;</td>
        <td class="style6">
            &nbsp;</td>
    </tr>
</table>
<p>
    &nbsp;</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

