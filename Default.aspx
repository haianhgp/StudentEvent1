<%@ Page Title="Trang chủ"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Default.aspx.cs"
    Inherits="StudentEvent1._Default" %>


<asp:Content
    ID="BodyContent"
    ContentPlaceHolderID="MainContent"
    runat="server">


    <section class="hero">

        <div class="hero-content">

            <h1>
                Student Event
            </h1>

            <p>
                Nền tảng quản lý và đăng ký
                sự kiện dành cho sinh viên
            </p>

            <a
                href="Register.aspx"
                class="btn-main">

                Đăng ký tài khoản

            </a>

        </div>

    </section>


</asp:Content>