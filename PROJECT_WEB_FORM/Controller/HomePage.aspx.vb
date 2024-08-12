Imports System.Data.SqlClient

Public Class _HomePage
    Inherits Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

        If Not IsPostBack Then
            Dim loginCookie As HttpCookie = Request.Cookies("UserLogin")
            If loginCookie IsNot Nothing Then
                Dim username As String = loginCookie("Username")
            Else
                Response.Redirect("~/Default.aspx")
            End If
        End If

        Dim products As List(Of Product) = New List(Of Product)()

        Dim connect As New SqlConnection("Data Source=DESKTOP-SPMPBPE;Initial Catalog=DB_MVC_VB_Net;Integrated Security=True")
        Dim sql As String = "SELECT * FROM product"
        Dim cmd As New SqlCommand(sql, connect)

        connect.Open()
        Dim dataReader As SqlDataReader = cmd.ExecuteReader()

        While dataReader.Read()
            Dim product As New Product()
            product.id = Convert.ToDecimal(dataReader("Id"))
            product.productName = dataReader("product_name").ToString()
            product.image = dataReader("image").ToString()
            product.price = Convert.ToDecimal(dataReader("price"))
            product.description = dataReader("description").ToString()
            products.Add(product)
        End While

        connect.Close()
        Repeater2.DataSource = products
        Repeater2.DataBind()

    End Sub

    Protected Sub Repeater2_ItemCommand(ByVal source As Object, ByVal e As RepeaterCommandEventArgs)
        If e.CommandName = "AddToCart" Then
            Dim productId As String = TryCast(e.CommandArgument, String)

        End If
    End Sub


End Class
