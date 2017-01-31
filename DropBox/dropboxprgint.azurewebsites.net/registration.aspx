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
	margin: 0;
	padding: 0;
	background: #1d1d1d;
	font-family: "Lucida Grande", Verdana, sans-serif;
	overflow:hidden;
	color:#999;
}

.content{
	width:400px;
	height:auto;
	margin:180px 0px 0px 30%;
    border-radius:10px;
	padding:20px;
	-moz-box-shadow: 0 0 0px #333333; -webkit-box-shadow: 0 0 5px #333333; box-shadow: 0 0 5px #333333;
	position:fixed;
}

    .auto-style1 {
        height: 30px;
    }

</style>
</head>

<body>
  
<div class="content">
   <a href="index.aspx">Login</a> | Register

<form id="form1" runat="server" style="padding:20px;">
  <table width="100%" border="0" cellpadding="4" cellspacing="0">
    <tr> 
      <td width="90%" align="left" valign="top">First Name :</td>
      <td width="76%">
          <asp:TextBox ID="first_name" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr> 
      <td align="left" valign="top">Last Name :</td>
      <td>
          <asp:TextBox ID="last_name" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr> 
      <td align="left" valign="top">Email Address :</td>
      <td>
          <asp:TextBox ID="email_address" runat="server" TextMode="Email"></asp:TextBox>
        </td>
    </tr>
    <tr> 
      <td align="left" valign="top" class="auto-style1">Desired Username:</td>
      <td class="auto-style1">
          <asp:TextBox ID="username" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
    	<td align="left" valign="top">Password :</td>
        <td>
            <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
      <tr>
    	<td align="left" valign="top">Confirm Password :</td>
        <td>
            <asp:TextBox ID="confirm_password" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr> 
      <td colspan="2"><center>
          <asp:Button ID="join_btn" runat="server" Text="Register" OnClick="Join_btn_click"/>
          </center></td>
    </tr>
    <tr>
      <td colspan="2"><a href="">Forgot Password?</a></td>
    </tr>
  </table>
</form>

</body>
</html>
