Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports DevExpress.Web.ASPxGridView
Imports DevExpress.Web.ASPxEditors
Imports DevExpress.Web.ASPxClasses
Imports DevExpress.Web.ASPxTreeList

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub grid_HeaderFilterFillItems(ByVal sender As Object, ByVal e As ASPxGridViewHeaderFilterEventArgs)
		If e.Column.FieldName <> "CategoryNameNull" Then
			Return
		End If

		e.Values.Insert(0, FilterValue.CreateShowBlanksValue(e.Column, "Blanks"))
		e.Values.Insert(1, FilterValue.CreateShowNonBlanksValue(e.Column, "Non Blanks"))
	End Sub
End Class
