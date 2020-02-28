<%@ Page Language="C#" %>
<%@ import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>
<!DOCTYPE html>

<script runat="server">
    SqlConnection con = new SqlConnection("server=DESKTOP-DMGV0B7;database=FILE_UP;integrated security=sspi");
    void fill_files()
    {
        string sql = "select * from files,courses where files.course_id=courses.course_id and files.course_id='"+this.txt_num.Text+"' order by files.course_id asc  ;";
        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        grif_files.DataSource = dt;
        grif_files.DataBind();

    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void grif_files_SelectedIndexChanged(object sender, GridViewCommandEventArgs e)
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

    protected void Button1_Click(object sender, EventArgs e)
    {
        fill_files();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("course_menu.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("download.aspx");
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style24 {
            font-size: small;
            font-family: "Mokhtar Font";
        }
                                                                                                   .auto-style22 {
            font-family: "Mokhtar Font";
            font-size: xx-large;
            color: #FFFFFF;
        }
        .auto-style27 {
            color: #FFFFFF;
        }
        .auto-style28 {
            width: 36%;
        }
        .auto-style29 {
            font-weight: bold;
        }
        .auto-style26 {
            font-family: "Mokhtar Font";
            font-size: x-large;
            color: #FFFFFF;
        }
        </style>
</head>
<body style="margin:0px 0px 0px 0px;min-height:100%;background-image:url('images/bg.jpg') ; height: 0px;">
    <form id="form1" runat="server">
    <div id="header" style="width:100%;height:120px;background-color:rgb(1,22,39);opacity:0.749" class="auto-style1">
    
        <br class="auto-style24" />
        <br class="auto-style24" />
        <span class="auto-style22" style="font-family:'Mokhtar Font' " >المكتبة الإلكترونية </span>
        <span class="auto-style26" style="font-family:'Mokhtar Font'" >لكلية تكنولوجيا المعلومات</span></div>
        <p class="auto-style1">
            <asp:TextBox ID="txt_num" runat="server"></asp:TextBox>
&nbsp; 
        <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style27" Text="رقم المادة"></asp:Label>
            </strong> 
        </p>
        <p class="auto-style1">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="بحث" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
        <div class="auto-style1">
            <table align="center" class="auto-style28" dir="rtl">
                <tr>
                    <td>
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
            </table>
            <strong>
            <asp:Button ID="Button2" runat="server" CssClass="auto-style29" OnClick="Button2_Click" Text="استطلاع قائمة المواد" />
            </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
        <p class="auto-style1">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
            <asp:Button ID="Button3" runat="server" CssClass="auto-style29" Height="29px" OnClick="Button3_Click" Text="عودة" Width="48px" />
            </strong>
        </p>
    </form>
</body>
</html>
