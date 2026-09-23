using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace StudentEvent1
{
    public partial class Register : System.Web.UI.Page
    {
       
            string connectionString =
                ConfigurationManager.ConnectionStrings[
                    "MySqlConnection"
                ].ConnectionString;
            protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string fullName = txtFullName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text.Trim();
            string phone = txtPhone.Text.Trim();
            string gender = rblGender.SelectedValue;
            string studentClass = txtClass.Text.Trim();

            if (fullName == "" ||
                email == "" ||
                password == "")
            {
                lblMessage.Text =
                    "Vui lòng nhập đầy đủ thông tin bắt buộc.";

                return;
            }

            try
            {
                using (MySqlConnection conn =
                       new MySqlConnection(connectionString))
                {
                    conn.Open();

                    string checkSql =
                        "SELECT COUNT(*) FROM Users WHERE Email = @Email";

                    using (MySqlCommand checkCmd =
                           new MySqlCommand(checkSql, conn))
                    {
                        checkCmd.Parameters.AddWithValue(
                            "@Email", email);

                        int count =
                            Convert.ToInt32(
                                checkCmd.ExecuteScalar());

                        if (count > 0)
                        {
                            lblMessage.Text =
                                "Email này đã tồn tại.";

                            return;
                        }
                    }


                    string sql = @"
                        INSERT INTO Users
                        (
                            FullName,
                            Email,
                            Password,
                            Phone,
                            Gender,
                            Class,
                            Role
                        )
                        VALUES
                        (
                            @FullName,
                            @Email,
                            @Password,
                            @Phone,
                            @Gender,
                            @Class,
                            'User'
                        )";


                    using (MySqlCommand cmd =
                           new MySqlCommand(sql, conn))
                    {
                        cmd.Parameters.AddWithValue(
                            "@FullName", fullName);

                        cmd.Parameters.AddWithValue(
                            "@Email", email);

                        cmd.Parameters.AddWithValue(
                            "@Password", password);

                        cmd.Parameters.AddWithValue(
                            "@Phone", phone);

                        cmd.Parameters.AddWithValue(
                            "@Gender", gender);

                        cmd.Parameters.AddWithValue(
                            "@Class", studentClass);

                        cmd.ExecuteNonQuery();
                    }
                }


                lblMessage.Text =
                    "Đăng ký tài khoản thành công!";


                txtFullName.Text = "";
                txtEmail.Text = "";
                txtPassword.Text = "";
                txtPhone.Text = "";
                txtClass.Text = "";

                rblGender.ClearSelection();
            }
            catch (Exception ex)
            {
                lblMessage.Text =
                    "Lỗi: " + ex.Message;
            }
        }
    }
}