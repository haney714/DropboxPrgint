using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DropBox
{
    public partial class upload_files : System.Web.UI.Page
    {
        string session_uname = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
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
            catch
            {
                Response.Redirect("index.aspx");
            }
        }

        protected void UploadFile(object sender, EventArgs e)
        {
            // string session_uname1 = Session["uname"].ToString();

            string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/storage/" + session_uname + "/files/") + fileName);
            Response.Write("<script language=javascript>alert('File Successfully Uploaded');</script>");
            Response.Redirect("upload_item.aspx");
        }

    }
}