<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidationDemo.aspx.cs" Inherits="ValidationControl.ValidationDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label>
            <asp:TextBox ID="txt1" runat="server"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter Value" ControlToValidate="txt1"></asp:RequiredFieldValidator>
           <br />
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="txtpass" runat="server"></asp:TextBox>
                <br />
            <asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label>
            <asp:TextBox ID="txtConPass" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Mismatch" ControlToValidate="txtConPass" ControlToCompare="txtpass"></asp:CompareValidator>
            <br />
         <asp:Label ID="Label4" runat="server" Text="Mobile Number"></asp:Label>
            <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="it should contain only 10 digit" ControlToValidate="txtMobile" MaximumValue="10"></asp:RangeValidator>
           <br /> <asp:Label ID="Label5" runat="server" Text="Email Id"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
        
            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="CustomValidator" ClientValidationFunction="validateme" ControlToValidate="txtpass" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
            <asp:Button ID="Button1" runat="server" Text="Button" />
        </div>
    </form>
</body>
</html>
