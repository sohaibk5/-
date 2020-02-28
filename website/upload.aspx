<%@ Page Title="" Language="C#" MasterPageFile="~/master_teacher.master" %>
<%@ Import Namespace="System.Data.SqlClient" %> 
<%@ Import Namespace="System.Data" %>
<script runat="server">
    SqlConnection con = new SqlConnection("server=DESKTOP-DMGV0B7;database=FILE_UP;integrated security=sspi");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("~\\enter");

        }
        if (!Page.IsPostBack)
        {
            string sql = "select * from courses order by course_name";
            SqlDataAdapter da = new SqlDataAdapter(sql, con);
            DataTable dt_courses = new DataTable();
            da.Fill(dt_courses);
            drop_courses.DataSource = dt_courses;
            drop_courses.DataTextField = "course_name";
            drop_courses.DataValueField = "course_id";
            drop_courses.DataBind();


        }

    }

    protected void btn_upload_Click(object sender, EventArgs e)
    {
        if (myfileupload.HasFile)
        {

            string ext = System.IO.Path.GetExtension(myfileupload.FileName);
            if(ext!=".pdf" && ext!=".mp4" && ext!=".pptx" && ext!=".ppt" && ext!=".docx" && ext!=".doc" && ext!=".jpg")
            {

                lbl_message.Text = "لا يسمح بهذا النوع من الملفات";
                return;

            }
            string file_name = "";
            file_name = file_name + Session["user"].ToString() + "_";
            file_name = file_name + DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString();
            file_name += DateTime.Now.Day.ToString();
            file_name += DateTime.Now.Hour.ToString();
            file_name += DateTime.Now.Minute.ToString();
            file_name += DateTime.Now.Second.ToString();
            myfileupload.SaveAs(Server.MapPath("files") + "\\" + file_name + ext);
            string path = "~\\files\\" + file_name + ext;
            SqlCommand cmd = new SqlCommand("insert_file", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@title", txt_title.Text);
            cmd.Parameters.AddWithValue("@dat", DateTime.Now);
            cmd.Parameters.AddWithValue("@course", drop_courses.SelectedValue);
            cmd.Parameters.AddWithValue("@user", Session["user"].ToString());
            cmd.Parameters.AddWithValue("@path", path);
            cmd.Parameters.AddWithValue("@count", 0);
            cmd.Parameters.AddWithValue("@dattyb", DropDownList1.SelectedValue);
            
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            lbl_message.Text = "تم رفع الملف بنجاح";
        }
        else
        {

            lbl_message.Text = "يرجى اختيار الملف المراد رفعه الى الموقع ";

        }
    }

    protected void drop_courses_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style14 {
            width: 100%;
            border-collapse: collapse;
        }
        .auto-style15 {
            width: 291px;
        }
        .auto-style16 {
            width: 291px;
            text-align: left;
        }
        .auto-style17 {
            font-weight: bold;
        }
        .auto-style28 {
            color: #FFFFFF;
        }
        .auto-style29 {
            width: 291px;
            color: #FFFFFF;
            height: 30px;
        }
        .auto-style31 {
            width: 291px;
            text-align: left;
            height: 30px;
            margin-left: 0px;
        }
        .auto-style32 {
            height: 30px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style14">
        <tr>
            <td class="auto-style31"><strong>
                <asp:Label ID="Label1" runat="server" Text="وصف الملف" CssClass="auto-style28"></asp:Label>
                </strong></td>
            <td class="auto-style32">
                <asp:TextBox ID="txt_title" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style31"><strong>
                <asp:Label ID="Label2" runat="server" Text="اسم المقرر" CssClass="auto-style28"></asp:Label>
                </strong></td>
            <td class="auto-style32">
                <asp:DropDownList ID="drop_courses" runat="server" Height="16px" Width="127px" OnSelectedIndexChanged="drop_courses_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style31"><strong><span class="auto-style28">نوع المادة</span></strong></td>
            <td class="auto-style32">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="99px">
                    <asp:ListItem Value="1">اجباري كلية</asp:ListItem>
                    <asp:ListItem Value="2">اجباري جامعة</asp:ListItem>
                    <asp:ListItem Value="3">مواد تخصص</asp:ListItem>
                    <asp:ListItem Value="4">اختياري جامعة</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style31"><strong>
                <asp:Label ID="Label3" runat="server" Text="مكان الملف" CssClass="auto-style28"></asp:Label>
                </strong></td>
            <td class="auto-style32"><strong>
                <asp:FileUpload ID="myfileupload" runat="server" CssClass="auto-style17" />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style29"></td>
            <td class="auto-style32">
                <asp:Label ID="lbl_message" runat="server" CssClass="auto-style28"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">&nbsp;</td>
            <td><strong>
                <asp:Button ID="btn_upload" runat="server" CssClass="auto-style17" Text="رفع الملف" OnClick="btn_upload_Click" style="height: 26px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>

