<%@ Page Title="Đăng ký"
    Language="C#"
    AutoEventWireup="true"
    CodeBehind="Register.aspx.cs"
    Inherits="StudentEvent1.Register" %>

<!DOCTYPE html>

<html>
<head runat="server">

    <title>Đăng ký tài khoản - StudentEvent</title>

    <link href="Content/style.css"
          rel="stylesheet"
          type="text/css" />

</head>

<body>

<form id="form1" runat="server">

    <header class="header">

        <div class="logo">
            StudentEvent
        </div>

        <nav class="menu">

            <a href="Default.aspx">
                Trang chủ
            </a>

            <a href="Register.aspx">
                Đăng ký
            </a>

            <a href="Login.aspx">
                Đăng nhập
            </a>

        </nav>

    </header>


    <div class="form-page">

        <div class="form-card">

            <h1 class="form-title">
                Đăng ký tài khoản
            </h1>

            <p class="form-description">
                Tạo tài khoản để tham gia các sự kiện
            </p>


            <!-- HỌ VÀ TÊN -->

            <div class="form-group">

                <label class="form-label">
                    Họ và tên
                </label>

                <asp:TextBox
                    ID="txtFullName"
                    runat="server"
                    CssClass="form-control"
                    placeholder="Nhập họ và tên">
                </asp:TextBox>

            </div>


            <!-- EMAIL -->

            <div class="form-group">

                <label class="form-label">
                    Email
                </label>

                <asp:TextBox
                    ID="txtEmail"
                    runat="server"
                    CssClass="form-control"
                    placeholder="Nhập email">
                </asp:TextBox>

            </div>


            <!-- MẬT KHẨU -->

            <div class="form-group">

                <label class="form-label">
                    Mật khẩu
                </label>

                <asp:TextBox
                    ID="txtPassword"
                    runat="server"
                    TextMode="Password"
                    CssClass="form-control"
                    placeholder="Nhập mật khẩu">
                </asp:TextBox>

            </div>


            <!-- SỐ ĐIỆN THOẠI -->

            <div class="form-group">

                <label class="form-label">
                    Số điện thoại
                </label>

                <asp:TextBox
                    ID="txtPhone"
                    runat="server"
                    CssClass="form-control"
                    placeholder="Nhập số điện thoại">
                </asp:TextBox>

            </div>


            <!-- GIỚI TÍNH -->

            <div class="form-group">

                <label class="form-label">
                    Giới tính
                </label>

                <asp:RadioButtonList
                    ID="rblGender"
                    runat="server"
                    RepeatDirection="Horizontal">

                    <asp:ListItem
                        Text="Nam"
                        Value="Nam">
                    </asp:ListItem>

                    <asp:ListItem
                        Text="Nữ"
                        Value="Nữ">
                    </asp:ListItem>

                </asp:RadioButtonList>

            </div>


            <!-- LỚP -->

            <div class="form-group">

                <label class="form-label">
                    Lớp
                </label>

                <asp:TextBox
                    ID="txtClass"
                    runat="server"
                    CssClass="form-control"
                    placeholder="Ví dụ: K4799-CNTT1">
                </asp:TextBox>

            </div>


            <!-- NÚT ĐĂNG KÝ -->

            <asp:Button
                ID="btnRegister"
                runat="server"
                Text="Đăng ký tài khoản"
                CssClass="btn-submit"
                OnClick="btnRegister_Click" />


            <!-- THÔNG BÁO -->

            <asp:Label
                ID="lblMessage"
                runat="server"
                CssClass="message">
            </asp:Label>


            <!-- ĐĂNG NHẬP -->

            <div class="form-link">

                Đã có tài khoản?

                <a href="Login.aspx">
                    Đăng nhập
                </a>

            </div>

        </div>

    </div>


    <footer class="footer">

        StudentEvent © 2026

    </footer>

</form>

</body>
</html>