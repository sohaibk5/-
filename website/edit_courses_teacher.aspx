<%@ Page Language="C#" AutoEventWireup="true" CodeFile="edit_courses_teacher.aspx.cs" Inherits="edit" %>

<!DOCTYPE html>
<script runat="server">

   
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 354px;
            border-collapse: collapse;
            background-color:rgb(1,22,39);opacity:0.749;
        }
        .auto-style3 {
            width: 95px;
            text-align: left;
        }
        .auto-style4 {
            font-weight: bold;
        }
        .auto-style5 {
            width: 182px;
            border-collapse: collapse;
        }
        .auto-style6 {
            color: #FFFFFF;
        }
        .auto-style7 {
            margin-top: 1px;
        }
        .auto-style8 {
            width: 95px;
            text-align: left;
            height: 35px;
        }
        .auto-style9 {
            height: 35px;
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
    </style>
</head>
<body style="margin:0px 0px 0px 0px;min-height:100%;background-image:url('images/bg.jpg') ; height: 0px;">

    <form id="form1" runat="server">
      <div id="header" style="width:100%;height:120px;background-color:rgb(1,22,39);opacity:0.749" class="auto-style1">

    
        <br class="auto-style24" />
        <br class="auto-style24" />
        <span class="auto-style22" style="font-family:'Mokhtar Font' " >المكتبة الإلكترونية </span>
        <span class="auto-style26" style="font-family:'Mokhtar Font'" >لكلية تكنولوجيا المعلومات</span></div>
        <table align="center" class="auto-style2" dir="rtl">
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label1" runat="server" Text="رقم المقرر" CssClass="auto-style6"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txt_id" runat="server" Width="252px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="اسم المقرر" CssClass="auto-style6"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_name" runat="server" Width="253px" CssClass="auto-style7"></asp:TextBox>
                </td>
            </tr>
        </table>
        <p class="auto-style1">
            <asp:Label ID="lbl" runat="server" ForeColor="White"></asp:Label>
        </p>
        <p class="auto-style1">
            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:Button ID="btn_delete" runat="server" CssClass="auto-style4" Height="34px" OnClick="btn_delete_Click" Text="حذف" Width="70px" />
&nbsp;</strong><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
        </p>
        <p class="auto-style1">
            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image2" runat="server" Height="69px" ImageUrl="~/images/logo.png" Width="44px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btn_back" runat="server" CssClass="auto-style4" Height="29px" OnClick="btn_back_Click" Text="عودة" Width="62px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
        </p>
        <table align="center" class="auto-style5">
            <tr>
                <td>
                    <asp:GridView style="background-color:rgb(1,22,39);opacity:0.749" ID="GridView1" runat="server" AutoGenerateColumns="False" Height="148px" PageSize="5" Width="197px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="auto-style6">
                        <Columns>
                            <asp:BoundField DataField="course_name" HeaderText="اسم المقرر" />
                            <asp:BoundField DataField="course_id" HeaderText="رقم المقرر" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
