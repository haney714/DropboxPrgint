using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DropBox
{
    public partial class registration : System.Web.UI.Page
    {
        String f_name;
        String l_name;
        String Username1;
        String Password1;
        String email;
        protected void Page_Load(object sender, EventArgs e)
        {
             f_name = first_name.Text;
             l_name = last_name.Text;
             Username1 = username.Text;
             Password1 = password.Text;
             email = email_address.Text;
        }

        protected void Join_btn_click(object sender, EventArgs e)
        {
            SqlConnection db_con = new SqlConnection("Connection String");

            try
            {
                db_con.Open();
                db_con.ChangeDatabase("dBName");

                string sqlquery = "insert into Registration values('" + f_name + "','" + l_name + "','" + Username1 + "','" + Password1 + "','" + "null" + "','" + 6093340466 + "','" + email + "')";
                SqlCommand cmd = new SqlCommand(sqlquery, db_con);
                cmd.ExecuteNonQuery();
                Session["uname"] = username.Text;

                string dir_path = Server.MapPath("~/storage/") + Username1;
                string dir_files = Server.MapPath("~/storage/"+Username1+"/files");
                string dir_delete = Server.MapPath("~/storage/"+Username1 +"/delete") ;
                if (!Directory.Exists(dir_path) && !Directory.Exists(dir_files) && !Directory.Exists(dir_delete))
                {
                    Directory.CreateDirectory(dir_path);
                    Directory.CreateDirectory(dir_files);
                    Directory.CreateDirectory(dir_delete);
                    // ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('folder created');", true);
                    //Response.Write("<script language=javascript>alert('Folder Created!!');</script>");
                    Response.Redirect("index.aspx");
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('folder already exists');", true);
                }
               
                db_con.Close();
            }
            catch
            {
                //regmsg.Text = "<script><alert>Connection Error</alert></script>";
                Response.Write("<script language=javascript>alert('Something Went Wrong!!');</script>");
            }
            /*
            string dir_path = Server.MapPath("~/mihir007/") + Username1;
            if (!Directory.Exists(dir_path))
            {
                Directory.CreateDirectory(dir_path);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('folder created');", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('folder already exists');", true);
            }*/
        }
    }
}