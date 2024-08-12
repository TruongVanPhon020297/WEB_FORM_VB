Imports System.Data.SqlClient

Public Class _Default
    Inherits Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click

        Dim email As String = txtEmail.Text
        Dim password As String = txtPassword.Text

        Dim connect As New SqlConnection("Data Source=DESKTOP-SPMPBPE;Initial Catalog=DB_MVC_VB_Net;Integrated Security=True")
        Dim sql As String = "SELECT COUNT(*)" &
                            " FROM [user]" &
                            " WHERE email = @Email AND password = @Password"

        Dim command As New SqlCommand(sql, connect)
        command.Parameters.AddWithValue("@Email", email)
        command.Parameters.AddWithValue("@Password", password)

        connect.Open()
        Dim resultCount As Integer = Convert.ToInt32(command.ExecuteScalar())
        connect.Close()

        If resultCount > 0 Then

            Dim loginCookie As New HttpCookie("UserLogin")
            loginCookie.Value = email
            loginCookie.Expires = DateTime.Now.AddDays(30)

            Response.Cookies.Add(loginCookie)
            Response.Redirect("View/HomePage.aspx")

        End If

    End Sub

    Protected Sub btnRegister_Click(sender As Object, e As EventArgs) Handles btnRegister.Click
        Response.Redirect("View/Register.aspx")
    End Sub
End Class