<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reset_password.aspx.cs" Inherits="DropBox.reset_password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reset Password</title>

<style type="text/css">
a:link {
	color: #D6D7D6;
}
a:visited {
	color: #D6D7D6;
}
a:hover {
	color: #D6D7D6;
}
a:active {
	color: #D6D7D6;
}

a{text-decoration:none;}
body 
{
	margin: 0;
	padding: 0;
	background: #1d1d1d;
	font-family: "Lucida Grande", Verdana, sans-serif;
	overflow:hidden;
	color:#999;
    font-size:smaller;
}

.content{
     position: fixed;
      top: 50%;
     left: 50%;
    transform: translate(-50%, -50%);
	width:auto;
	height:auto;
    border-radius:10px;
	padding:20px;
	color:#999;
	-moz-box-shadow: 0 0 0px #333333; -webkit-box-shadow: 0 0 5px #333333; box-shadow: 0 0 5px #333333;
}

</style>

</head>
<body>
    <div class="content">
     <a href="index.aspx">Login</a> | <a href="registration.aspx">Register</a>
<form id="resetpass_form" runat="server" style="padding-top:20px;">
  <table  border="0" cellpadding="5" cellspacing="0">
    <tr> 
      <td style="font-size:smaller">New Password </td>
      <td><asp:TextBox ID="pass1" runat="server" TextMode="Password"></asp:TextBox></td>
        <td><asp:RequiredFieldValidator ID="pass1_validator" runat="server" ControlToValidate="pass1" ErrorMessage="Enter password" Font-Size="Smaller" ForeColor="#CC0000"></asp:RequiredFieldValidator></td>
    </tr>
      <tr> 
      <td style="font-size:smaller">Confirm Password </td>
      <td><asp:TextBox ID="confirm_pass" runat="server" TextMode="Password"></asp:TextBox></td>
        <td>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pass1" ControlToValidate="confirm_pass" ErrorMessage="Passwords Not Matching" Font-Size="Smaller" ForeColor="#CC0000"></asp:CompareValidator>
            <asp:RequiredFieldValidator ID="confirm_validator" runat="server" ControlToValidate="confirm_pass" ErrorMessage="Confirm Password" Font-Size="Smaller" ForeColor="#CC0000"></asp:RequiredFieldValidator></td>
    </tr>
    <tr> 
      <td colspan="3">
          <center><asp:Button ID="Submit_btn" runat="server" OnClick="Reset_btn_Click" Text="Reset" Width="94px" /></center>
        </td>
    </tr>
  </table>
</form>
</div>
</body>
</html>
