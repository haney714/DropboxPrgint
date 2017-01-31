using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DropBox
{
    public partial class upload_item : System.Web.UI.Page
    {
        string session_uname=null;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                session_uname = Session["uname"].ToString();

                if (session_uname != null)
                {
                    // code if session is not null
                    if (!IsPostBack)
                    {


                        string[] filePaths = Directory.GetFiles(Server.MapPath("~/storage/" + session_uname + "/files/"));
                        List<ListItem> files = new List<ListItem>();
                        foreach (string filePath in filePaths)
                        {
                            files.Add(new ListItem(Path.GetFileName(filePath), filePath));
                        }
                        GridView1.DataSource = files;
                        GridView1.DataBind();
                    }
                }
                else
                {
                    Session.Abandon();
                    Response.Redirect("index.aspx");
                }
            }catch
                {
                Response.Redirect("index.aspx");
            }
            
        }

        protected void UploadFile(object sender, EventArgs e)
        {
           // string session_uname1 = Session["uname"].ToString();

            string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/storage/"+session_uname+"/files/") + fileName);
            Response.Redirect(Request.Url.AbsoluteUri);
        }

        protected void DownloadFile(object sender, EventArgs e)
        {
            string filePath = (sender as LinkButton).CommandArgument;
            Response.ContentType = ContentType;
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
            Response.WriteFile(filePath);
            Response.End();
        }
        protected void DeleteFile(object sender, EventArgs e)
        {
            string filePath = (sender as LinkButton).CommandArgument;
            //File.Delete(filePath);
            //Response.Write(Server.MapPath("~/storage/" + session_uname + "/delete/"+Path.GetFileName(filePath)));
            File.Move(filePath,Server.MapPath("~/storage/" + session_uname + "/delete/"+Path.GetFileName(filePath)));
            Response.Redirect(Request.Url.AbsoluteUri);
        }
    }
}