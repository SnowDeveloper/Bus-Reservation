﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Admin_con_msg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=reservation;Integrated Security=True;Pooling=False");
        con.Open();
        SqlDataAdapter adp = new SqlDataAdapter("SELECT * FROM contact WHERE cid > 0",con);
        DataTable dtab = new DataTable();
        adp.Fill(dtab);
        GridView1.DataSource = dtab;
        GridView1.DataBind();
        con.Close();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}