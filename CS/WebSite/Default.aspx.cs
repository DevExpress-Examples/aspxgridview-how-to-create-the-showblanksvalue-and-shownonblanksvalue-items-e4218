using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web.ASPxGridView;
using DevExpress.Web.ASPxEditors;
using DevExpress.Web.ASPxClasses;
using DevExpress.Web.ASPxTreeList;

public partial class _Default : System.Web.UI.Page {
    protected void grid_HeaderFilterFillItems(object sender, ASPxGridViewHeaderFilterEventArgs e) {
        if (e.Column.FieldName != "CategoryNameNull")
            return;

        e.Values.Insert(0, FilterValue.CreateShowBlanksValue(e.Column, "Blanks"));
        e.Values.Insert(1, FilterValue.CreateShowNonBlanksValue(e.Column, "Non Blanks"));
    }
}
