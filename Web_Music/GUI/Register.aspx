<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Web_Music.GUI.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng kí tài khoản</title>
    <style>
        *{
            margin: 0px;
            padding: 0px;
            box-sizing: border-box;
        }
        #login h1{
            text-align:center;
            margin-top: 50px;
            margin-bottom: 40px;
        }
        .input{
            text-align: center;
        }
        #login{
            display: block;
            width: 500px;
            padding-bottom: 50px;
            background-color: white;
            border-radius: 20px;
            margin: 0 auto;
            border: 1px solid transparent;
        }
        #container{
            padding-top: 100px;
            height: 1000px;
            background-image: url(../Image/Login/login_background.jpg);
        }
        #dang_nhap{
            margin: 0 auto;
            display: block;
            cursor: pointer;
        }
        div.input input
        {
            display:inline-block;
            padding:15px 50px;
            background-color: #E9E9E9;
            border-radius:7px;
            outline:none;
            border:none;

        }
        
        div div.input input{
            margin-bottom: 20px;
        }
        #login div:nth-child(3) input{
            margin-bottom: 0px;
        }
        #dang_nhap
        {
            display:block;
            padding:15px 109px;
            margin:0 auto;  
            background-color: #D23F8D;
            border: none;
            outline: none;
            border-radius: 5px;
            font-size: 14px;
            font-weight: 600;
            margin-top: 20px;
        }
        #msg{
            padding-left: 116px;
            color: red;

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="container">
            <div id="login">
                <h1>Đăng kí </h1>
                <div>
                    <div class="input">
                     <asp:TextBox ID="txtusername" runat="server" placeholder="Tên đăng nhập"></asp:TextBox>
                    </div>
                    <div class="input">
                        <asp:TextBox ID="txtpass" runat="server" placeholder="Mật khẩu" TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="input">
                        <asp:TextBox ID="txtpassconfirm" runat="server" placeholder="Nhập lại mật khẩu" TextMode="Password"></asp:TextBox>
                    </div>
                    <asp:Label Text="" runat="server" ID="msg"/>
                </div>
                <div>
                    <asp:Button Text="Đăng kí" runat="server" id="dang_nhap" type="submit" OnClick="dang_nhap_Click"/>
                </div>         
            </div>
        </div>
    </form>
</body>
</html>
