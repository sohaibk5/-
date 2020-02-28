<%@ Page Title="" Language="C#" MasterPageFile="~/master_teacher.master" %>
<%@ Import Namespace="System.Data.SqlClient" %> 
<%@ Import Namespace="System.Data" %>
<script runat="server">
    SqlConnection con = new SqlConnection("server=DESKTOP-DMGV0B7;database=FILE_UP;integrated security=sspi");

    protected void Page_Load(object sender, EventArgs e)
    { if (Session["user"] == null)
        {
            Response.Redirect("~\\enter");

        }

    }

    protected void btn_add_Click(object sender, EventArgs e)
    {
            string sql = "insert into courses values (@id,@name)";
            SqlCommand cmd_add = new SqlCommand(sql, con);
            cmd_add.Parameters.AddWithValue("@id", txt_id.Text);
            cmd_add.Parameters.AddWithValue("@name", txt_name.Text);
            con.Open();
            cmd_add.ExecuteNonQuery();
            con.Close();
            lbl_message.Text = "تمت عملية اضافة المادة بنجاح";
        
    }

    protected void txt_id_TextChanged(object sender, EventArgs e)
    {

    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style7 {
        width: 800px;
        height: 26px;
        margin-top: 0px;
    }
        .auto-style14 {
            width: 100%;
        }
        .auto-style15 {
            width: 83px;
        }
        .auto-style16 {
            font-family: Tahoma;
        }
        .auto-style17 {
            font-size: medium;
            font-family: Tahoma;
            color: #FFFFFF;
        }
        .auto-style18 {
            font-size: medium;
        }
        .auto-style21 {
            font-size: medium;
        }
        .auto-style28 {
            color: #FFFFFF;
        }
        .auto-style29 {
            width: 83px;
            color: #FFFFFF;
            height: 30px;
        }
        .auto-style30 {
            font-family: Tahoma;
            color: #FFFFFF;
            margin-left: 0px;
        }
        .auto-style31 {
            margin-bottom: 0px;
        }
        .auto-style32 {
            width: 83px;
            height: 30px;
        }
        .auto-style33 {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style14">
        <tr>
            <td class="auto-style32">
                <asp:Label ID="Label2" runat="server" CssClass="auto-style30" Text="رقم المادة"></asp:Label>
            </td>
            <td class="auto-style33">
                <asp:TextBox ID="txt_id" runat="server" OnTextChanged="txt_id_TextChanged" CssClass="auto-style31"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style32"><span class="auto-style28">ا</span><span class="auto-style17">سم المادة</span></td>
            <td class="auto-style33">
                <asp:TextBox ID="txt_name" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style29"></td>
            <td class="auto-style33">
                <asp:Label ID="lbl_message" runat="server" CssClass="auto-style28"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">&nbsp;</td>
            <td>
                <asp:Button ID="btn_add" runat="server" CssClass="auto-style21" OnClick="btn_add_Click" Text="اضافة المادة" style="height: 28px" Width="116px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

