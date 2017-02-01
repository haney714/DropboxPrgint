using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DropBox
{
    public partial class forget_password : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string email_add = email_address.Text;
        }

        protected void Submit_btn_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection cn = new SqlConnection("Connection String");
                cn.Open();
                cn.ChangeDatabase("dBName");

                String str = "select UserName from Registration where Email='"+email_address.Text+ "'";
                SqlCommand cmd = new SqlCommand(str, cn);
                cmd.ExecuteNonQuery();

                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Session["uname"] = dr.GetString(0);
                    //Response.Write(dr.GetString(0));
                    Response.Redirect("reset_password.aspx");
                }
                else
                {
                    Response.Write("<script language=javascript>alert('There is no such Email Address Exists!!');</script>");
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