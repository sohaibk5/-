<%@ Page Title="" Language="C#" MasterPageFile="~/master_student.master" %>
<%@ import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>
<script runat="server">
    SqlConnection con = new SqlConnection("server=DESKTOP-DMGV0B7;database=FILE_UP;integrated security=sspi");
    void fill_files()
    {
        string sql = "select * from files,courses where files.course_id=courses.course_id and course_type=1 order by course_name";
        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        grif_files.DataSource = dt;
        grif_files.DataBind();

    }
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
            fill_files();

        }

    }

    protected void grif_files_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "down")
        {
            int j = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = grif_files.Rows[j];
            Label file = (Label)row.FindControl("lbl_path");
            Response.Clear();
            Response.AddHeader("content-disposition", "filename=" + file.Text);
            Response.ContentType="application/octet-stream";
            Response.TransmitFile(file.Text);
            Response.End();


        }
    }

    protected void grif_files_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style10 {
            width: 100%;
        }
        .auto-style11 {
            margin-right: 0px;
        }
    .auto-style27 {
        text-align: justify;
        color: #FFFFFF;
        margin-right: 12px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style10">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:GridView ID="grif_files" runat="server" AutoGenerateColumns="False" CssClass="auto-style27" Width="470px" OnRowCommand="grif_files_RowCommand" OnSelectedIndexChanged="grif_files_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="file_id" HeaderText="رقم الملف" />
                        <asp:BoundField DataField="title" HeaderText="وصف الملف">
                        <ItemStyle Width="220px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="upload_date" HeaderText="تاريخ التحميل" />
                        <asp:BoundField DataField="course_name" HeaderText="اسم المقرر" />
                        <asp:TemplateField HeaderText="مسار الملف" Visible="False">
                            <ItemTemplate>
                                <asp:Label ID="lbl_path" runat="server" Text='<%# Bind("path") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:ButtonField ButtonType="Button" CommandName="down" Text="تحميل"></asp:ButtonField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

