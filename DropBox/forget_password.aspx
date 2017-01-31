<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forget_password.aspx.cs" Inherits="DropBox.forget_password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forget Password</title>

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
  <form id="forgetpass_form" runat="server" style="padding-top:20px;">
  <table  border="0" cellpadding="5" cellspacing="0">
    <tr> 
      <td style="font-size:smaller">Email Address </td>
      <td>
          <asp:TextBox ID="email_address" runat="server" TextMode="Email"></asp:TextBox>
        </td>
        <td>
              <asp:RequiredFieldValidator ID="email_validator" runat="server" ControlToValidate="email_address" ErrorMessage="Email Address is Required" Font-Size="Smaller" ForeColor="#CC0000"></asp:RequiredFieldValidator>
          </td>
    </tr>
    <tr> 
      <td colspan="3">
          <center><asp:Button ID="Submit_btn" runat="server" OnClick="Submit_btn_Click" Text="Submit" Width="94px" /></center>
        </td>
    </tr>
  </table>
</form>
</div>

</body>
</html>
