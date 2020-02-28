<%@ Page Language="C#" AutoEventWireup="true" CodeFile="edit_files.aspx.cs" Inherits="edit_files" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 243px;
            border-collapse: collapse;
            background-color:rgb(1,22,39);opacity:0.749;
        }
        .auto-style3 {
            width: 86px;
        }
        .auto-style4 {
            font-weight: bold;
        }
        .auto-style5 {
            width: 432px;
            border-collapse: collapse;
        }
                                                                                                   .auto-style11 {
            text-align: justify;
            color: #FFFFFF;
            margin-right: 0px;
        }
                                                                                                   .auto-style11 {
            margin-right: 0px;
        }
        .auto-style12 {
            color: #FFFFFF;
        }
        .auto-style13 {
            margin-top: 10px;
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
            width: 100%;
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
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="رقم الملف" CssClass="auto-style12"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_files_id" runat="server" Width="147px" CssClass="auto-style13"></asp:TextBox>
                </td>
            </tr>
        </table>
        <p class="auto-style1">
            <asp:Label ID="lbl" runat="server" CssClass="auto-style12"></asp:Label>
        </p>
        <p class="auto-style1">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;<strong><asp:Button ID="btn_del" runat="server" CssClass="auto-style4" Height="42px" OnClick="btn_del_Click" Text="حذف" Width="83px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </strong>
        </p>
        <p class="auto-style1">
            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table class="auto-style27">
                <tr>
                    <td><strong>
                        <asp:Button ID="btn_3" runat="server" OnClick="btn_3_Click" Text="مواد تخصص" Width="200px" />
            </strong>
                    </td>
                    <td><strong>
                        <asp:Button ID="btn_4" runat="server" OnClick="btn_4_Click" Text="اختياري جامعة" Width="200px" />
            </strong>
                    </td>
                    <td><strong>
                        <asp:Button ID="btn_1" runat="server" OnClick="btn_1_Click" Text="اجباري كلية" Width="200px" />
            </strong>
                    </td>
                    <td>
                        <asp:Button ID="btn_2" runat="server" OnClick="Button2_Click" Text="اجباري جامعة" Width="200px" />
                    </td>
                </tr>
            </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </strong>
        </p>
        <p class="auto-style1">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image2" runat="server" Height="80px" ImageUrl="~/images/logo.png" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style4" Height="37px" OnClick="Button1_Click" Text="عودة" Width="87px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </strong>
        </p>
        <table align="center" class="auto-style5" dir="rtl">
            <tr>
                <td>
                <asp:GridView style="background-color:rgb(1,22,39);opacity:0.749" ID="grif_files" runat="server" AutoGenerateColumns="False" CssClass="auto-style11" Width="443px" OnRowCommand="grif_files_RowCommand" OnSelectedIndexChanged="grif_files_SelectedIndexChanged" PageSize="5">
                    <Columns>
                        <asp:BoundField DataField="file_id" HeaderText="رقم الملف" />
                        <asp:BoundField DataField="title" HeaderText="وصف الملف">
                        <ItemStyle Width="220px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="upload_date" HeaderText="تاريخ التحميل" />
                        <asp:BoundField DataField="course_name" HeaderText="اسم المقرر" />
                    </Columns>
                </asp:GridView>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
