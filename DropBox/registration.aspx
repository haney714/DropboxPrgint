<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="DropBox.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>

<style type="text/css">
a:link {
	color: #999;
}
a:visited {
	color: #999;
}
a:hover {
	color: #999;
}
a:active {
	color: #999;
}
a{text-decoration:none;}
body 
{
	background: #1d1d1d;
	font-family: "Lucida Grande", Verdana, sans-serif;
	color:#999;
    font-size:smaller;
}

.content{
     position: fixed;
      top: 50%;
     left: 50%;
    transform: translate(-50%, -50%);
	border-radius:10px;
	padding:20px;
	-moz-box-shadow: 0 0 0px #333333; -webkit-box-shadow: 0 0 5px #333333; box-shadow: 0 0 5px #333333;
}

</style>
</head>

<body>
  
<div class="content">
   <a href="index.aspx">Login</a> | Register

<form id="form1" runat="server">
  <table cellpadding="4">
    <tr> 
      <td  align="left" valign="top">First Name :</td>
      <td><asp:TextBox ID="first_name" runat="server"></asp:TextBox></td>
      <td>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First Name Required" ControlToValidate="first_name" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr> 
      <td align="left" valign="top">Last Name :</td>
      <td><asp:TextBox ID="last_name" runat="server"></asp:TextBox></td>
      <td>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="last_name" ErrorMessage="Last Name Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr> 
      <td align="left" valign="top">Email Address :</td>
      <td><asp:TextBox ID="email_address" runat="server" TextMode="Email"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="email_address" ErrorMessage="Email is Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr> 
      <td align="left" valign="top">Desired Username:</td>
      <td><asp:TextBox ID="username" runat="server"></asp:TextBox></td>
      <td>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="username" ErrorMessage="Username is Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
    	<td align="left" valign="top">Password :</td>
        <td><asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="password" ErrorMessage="Password is Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
      <tr>
    	<td align="left" valign="top">Confirm Password:</td>
        <td><asp:TextBox ID="confirm_password" runat="server" TextMode="Password"></asp:TextBox></td>
        <td>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="confirm_password" ErrorMessage="Different Password"></asp:CompareValidator>
          </td>
    </tr>
    <tr> 
      <td colspan="3"><center>
          <asp:Button ID="join_btn" runat="server" Text="Register" OnClick="Join_btn_click"/>
          </center></td>
    </tr>
    <tr>
      <td colspan="3"><a href="forget_password.aspx">Forgot Password?</a></td>
    </tr>
  </table>
</form>
</div>
</body>
</html>
