using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class edit_users : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("server=DESKTOP-DMGV0B7;database=FILE_UP;integrated security=sspi");

    void fill_files()
    {
        string sql = "select * from users order by user_id desc  ";
        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        grid_user.DataSource = dt;
        grid_user.DataBind();

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("~\\enter");

        }
        if (!Page.IsPostBack)
        {
            fill_files();

        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void txt_user_id_TextChanged(object sender, EventArgs e)
    {

    }

    protected void btn_back_Click(object sender, EventArgs e)
    {
        Response.Redirect("main_edit.aspx");
    }

    protected void brt_del_Click(object sender, EventArgs e)
    {

        string qur = "delete from users where user_id='" + this.txt_user_id.Text + "';";
        SqlCommand cmd = new SqlCommand(qur, con);

        SqlDataReader myreader;

        if (txt_user_id == null)
        {
            lbl.Text = "ادخل رقم";
        }
        else
        {
            con.Open();
            myreader = cmd.ExecuteReader();
            lbl.Text = "تم الحذف";
            while (myreader.Read())
            {

            }
        }
    }
}