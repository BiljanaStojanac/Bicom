<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Izmena kartona1.aspx.cs" Inherits="_Default" Title="Izmena kartona" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style17
        {
            color: #FFFFFF;
            font-weight: bold;
        }
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p align="left" class="style17" style="font-size: x-large; font-style: normal">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        IZMENA KARTONA</p>
    <table class="style3">
        <tr>
            <td class="style12">
                <asp:Label ID="lblPojam" runat="server" 
                Text="Unesite ime klijenta ili samo deo imena"></asp:Label>
            :</td>
            <td class="style13">
                <asp:TextBox ID="txtPojam" runat="server" ontextchanged="txtPojam_TextChanged"></asp:TextBox>
            </td>
            <td class="style6">
            &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
            </td>
            <td class="style8" align="justify">
                <asp:Button ID="btnPrikazi" runat="server" onclick="btnPrikazi_Click" 
                Text="Prikazi" Width="155px" />
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
&nbsp;<asp:Label ID="lblUnos" runat="server" Visible="False"></asp:Label>
            </td>
            <td class="style6">
                <asp:Label ID="lblPoruka" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style12">
                <asp:Label ID="lblUputstvo" runat="server" 
                Text="Klikom na klijenta iz liste mozete da vidite detalje o tom klijentu:"></asp:Label>
            </td>
            <td class="style13">
                <asp:ListBox ID="lstKlijenti" runat="server" AutoPostBack="True" 
                onselectedindexchanged="lstKlijenti_SelectedIndexChanged" Width="229px" 
                Height="183px"></asp:ListBox>
            </td>
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

