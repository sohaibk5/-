using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class edit : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("server=DESKTOP-DMGV0B7;database=FILE_UP;integrated security=sspi");

    void fill_files()
    {
        string sql = "select * from courses order by course_id desc  ";
        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

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

    protected void btn_delete_Click(object sender, EventArgs e)
    {
      
        string qur = "delete from courses where course_id='" + this.txt_id.Text + "';";
        SqlCommand cmd = new SqlCommand(qur, con); 
      
        SqlDataReader myreader;
      
      
            if (txt_id == null)
            {
                lbl.Text = "ادخل رقم";
            }
        else { 
            con.Open();
            myreader = cmd.ExecuteReader();
            lbl.Text = "تم الحذف";
            while(myreader.Read()){

            }

        
         }
    }

    protected void btn_back_Click(object sender, EventArgs e)
    {
       
                Response.Redirect("edit_teacher.aspx");

           
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}