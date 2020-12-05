<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Web_Music.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng nhập</title>
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
            height: 400px;
            background-color:white;
            border-radius: 20px;
        }
        #container{
            display:flex;
            justify-content:center;
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
            margin:0 auto;  
            background-color: #E9E9E9;
            border-radius:7px;
            outline:none;
            border:none;

        }
        .input:first-child
        {
            margin-bottom:20px;
        }
        div.input:last-child{
            margin-bottom:20px;
        }
        #dang_nhap
        {
            display:block;
            padding:15px 99px;
            margin:0 auto;  
            background-color: #D23F8D;
            border: none;
            outline: none;
            border-radius: 5px;
            font-size: 14px;
            font-weight: 600;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" method="get" >
        <div id="container">
            <div id="login">
                <h1>Đăng nhập</h1>
                <div>
                    <div class="input">
                     <asp:TextBox ID="txtusername" runat="server" placeholder="Tên đăng nhập"></asp:TextBox>
                    </div>
                    <div class="input">
                        <asp:TextBox ID="txtpass" runat="server" placehoder="Mật khẩu"></asp:TextBox>
                    </div>
                </div>
                <div>
                    <asp:Button Text="Đăng nhập" runat="server" id="dang_nhap" type="submit" OnClick="dang_nhap_Click"/>
                </div>         
            </div>
        </div>
    </form>
</body>
</html>
