<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %> 
<%@ Import Namespace="System.Data" %>
<!DOCTYPE html>

<script runat="server">
    SqlConnection con = new SqlConnection("server=DESKTOP-DMGV0B7;database=FILE_UP;integrated security=sspi");

    protected void txt_email_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String sql = "select * from users where email=@email and pass=@pass";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@email", txt_email.Text);
        cmd.Parameters.AddWithValue("@pass", txt_password.Text);
        SqlDataReader r;
        con.Open();
        r = cmd.ExecuteReader();
        if(r.HasRows)
        {
            String user_type = "";
            while (r.Read())
            {
                Session["User"] = r["user_id"].ToString();
                user_type = r["user_type"].ToString();
            }
            con.Close();
            if (user_type == "1")
            {
                Response.Redirect("upload.aspx");
            }
            else if (user_type == "2") {
                Response.Redirect("add_user.aspx");

            }

        }



        else
        {
            lbl_error.Text = "خطأ في الدخول";

        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("master_login.aspx");
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 369px;
            border-collapse: collapse;
            margin-top: 83px;
        }
        .auto-style4 {
            width: 248px;
            text-align: right;
        }
                                                                                                   .auto-style16 {
                                                                                                       margin-left: 0px;
                                                                                                   }
                                                                                                   .auto-style20 {
            text-align: center;
            width: 100%;
            height: 80px;
            margin-bottom: 0px;
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
        .auto-style28 {
            color: #FFFFFF;
        }
        .auto-style29 {
            width: 248px;
            text-align: right;
            height: 17px;
        }
        .auto-style30 {
            height: 17px;
        }
        .auto-style31 {
            font-weight: bold;
        }
                                                                                                   .auto-style32 {
            font-weight: bold;
            color: #003399;
        }
                                                                                                   </style>
</head>
<body style="margin:0px 0px 0px 0px;min-height:100%;background-image:url('images/wp1828929.jpg') ; height: 0px" >
    <form id="form1" runat="server">
    <div style="background-color:rgb(1,22,39);opacity:0.749" class="auto-style20">
    
        <br />
        <span class="auto-style22" style="font-family:'Mokhtar Font' " >المكتبة الإلكترونية </span>
        <span class="auto-style26" style="font-family:'Mokhtar Font'" >لكلية تكنولوجيا المعلومات</span></div>
        <table align="center" class="auto-style2">
            <tr>
                <td class="auto-style4">
                    <strong>
                    <asp:TextBox ID="txt_email"  runat ="server" OnTextChanged="txt_email_TextChanged" Width="240px" TextMode="Email" CssClass="auto-style31"></asp:TextBox>
                    </strong>
                </td>
                <td>
                    <strong>
                    <asp:Label ID="Label1" runat="server" Text="ادخل البريد الالكتروني" CssClass="auto-style28"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style29">
                    <strong>
                    <asp:TextBox ID="txt_password" runat="server" TextMode="Password" CssClass="auto-style31" Width="117px"></asp:TextBox>
                    </strong>
                </td>
                <td class="auto-style30">
                    <strong>
                    <asp:Label ID="Label2" runat="server" Text="كلمة المرور" CssClass="auto-style28"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <strong>
                    <asp:Label ID="lbl_error" runat="server" ForeColor="Red"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style28"><strong></strong></td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <strong>
                    <asp:Button ID="Button1" runat="server" Text="دخول" OnClick="Button1_Click" Height="26px" CssClass="auto-style31" />
                    </strong>
                </td>
                <td class="auto-style28"><strong></strong></td>
            </tr>
        </table>
        <p class="auto-style1">
            <asp:Image ID="Image2" runat="server" CssClass="auto-style16" Height="94px" ImageUrl="~/images/logo.png" Width="67px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
            <asp:Button ID="Button2" runat="server" CssClass="auto-style32" Height="34px" OnClick="Button2_Click" Text="عودة" Width="53px" />
            </strong>
                </p>
    </form>
    </body>
</html>
 