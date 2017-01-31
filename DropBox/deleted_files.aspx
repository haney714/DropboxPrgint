<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deleted_files.aspx.cs" Inherits="DropBox.deleted_files" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Deleted Files</title>

<style>
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
	font-family: "Lucida Grande", Verdana, sans-serif;
	color:#999;
    background: #1d1d1d;
}

#main_container {
      position: fixed;
      top: 30%;
     left: 50%;
     width:800px;
    transform: translate(-50%, -50%);
      }

.content1{  
	width:800px;
	height:auto;
    padding:20px;
    border-radius:10px;
    font-size:smaller;
    text-align:right;
	-moz-box-shadow: 0 0 0px #333333; -webkit-box-shadow: 0 0 5px #333333; box-shadow: 0 0 10px #333333;
}

.content12{  
    padding:20px;
    font-size:medium;
    text-align:left;
}

.content2{
    width:auto;
	height:auto;
    border-radius:10px;
	padding:20px;
    float:left;
    margin-top:30px;
    font-size:smaller;
	-moz-box-shadow: 0 0 0px #333333; -webkit-box-shadow: 0 0 5px #333333; box-shadow: 0 0 10px #333333;
 }
.content3{  
	width:73%;
	height:auto;
    border-radius:10px;
	padding:20px;
    margin-top:30px;
    margin-left:20px;
    float:right;
	-moz-box-shadow: 0 0 0px #333333; -webkit-box-shadow: 0 0 5px #333333; box-shadow: 0 0 10px #333333;
}

.mydatagrid
{
   border:none; 
}
.header
{
	font-family: Arial;
	height: 25px;
	text-align: center;
	font-size: 16px;
}

.rows
{   
    padding:5px;
	font-family: Arial;
	font-size: 14px;
	color: white;
	text-align: left;
    height:30px;
}

.mydatagrid td
{
	padding: 10px;
   border:none;
   
}
.mydatagrid th
{
    border:none;
	padding: 10px;
}
</style>
</head>

<body>

    <div id="main_container">
        <div class="content12"> Deleted Files</div>
  <div class="content1">
         <a href="logout.aspx" style="margin-left:10px;">Log Out</a>
  </div>
  
  <div class="content2">
      <table>
          <tr> <td><a href="upload_files.aspx">Upload Files</a> </td></tr>
          <tr> <td><a href="upload_item.aspx">Files/</a> </td></tr>
          <tr><td> <a href="#">Deleted Files</a> </td></tr>
      </table>
   </div>

    <div class="content3">

    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" EmptyDataText = "No files Deleted Yet" CssClass="mydatagrid" RowStyle-CssClass="rows" HeaderStyle-CssClass="header">
        <Columns>
            <asp:BoundField DataField="Text" HeaderText="File Name" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="lnkRestore" Text = "Restore" CommandArgument = '<%# Eval("Value") %>' runat="server" OnClick="RestoreFiles"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID = "lnkDelete" Text = "Delete" CommandArgument = '<%# Eval("Value") %>' runat = "server" OnClick="DeleteFiles" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    </form>
        </div>
</div>
</body>
</html>
