<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prijava.aspx.cs" Inherits="KovacevicMarija_PIT.prijava" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Prijava</h1>
            Prezime i ime: 
            <asp:TextBox ID="txtIme"
                ValidationGroup="Group1"
                runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="txtImeValidator"
                ErrorMessage="Ime je obavezno!"
                ControlToValidate="txtIme"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                runat="server"></asp:RequiredFieldValidator>
            <br />
            Email: 
            <asp:TextBox ID="txtEmail"
                ValidationGroup="Group1"
                runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="txtEmailValidator"
                ErrorMessage="Email je obavezan!"
                ControlToValidate="txtEmail"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                runat="server"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="txtEmailExpression"
                ErrorMessage="Email nije u ispravnom formatu"
                ControlToValidate="txtEmail"               
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                runat="server"></asp:RegularExpressionValidator>
            <br />
            Potvrdi Email: 
            <asp:TextBox ID="txtConfirm"
                ValidationGroup="Group1"
                runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="txtConfirmValidator"
                ErrorMessage="Obavezno je ponovno ukucati email!"
                ControlToValidate="txtConfirm"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                runat="server"></asp:RequiredFieldValidator>
            <asp:CompareValidator
                ID="PorediLozinkeValidator"
                ErrorMessage="Email se ne poklapa"
                ControlToCompare="txtConfirm"
                ControlToValidate="txtEmail"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                runat="server" ></asp:CompareValidator>
            <br />
            Godina rodjenja: 
            <asp:TextBox ID="txtAge"
                ValidationGroup="Group1"
                runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="txtAgeValidator"
                ErrorMessage="Obavezno je uneti broj godina!"
                ControlToValidate="txtAge"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                runat="server"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="GodineValidator"
                ErrorMessage="Nedozvoljen broj godina!"
                ControlToValidate="txtAge"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                MinimumValue="2003"
                MaximumValue="2010"
                Type="Integer"
                runat="server"></asp:RangeValidator>
            <br />
            Razred:&nbsp;<asp:RadioButtonList ID="radio" runat="server"
                Validationgroup="Group1" >
                <asp:ListItem Text="I" Value="1"></asp:ListItem> 
                <asp:ListItem Text="II" Value="2"></asp:ListItem>
                <asp:ListItem Text="III" Value="3"></asp:ListItem>
                <asp:ListItem Text="IV" Value="4"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="radioValidator"
                ErrorMessage="Obavezno obeleziti razred!"
                ControlToValidate="radio"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                runat="server"> </asp:RequiredFieldValidator>
            <br />
            <asp:Button ID ="btnOtvori"
             Text="Prijava"
                ValidationGroup="Group1"
             runat="server"  
                OnClick="btnclick"/>
            <br />
            <asp:Label ID="lblPoruka"
    runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
