<%@ Page Language="C#" AutoEventWireup="true" CodeFile="master_login.aspx.cs" Inherits="master_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            text-align: center;
        }

        .auto-style2:active {
 
 color:#808080;
  transform: translateY(5px);
}
                                                                                                   .auto-style18 {
                                                                                                       width: 100%;
                                                                                                   }
                                                                                                   .auto-style20 {
                                                                                                       width: 713px;
                                                                                                       height: 60px;
                                                                                                       text-align: right;
            color: #FFFFFF;
            font-size: medium;
        }
                                                                                                   .auto-style16 {
                                                                                                       margin-left: 0px;
                                                                                                   }
                                                                                                   .auto-style19 {
                                                                                                       text-align: left;
                                                                                                       height: 60px;
                                                                                                   }
                                                                                                   .auto-style22 {
            font-family: "Mokhtar Font";
            font-size: xx-large;
            color: #FFFFFF;
        }
        .auto-style24 {
            font-size: small;
            font-family: "Mokhtar Font";
        }
        .auto-style25 {
            width: 16px;
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
    <div style="width:100%;height:120px;background-color:rgb(1,22,39);opacity:0.749" class="auto-style1">
    
        <br class="auto-style24" />
        <br class="auto-style24" />
        <span class="auto-style22" style="font-family:'Mokhtar Font' " >المكتبة الإلكترونية </span>
        <span class="auto-style26" style="font-family:'Mokhtar Font'" >لكلية تكنولوجيا المعلومات</span></div>
        <p class="auto-style1" >
            &nbsp;</p>
        <p class="auto-style1" >

            <asp:ImageButton  style="outline:none" ID="ImageButton1" runat="server" CssClass="auto-style2"  Height="106px" ImageUrl="~/images/78637654_459547761402271_7168489945340837888_n.png" OnClick="ImageButton1_Click" Width="175px" />
        </p>
        <p class="auto-style1" >
            <asp:ImageButton style="outline:none" ID="ImageButton2" runat="server" CssClass="auto-style2" Height="108px" ImageUrl="~/images/79310792_2510539099066216_5051055013825085440_n.png" OnClick="ImageButton2_Click" Width="178px" />
        </p>

            <table class="auto-style18" style="">
        <tr>
            <td class="auto-style20">
                <strong>موقع لتحميل الملفات الخاصة بطلاب كلية تكنولوجيا المعلومات</strong></td>
            <td class="auto-style25"></td>
            <td class="auto-style19">
                <asp:image id="Image2" runat="server" cssclass="auto-style16" height="80px" imageurl="~/images/logo.png" width="55px" />
            </td>
        </tr>
    </table>

    </form>
</body>
</html>
