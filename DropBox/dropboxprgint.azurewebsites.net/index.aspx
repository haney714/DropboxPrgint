<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="DropBox.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>

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
}

.content{
	width:270px;
	height:auto;
	margin-top:180px;
    border-radius:10px;
	padding:20px;
	color:#999;
	-moz-box-shadow: 0 0 0px #333333; -webkit-box-shadow: 0 0 5px #333333; box-shadow: 0 0 5px #333333;
}

</style>
</head>

<body>
    
 <center>
<div class="content">
     Login | <a href="registration.aspx">Register</a>
  <form id="login_form" runat="server" style="padding-top:20px;">
  <table width="50%" border="0" cellpadding="4" cellspacing="0">
    <tr> 
      <td width="22%">Username</td>
      <td width="78%"><asp:TextBox ID="Username" runat="server"></asp:TextBox></td>
    </tr>
      <tr>
          <td colspan="2">
              <asp:RequiredFieldValidator ID="username_validator" runat="server" ControlToValidate="Username" ErrorMessage="Username is Required"></asp:RequiredFieldValidator>
          </td>
      </tr>
    <tr> 
      <td>Password</td>
      <td>
          <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
      <tr>
          <td colspan="2"></td>
      </tr>
    <tr> 
      <td colspan="2">
          <asp:Button ID="Submit_btn" runat="server" OnClick="Submit_btn_Click" Text="Submit" />
        </td>
    </tr>
    <tr>
      <td colspan="2"><a href="">Forgot Password?</a></td>
      </tr>
  </table>
</form>
</div>

</center>
</body>
</html>


