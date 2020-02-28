<%@ Page Title="" Language="C#" MasterPageFile="~/master_admin.master" %>
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
    }

    protected void btn_save_Click(object sender, EventArgs e)
    {
        if (txt_con.Text == txt_password.Text)
        {
            String sql = "insert into users (name,email,pass,user_type) values(@name,@email,@pass,@type)";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@name", txt_name.Text);
            cmd.Parameters.AddWithValue("@email", txt_email.Text);
            cmd.Parameters.AddWithValue("@pass", txt_password.Text);
            cmd.Parameters.AddWithValue("@type", drop_user_type.SelectedValue);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            lbl_message.Text = "تمت اضافة المستخدم بنجاح";
        }
        else
        {
            lbl_message.Text = "كلمات المرور لا تتطابقان";
        }
    }

    protected void drop_user_type_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style16 {
            width: 100%;
        }
        .auto-style17 {
            width: 141px;
        }
        .auto-style18 {
            font-size: medium;
            font-family: Tahoma;
        }
        .auto-style22 {
            font-size: small;
            font-family: Tahoma;
        }
        .auto-style25 {
            width: 90px;
            height: 8px;
        }
        .auto-style26 {
            height: 8px;
        }
        .auto-style28 {
            font-size: medium;
            font-family: Tahoma;
        }
    .auto-style29 {
        width: 90px;
        text-align: left;
            height: 31px;
        }
    .auto-style30 {
        font-size: medium;
        font-family: Tahoma;
        height: 252px;
        color: #FFFFFF;
    }
    .auto-style31 {
        color: #FFFFFF;
    }
        .auto-style32 {
            font-size: medium;
        }
        .auto-style39 {
            width: 141px;
            height: 31px;
            text-align: left;
        }
        .auto-style40 {
            height: 31px;
        }
        .auto-style42 {
            font-family: "Mokhtar Font";
            font-size: x-large;
            color: #FFFFFF;
            height: 22px;
        }
        .auto-style43 {
            width: 90px;
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style16">
        <tr>
            <td class="auto-style39">
                <asp:Label ID="Label1" runat="server" CssClass="auto-style30" Text="اسم المستخدم"></asp:Label>
            </td>
            <td class="auto-style40">
                <asp:TextBox ID="txt_name" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style39">
                <asp:Label ID="Label2" runat="server" CssClass="auto-style30" Text="البريد الالكتروني"></asp:Label>
            </td>
            <td class="auto-style40">
                <asp:TextBox ID="txt_email" runat="server" Width="250px" TextMode="Email"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style39">
                <asp:Label ID="Label3" runat="server" CssClass="auto-style30" Text="كلمة المرور"></asp:Label>
            </td>
            <td class="auto-style40">
                <asp:TextBox ID="txt_password" runat="server" Width="122px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style39">
                <asp:Label ID="Label5" runat="server" Text="تأكيد كلمة المرور" CssClass="auto-style31"></asp:Label>
            </td>
            <td class="auto-style40">
                <asp:TextBox ID="txt_con" runat="server" Width="122px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style29">
                <asp:Label ID="Label4" runat="server" CssClass="auto-style30" Text="نوع المستخدم"></asp:Label>
            </td>
            <td class="auto-style40">
                <asp:DropDownList ID="drop_user_type" runat="server" Height="16px" Width="113px" OnSelectedIndexChanged="drop_user_type_SelectedIndexChanged">
                    <asp:ListItem Value="1">مسؤول</asp:ListItem>
                    <asp:ListItem Value="2">مشرف موقع</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style43"></td>
            <td class="auto-style42">
                <asp:Label ID="lbl_message" runat="server" ForeColor="Red" CssClass="auto-style32"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style26">
                <asp:Button ID="btn_save" runat="server" CssClass="auto-style28" OnClick="btn_save_Click" Text=" حفظ المستخدم" Height="25px" Width="129px" />
            </td>
        </tr>
    </table>
</asp:Content>

