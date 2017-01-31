<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="DropBox.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>

<style type="text/css">
    img {
    margin-left:30px;
    }
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
     Login | <a href="registration.aspx">Register</a>
  <form id="login_form" runat="server" style="padding-top:20px;">
  <table  border="0" cellpadding="4" cellspacing="0">
    <tr> 
      <td style="font-size:smaller">Username </td>
      <td><asp:TextBox ID="Username" runat="server"></asp:TextBox></td>
        <td><asp:RequiredFieldValidator ID="username_validator" runat="server" ControlToValidate="Username" ErrorMessage="Username is Required" Font-Size="Smaller" ForeColor="#CC0000"></asp:RequiredFieldValidator>
  </td>
    </tr>
     
    <tr> 
      <td style="font-size:smaller">Password</td>
      <td><asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox></td>
        <td>
              <asp:RequiredFieldValidator ID="password_validation" runat="server" ControlToValidate="Password" ErrorMessage="Password is Required" Font-Size="Smaller" ForeColor="#CC0000"></asp:RequiredFieldValidator>
          </td>
    </tr>
      <tr>
          
      </tr>
    <tr> 
      <td colspan="3">
          <center><asp:Button ID="Submit_btn" runat="server" OnClick="Submit_btn_Click" Text="Submit" Width="94px" /></center>
        </td>
    </tr>
    <tr>
      <td colspaForgot Password?</a></td>
      </tr>
  </table>
</form>
</div>

    <p>
        <asp:Image ID="Image1" runat="server" Height="137px" ImageUrl="http://www.minterest.org/wp-content/uploads/2015/05/Dropbox-900x344.png" Width="400px" />
    </p>

</body>
</html>


