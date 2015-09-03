using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Threading;

public partial class ResumeData : System.Web.UI.Page
{
  
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void LinkBt_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://www.stackoverflow.com");
    }

    /// <summary>
    /// All info storing in folder wich located inside this webTask
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void ImgBt_Click(object sender, ImageClickEventArgs e)
    {
        if (this.FileUpData.HasFile)
        {
            try
            {
                string path = Server.MapPath("Storage for upload//");
                this.FileUpData.SaveAs(path+FileUpData.FileName);
            }
            catch (Exception) { }
        }
    }
   
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    /// <summary>
    /// Class Manipulation located in App_Code folder
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (RdBtOver.Checked == true)
        {
            Manipulation manipulation = new Manipulation(Nametxt.Text, LastNametxt.Text, DropDownList1.SelectedItem.Text, RdBtOver.Checked);
            ManipulationContainer.AppManipulations.Add(manipulation);
            Response.Redirect("DisplayData.aspx"); 
        }
        else LigalPass.Visible = true;
    }
}