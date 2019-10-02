using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class HOME : System.Web.UI.Page
{
    string connStr = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected string GetActiveClass(int ItemIndex)
    {
        if (ItemIndex == 0)
        {
            return "active";
        }
        else
        {
            return "";
        }
    }
    private void BindImageRepeater()
    {
        SqlConnection con = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("get_Home_Image_Slider", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Connection = con;
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet dt = new DataSet();
        sda.Fill(dt);
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
    }
}