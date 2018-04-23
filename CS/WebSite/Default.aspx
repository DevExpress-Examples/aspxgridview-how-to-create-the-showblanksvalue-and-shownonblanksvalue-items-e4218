﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="DevExpress.Web.v12.2, Version=12.2.2.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v12.2, Version=12.2.2.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASPxGridView - How to create the ShowBlanksValue aand ShowNonBlanksValue items</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxGridView ID="grid" runat="server" AutoGenerateColumns="False" 
            DataSourceID="dsCategories" KeyFieldName="CategoryID" OnHeaderFilterFillItems="grid_HeaderFilterFillItems">
            <Columns>
                <dx:GridViewDataTextColumn FieldName="CategoryID">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Description">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataComboBoxColumn FieldName="CategoryNameNull" Caption="Category Name">
                    <Settings HeaderFilterMode="CheckedList" />
                    <PropertiesComboBox DataSourceID="dsCategories" ValueField="CategoryNameNull" TextField="CategoryNameNull" />
                </dx:GridViewDataComboBoxColumn>
            </Columns>
            <Settings ShowHeaderFilterButton="true" />
        </dx:ASPxGridView>
        <asp:AccessDataSource ID="dsCategories" runat="server" DataFile="~/App_Data/nwind.mdb"
            SelectCommand="SELECT [CategoryID], [Description], [CategoryNameNull] FROM [Categories]">
        </asp:AccessDataSource>
    </div>
    <div>
    </div>
    </form>
</body>
</html>
