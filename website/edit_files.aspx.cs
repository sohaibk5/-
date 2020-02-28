using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class edit_files : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("server=DESKTOP-DMGV0B7;database=FILE_UP;integrated security=sspi");
    void fill_files2()
    {
        string sql = "select * from files,courses where files.course_id=courses.course_id and course_type=2 order by course_name";
        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        grif_files.DataSource = dt;
        grif_files.DataBind();

    }

    void fill_files1()
    {
        string sql = "select * from files,courses where files.course_id=courses.course_id and course_type=1  order by course_name";
        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        grif_files.DataSource = dt;
        grif_files.DataBind();

    }


    void fill_files3()
    {
        string sql = "select * from files,courses where files.course_id=courses.course_id and course_type=3 order by course_name";
        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        grif_files.DataSource = dt;
        grif_files.DataBind();

    }


    void fill_files4()
    {
        string sql = "select * from files,courses where files.course_id=courses.course_id and course_type=4 order by course_name";
        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        grif_files.DataSource = dt;
        grif_files.DataBind();

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("~\\enter");

        }

    }

    protected void btn_del_Click(object sender, EventArgs e)
    {

        string qur = "delete from files  where file_id='" + this.txt_files_id.Text + "';";
        SqlCommand cmd = new SqlCommand(qur, con);

        SqlDataReader myreader;

        if (txt_files_id == null)
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



    protected void grif_files_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void grif_files_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
         
                Response.Redirect("edit_teacher.aspx");


           

        }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }



  
    protected void btn_1_Click(object sender, EventArgs e)
    {
        fill_files1();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        fill_files2();
    }

    protected void btn_4_Click(object sender, EventArgs e)
    {
        fill_files4();
    }

    protected void btn_3_Click(object sender, EventArgs e)
    {
        fill_files3();
    }
}
