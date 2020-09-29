<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DovizXml.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="/Bootstrap/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
    <script src="/Bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>T.C. Merkez Bankası</h2>
            <p>Güncel Döviz Kurları</p>
            <table class="table">
                <thead>
                    <tr>
                        <th>Dolar</th>
                        <th>Euro</th>
                        <th>Japon Yeni</th>
                        <th>Son Güncellenme Tarihi</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="table-primary">
                        <td>
                            <asp:Label ID="lblDolar" runat="server" Text="Label"></asp:Label></td>
                        <td>
                            <asp:Label ID="lblEuro" runat="server" Text="Label"></asp:Label></td>
                        <td>
                            <asp:Label ID="lblYen" runat="server" Text="Label"></asp:Label></td>
                        <td>
                            <asp:Label ID="lblTarih" runat="server" Text="Tarih"></asp:Label>
                        </td>

                    </tr>
                </tbody>
            </table>
            <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-success" OnClick="Button1_Click" />
        </div>

    </form>
</body>
</html>
