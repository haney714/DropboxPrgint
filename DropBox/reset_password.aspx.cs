using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DropBox
{
    public partial class reset_password : System.Web.UI.Page
    {
        string session_uname = null;
        string password1,password2;

        protected void Page_Load(object sender, EventArgs e)
        {
             password1 = pass1.Text;
             password2 = confirm_pass.Text;
            session_uname = Session["uname"].ToString();

            if (session_uname != null)
            {
            }
            else
            {
                Session.Abandon();
                Response.Redirect("index.aspx");
            }
        }

        protected void Reset_btn_Click(object sender, EventArgs e)
        {
            if (password1==password2 ) {
                try
                {
                    SqlConnection cn = new SqlConnection("Connection String");
                    cn.Open();
                    cn.ChangeDatabase("dBName");

                    String str = "update Registration SET Password='"+password1+"' where UserName='" +session_uname+"'";
                    SqlCommand cmd = new SqlCommand(str, cn);
                    if (cmd.ExecuteNonQuery()>0)
                    {
                        Response.Redirect("index.aspx");
                    }
                    else
                    {
                        Response.Write("<script language=javascript>alert('Password is not Reseted!!');</script>");
                    }
                    cn.Close();
                }

                catch
                {
                    Response.Write("<script language=javascript>alert('Something Went Wrong!!');</script>");
                }
            }
        }
    }
}