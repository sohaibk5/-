<%@ Page Language="C#" %>
<%@ import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>
<!DOCTYPE html>

<script runat="server">
    SqlConnection con = new SqlConnection("server=DESKTOP-DMGV0B7;database=FILE_UP;integrated security=sspi");

    void fill_files()
    {
        string sql = "select * from courses order by course_id asc";
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

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("search.aspx");
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
        .auto-style26 {
            font-family: "Mokhtar Font";
            font-size: x-large;
            color: #FFFFFF;
        }
        .auto-style27 {
            width: 146px;
            border-collapse: collapse;
            height: 124px;
        }
        .auto-style28 {
            background-color:rgb(1,22,39);
            color: #FFFFFF;
        }
        .auto-style29 {
            font-weight: bold;
        }
    </style>
</head>
<body style="margin:0px 0px 0px 0px;min-height:100%;background-image:url('images/bg.jpg'); height: 251px;">
    <form id="form1" runat="server">
    <div id="header" style="width:100%;height:120px;background-color:rgb(1,22,39);opacity:0.749" class="auto-style1">
    
        <br class="auto-style24" />
        <br class="auto-style24" />
        <span class="auto-style22" style="font-family:'Mokhtar Font' " >المكتبة الإلكترونية </span>
        <span class="auto-style26" style="font-family:'Mokhtar Font'" >لكلية تكنولوجيا المعلومات</span></div>
        <table align="center" class="auto-style27" dir="rtl">
            <tr>
                <td class="auto-style1">
                    <strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style29" Height="39px" OnClick="Button1_Click" Text="عودة" Width="65px" />
                    <br />
                    </strong>
                    <asp:GridView ID="grif_files" runat="server" AutoGenerateColumns="False" CssClass="auto-style28" Height="176px" PageSize="20" Width="245px">
                        <Columns>
                            <asp:BoundField DataField="course_name" HeaderText="اسم المقرر" />
                            <asp:BoundField DataField="course_id" HeaderText="رقم المقرر " />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
        <p class="auto-style1">
            &nbsp;</p>
    </form>
</body>
</html>
