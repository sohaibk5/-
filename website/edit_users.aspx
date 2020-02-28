<%@ Page Language="C#" AutoEventWireup="true" CodeFile="edit_users.aspx.cs" Inherits="edit_users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 388px;
            border-collapse: collapse;
            background-color:rgb(1,22,39);opacity:0.749;
            height: 129px;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 720px;
            text-align: right;
        }
        .auto-style5 {
            margin-left: 0px;
        }
        .auto-style6 {
            font-weight: bold;
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
            color: #FFFFFF;
        }
        .auto-style28 {
            width: 606px;
        }
        .auto-style29 {
            color: #FFFFFF;
            margin-top: 15px;
        }
        .auto-style30 {
            color: #000000;
        }
    </style>
</head>
<body  style="margin:0px 0px 0px 0px;min-height:100%;background-image:url('images/bg.jpg') ; height: 0px;">
    <form id="form1" runat="server">
        <div id="header" style="width:100%;height:120px;background-color:rgb(1,22,39);opacity:0.749" class="auto-style1">

    
        <br class="auto-style24" />
        <br class="auto-style24" />
        <span class="auto-style22" style="font-family:'Mokhtar Font' " >المكتبة الإلكترونية </span>
        <span class="auto-style26" style="font-family:'Mokhtar Font'" >لكلية تكنولوجيا المعلومات</span></div>
        <table align="center" class="auto-style2" dir="rtl">
            <tr>
                <td class="auto-style1">
                    <asp:GridView style="background-color:rgb(1,22,39);opacity:0.749" ID="grid_user" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="auto-style29">
                        <Columns>
                            <asp:BoundField DataField="user_id" HeaderText="رقم المستخدم" />
                            <asp:BoundField DataField="name" HeaderText="اسم المستخدم" />
                            <asp:BoundField DataField="email" HeaderText="حساب المستخدم" />
                            <asp:BoundField DataField="pass" HeaderText="رقم المرور" />
                            <asp:BoundField DataField="user_type" HeaderText="نوع المستخدم" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            </table>
        <p class="auto-style1">
            &nbsp;</p>
        <table class="auto-style3">
            <tr>
                <td class="auto-style4">
                    <asp:TextBox ID="txt_user_id" runat="server" CssClass="auto-style5" OnTextChanged="txt_user_id_TextChanged" Width="166px"></asp:TextBox>
                </td>
                <td class="auto-style28"><strong>
                    <asp:Label ID="Label2" runat="server" ForeColor="White" Text="رقم المستخدم" CssClass="auto-style30"></asp:Label>
&nbsp;&nbsp; </strong></td>
            </tr>
        </table>
&nbsp;&nbsp;&nbsp;
        <p class="auto-style1">
            &nbsp;<strong><asp:Button ID="brt_del" runat="server" CssClass="auto-style6" Height="35px" OnClick="brt_del_Click" Text="حذف" Width="73px" />
            </strong>
        </p>
        <p class="auto-style1">
            <asp:Label ID="lbl" runat="server" CssClass="auto-style27"></asp:Label>
        </p>
        <p class="auto-style1">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image2" runat="server" Height="85px" ImageUrl="~/images/logo.png" Width="57px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
            <asp:Button ID="btn_back" runat="server" CssClass="auto-style6" Height="39px" OnClick="btn_back_Click" Text="عودة" Width="80px" />
            </strong>
        </p>
    </form>
</body>
</html>
