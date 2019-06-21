<!-- default file list -->
*Files to look at*:

* [ContentPageWithTextbox.aspx](./CS/WebSite/ContentPageWithTextbox.aspx) (VB: [ContentPageWithTextbox.aspx](./VB/WebSite/ContentPageWithTextbox.aspx))
* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
<!-- default file list end -->
# ASPxSplitter - How to manipulate objects inside a pane with the ContentUrl property
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e3927)**
<!-- run online end -->


<p>This example demonstrates how to manipulate the client-side programmatic objects inside <strong>ASPxSplitter's pane</strong> with a specified <strong>ContentUrl</strong> property.</p><p>- Get the content IFrame from <strong>ASPxSplitter's</strong> pane with a specified <strong>ContentUrl</strong> property via<strong> </strong>the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxSplitterScriptsASPxClientSplitterPane_GetContentUrltopic"><u>ASPxClientSplitterPane.GetContentUrl</u></a><strong> </strong>method; <br />
- Get the underlying content window object of this IFrame via the <a href="http://www.w3schools.com/jsref/prop_frame_contentwindow.asp"><strong><u>contentWindow</u></strong></a><strong> </strong>property;<br />
- Get the required object from this window and manipulate it.</p><p>How to set<strong> ASPxTextBox.Text</strong> inside a pane with a specified <strong>ContentUrl</strong> property.</p><p><strong>ContentPageWithTextbox.aspx:</strong></p>

```aspx
<dx:ASPxTextBox ID="tbContent" runat="server" Width="170px" ClientInstanceName="clientTbContent"><newline/>
</dx:ASPxTextBox>
```

<p> </p><p><br />
<strong>Default</strong><strong>.aspx:</strong></p>

```aspx
<dx:ASPxSplitter ID="splt" runat="server" ClientInstanceName="splitter"><newline/>
  <Panes><newline/>
    <dx:SplitterPane><newline/>
       <ContentCollection><newline/>
          <dx:SplitterContentControl ID="SplitterContentControl1" runat="server"><newline/>
	       <dx:ASPxComboBox ID="cmb" runat="server" ClientInstanceName="clientComboBox"><newline/>
		 <Items><newline/>
		   ...<newline/>
		 </Items><newline/>
	       <ClientSideEvents SelectedIndexChanged="OnSelectedIndexChanged" /><newline/>
	       </dx:ASPxComboBox><newline/>
        </dx:SplitterContentControl><newline/>
      </ContentCollection><newline/>
    </dx:SplitterPane><newline/>
   <dx:SplitterPane ContentUrl="~/ContentPageWithTextbox.aspx" Name="pnExternalPage"><newline/>
   </dx:SplitterPane><newline/>
  </Panes><newline/>
</dx:ASPxSplitter>
```

<p> </p>

```js
function OnSelectedIndexChanged(s, e) {<newline/>
   var contentIFrame = splitter.GetPaneByName("pnExternalPage").GetContentIFrame();<newline/>
   var contentIFrameWindow = contentIFrame.contentWindow;<newline/>
   var contentTextBox = contentIFrameWindow.clientTbContent;<newline/>
   if (contentTextBox)<newline/>
       contentTextBox.SetText(s.GetText());<newline/>
}
```

<p> </p><p><strong>See Also:</strong><br />
<a href="https://www.devexpress.com/Support/Center/p/E3614">E3614: ASPxSplitter - How to return a value from a page specified via SplitterPane.ContentUrl</a></p>

<br/>


