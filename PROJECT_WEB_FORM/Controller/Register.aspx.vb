Imports System.Data.SqlClient

Public Class _Register
    Inherits Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnLoginR_Click(sender As Object, e As EventArgs) Handles btnLoginR.Click
        Response.Redirect("~/Default.aspx")
    End Sub

    Protected Sub btnRegisterR_Click(sender As Object, e As EventArgs) Handles btnRegisterR.Click

        Dim email As String = txtEmailR.Text
        Dim fullName As String = txtFullNameR.Text
        Dim password As String = txtPasswordR.Text

        Dim connect As New SqlConnection("Data Source=DESKTOP-SPMPBPE;Initial Catalog=DB_MVC_VB_Net;Integrated Security=True")
        Dim sql As String = "INSERT INTO [user](full_name,password,email,manager)" &
                            " VALUES(@FullName, @Password, @Email,0)"
        Dim command As New SqlCommand(sql, connect)
        command.Parameters.AddWithValue("@Email", email)
        command.Parameters.AddWithValue("@Password", password)
        command.Parameters.AddWithValue("@FullName", fullName)

        connect.Open()
        Dim result As Integer = command.ExecuteNonQuery()
        connect.Close()

        If result > 0 Then

            Response.Redirect("~/Default")

        End If

    End Sub
End Class