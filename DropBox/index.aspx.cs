using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DropBox
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!IsPostBack)
            {
                Session.Abandon();
            }
            string username= Username.Text;
            string password = Password.Text;
        }

        protected void Submit_btn_Click(object sender, EventArgs e)
        {
            try
            {
                //Response.Write("Username :"+ Username.Text  + "Password :"+ Password.Text);

                SqlConnection cn = new SqlConnection("Data Source=tcp:haney.database.windows.net,1433;Initial Catalog=dropbox;User ID=haney714@haney;Password=Rudra90337769;");
                cn.Open();
                cn.ChangeDatabase("dropbox");

                String str = "select * from Registration where UserName='"+ Username.Text+"'and Password='"+ Password.Text +"'";
                SqlCommand cmd = new SqlCommand(str, cn);
                cmd.ExecuteNonQuery();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Session["uname"] = Username.Text;

                    Response.Redirect("upload_item.aspx");
                }
                else
                {
                    Response.Write("<script language=javascript>alert('Please Enter Valid UserName and Password');</script>");
                    // Response.Write("<script><alert>Please Enter valid Username and Password</alert></script>");
                }

                cn.Close();

            }

            catch
            {
                //Response.Write("Username and password are incorrect");
                Response.Write("<script language=javascript>alert('Username and Password are Incorrect');</script>");
            }
        }
    }
}