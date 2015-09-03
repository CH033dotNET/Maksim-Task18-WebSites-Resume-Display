using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class DisplayData : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    /// <summary>
  /// This method includes GriedView and ListBox objects for display table.
  /// </summary>
  /// <param name="o">using by default</param>
  /// <param name="e">using by default</param>
    protected void GetOnDisplayData(object o, EventArgs e)
    {
        GVdataTable.DataSource = ManipulationContainer.AppManipulations;
        GVdataTable.DataBind();
        //ListofData.DataSource = ManipulationContainer.AppManipulations;
        //ListofData.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ManipulationContainer.Clean();
    }
    protected void BackToResume(object sender, EventArgs e)
    {
        Response.Redirect("ResumeData.aspx");
    }
}