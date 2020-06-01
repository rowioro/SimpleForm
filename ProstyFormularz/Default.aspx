<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProstyFormularz.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
        }
        .auto-style3 {
            width: 212px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Imie</td>
                    <td>
                        <asp:TextBox ID="TextBoxImie" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxImie" ErrorMessage="Podaj imie">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxImie" ErrorMessage="Podaj wlasciwe imie" ValidationExpression="^[a-zA-Z]{1,}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Nazwisko</td>
                    <td>
                        <asp:TextBox ID="TextBoxNazwisko" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxNazwisko" ErrorMessage="Podaj nazwisko">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxNazwisko" ErrorMessage="Podaj wlasciwe nazwisko" ValidationExpression="^[a-zA-Z]{1,}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Wojewodztwo</td>
                    <td>
                        <asp:DropDownList ID="DropDownListWojewodztwo" runat="server" Height="16px" Width="126px">
                            <asp:ListItem>Slaskie</asp:ListItem>
                            <asp:ListItem>Malopolskie</asp:ListItem>
                            <asp:ListItem>Opolskie</asp:ListItem>
                            <asp:ListItem>Dolnoslaskie</asp:ListItem>
                            <asp:ListItem>Mazowieckie</asp:ListItem>
                            <asp:ListItem>Pomorskie</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Miasto</td>
                    <td>
                        <asp:TextBox ID="TextBoxMiasto" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxMiasto" ErrorMessage="Podaj miasto">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBoxMiasto" ErrorMessage="Podaj wlasciwe miasto" ValidationExpression="^[a-zA-Z]{1,}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Ulica</td>
                    <td>
                        <asp:TextBox ID="TextBoxUlica" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxUlica" ErrorMessage="Podaj ulice">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBoxUlica" ErrorMessage="Podaj wlasciwa ulice" ValidationExpression="^[a-zA-Z]{1,}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Nr domu</td>
                    <td>
                        <asp:TextBox ID="TextBoxDom" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBoxDom" ErrorMessage="Podaj nr domu">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="TextBoxDom" ErrorMessage="Podaj wlasciwy nr" ValidationExpression="[0-9]{1,}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">E-mail</td>
                    <td>
                        <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Podaj Email">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Podaj wlasciwy email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Kod pocztowy</td>
                    <td>
                        <asp:TextBox ID="TextBoxKod" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxKod" ErrorMessage="Podaj kod pocztowy">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBoxKod" ErrorMessage="Podaj kod w formacie xx-xxx" ValidationExpression="[0-9]{2}-[0-9]{3}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="ButtonWyslij" runat="server" OnClick="ButtonWyslij_Click1" Text="Send" Width="233px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <br />
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">
                        <asp:Label ID="LabelOsoba" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">
                        <asp:Label ID="LabelAdres" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">
                        <asp:Label ID="LabelMail" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
