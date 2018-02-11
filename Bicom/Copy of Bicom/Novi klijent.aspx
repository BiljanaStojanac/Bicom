<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Novi klijent.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style5
    {
        height: 16px;
    }
    .style6
    {
        font-weight: bold;
        font-size: small;
    }
        .style7
    {
            height: 16px;
            width: 132px;
        }
    .style8
    {
        height: 16px;
        width: 120px;
    }
    .style9
    {
        width: 120px;
    }
    .style10
    {
        height: 16px;
        width: 114px;
    }
    .style11
    {
        width: 114px;
    }
    .style12
    {
        height: 16px;
        font-weight: bold;
        font-size: x-large;
        color: #FFFFFF;
    }
        .style13
        {
            height: 16px;
            width: 30px;
        }
        .style14
        {
            height: 16px;
            font-weight: bold;
            font-size: x-large;
            color: #FFFFFF;
            width: 30px;
        }
        .style15
        {
            width: 30px;
        }
        .style16
        {
            height: 16px;
            width: 22px;
        }
        .style17
        {
            width: 22px;
        }
        .style18
        {
            height: 16px;
            width: 15px;
        }
        .style19
        {
            width: 15px;
        }
        .style20
        {
            height: 16px;
            width: 82px;
        }
        .style21
        {
            width: 82px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style13">
            &nbsp;</td>
        <td class="style10">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style16">
            &nbsp;</td>
        <td class="style20">
            &nbsp;</td>
        <td class="style18">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style13">
            &nbsp;</td>
        <td class="style10">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style16">
            &nbsp;</td>
        <td class="style20">
            &nbsp;</td>
        <td class="style18">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style14">
            &nbsp;</td>
        <td class="style12" colspan="8">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            UNOS NOVOG KLIJENTA</td>
        <td class="style12">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style13">
            &nbsp;</td>
        <td class="style10">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style16">
            &nbsp;</td>
        <td class="style20">
            &nbsp;</td>
        <td class="style18">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style13">
            &nbsp;</td>
        <td class="style10">
            &nbsp;</td>
        <td class="style5" colspan="3">
            &nbsp;</td>
        <td class="style18">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style13">
            &nbsp;</td>
        <td class="style5" colspan="4">
            <span class="style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            f</span><span lang="en-us" class="style6">ormat datuma (11.11.2011)</span><span 
                class="style6" style="font-size: medium; color: #000000">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <span class="style10" style="font-size: medium; color: #000000">Intolerancija 
            na:</span></td>
        <td class="style18">
            &nbsp;</td>
        <td class="style5">
            Napomena:</td>
        <td class="style5">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style13">
            &nbsp;</td>
        <td class="style10">
            Datum testiranja:</td>
        <td class="style8">
            <asp:TextBox ID="txtDatTest" runat="server" Font-Overline="False"></asp:TextBox>
                                    </td>
        <td class="style16">
            &nbsp;</td>
        <td class="style21" rowspan="6">
            <asp:TextBox ID="txtIntolerancija" runat="server" Height="169px" 
                TextMode="MultiLine" CssClass="style4" Width="185px"></asp:TextBox>
                                    </td>
        <td class="style19" rowspan="6">
            &nbsp;</td>
        <td rowspan="6">
            <asp:TextBox ID="txtNapomena" runat="server" Height="169px" 
                TextMode="MultiLine" CssClass="style4" Width="244px"></asp:TextBox>
                                    </td>
        <td rowspan="6">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
                                    </td>
    </tr>
    <tr>
        <td class="style13">
            &nbsp;</td>
        <td class="style10">
            Ime i prezime:</td>
        <td class="style8">
            <asp:TextBox ID="txtIme" runat="server" EnableTheming="True" 
                Font-Overline="False" Font-Strikeout="False"></asp:TextBox>
                                    </td>
        <td class="style16">
            &nbsp;</td>
        <td rowspan="7">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        <td rowspan="7">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style13">
            &nbsp;</td>
        <td class="style10">
            Mesto:</td>
        <td class="style8">
            <asp:TextBox ID="txtMesto" runat="server"></asp:TextBox>
        </td>
        <td class="style16">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style13">
            &nbsp;</td>
        <td class="style10">
            Telefon:</td>
        <td class="style8">
            <asp:TextBox ID="txtTelefon" runat="server"></asp:TextBox>
        </td>
        <td class="style16">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style13">
            &nbsp;</td>
        <td class="style10">
            Visina/težina:</td>
        <td class="style8">
            <asp:TextBox ID="txtVisinaTezina" runat="server"></asp:TextBox>
        </td>
        <td class="style16">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style13">
            &nbsp;</td>
        <td class="style10">
            Starost:</td>
        <td class="style8">
            <asp:TextBox ID="txtStarost" runat="server"></asp:TextBox>
        </td>
        <td class="style16">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style13">
            &nbsp;</td>
        <td class="style10">
            &nbsp;</td>
        <td class="style5" colspan="3">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span class="style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>
        <td class="style18">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style13">
            &nbsp;</td>
        <td class="style10">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style16">
            &nbsp;</td>
        <td class="style20">
            <asp:Label ID="lblInfo" runat="server" Font-Bold="True" Font-Italic="True" 
                Font-Size="Large" ForeColor="Black"></asp:Label>
            </td>
        <td class="style18">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
    </tr>
    <tr bgcolor="#9966FF">
        <td bgcolor="#CCCCFF" class="style15">
            &nbsp;</td>
        <td bgcolor="#CCCCFF" class="style11">
            &nbsp;</td>
        <td bgcolor="#CCCCFF" class="style9">
            &nbsp;</td>
        <td bgcolor="#CCCCFF" class="style17">
            &nbsp;</td>
        <td bgcolor="#CCCCFF" colspan="5">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        <td bgcolor="#CCCCFF">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style13">
            &nbsp;</td>
        <td class="style10">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style16">
            &nbsp;</td>
        <td class="style20">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                Text="Sačuvaj podatke" Font-Bold="True" Width="189px" />
        </td>
        <td class="style18">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
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
<p>
</p>
<p>
</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

