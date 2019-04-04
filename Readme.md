<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# ASPxGridView - How to create the ShowBlanksValue and ShowNonBlanksValue items


<p>By design, GridViewDataComboBoxColumn does not render (Blank) and (NonBlank) items if the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewGridViewDataColumnSettings_HeaderFilterModetopic"><u>HeaderFilterMode</u></a> property is set to <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewHeaderFilterModeEnumtopic"><u>CheckedList</u></a>. However, you can add these items in the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewASPxGridView_HeaderFilterFillItemstopic"><u>HeaderFilterFillItems</u></a> event handler. Just call the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewFilterValue_CreateShowBlanksValuetopic"><u>FilterValue.CreateShowBlanksValue</u></a> and <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewFilterValue_CreateShowNonBlanksValuetopic"><u>FilterValue.CreateShowNonBlanksValue</u></a> methods. </p>

<br/>


