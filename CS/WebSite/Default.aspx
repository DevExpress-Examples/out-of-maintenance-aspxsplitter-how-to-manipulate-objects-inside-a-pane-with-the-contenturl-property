<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs"
    Inherits="Default" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <script type="text/javascript">
        function OnSelectedIndexChanged(s, e) {
            var contentIFrame = splitter.GetPaneByName("pnExternalPage").GetContentIFrame();
            var contentIFrameWindow = contentIFrame.contentWindow;
            var contentTextBox = contentIFrameWindow.clientTbContent;
            if(contentTextBox)
                contentTextBox.SetText(s.GetText());
        }
    </script>
    <form id="form1" runat="server">
    <dx:ASPxSplitter ID="splt" runat="server" ClientInstanceName="splitter">
        <Panes>
            <dx:SplitterPane>
                <ContentCollection>
                    <dx:SplitterContentControl ID="SplitterContentControl1" runat="server">
                        <dx:ASPxComboBox ID="cmb" runat="server" ClientInstanceName="clientComboBox">
                            <Items>
                                <dx:ListEditItem Text="DevExpress Home" Value="Home" />
                                <dx:ListEditItem Text="DevExpress Support" Value="SC" />
                                <dx:ListEditItem Text="DevExpress Search" Value="Search" />
                            </Items>
                            <ClientSideEvents SelectedIndexChanged="OnSelectedIndexChanged" />
                        </dx:ASPxComboBox>
                    </dx:SplitterContentControl>
                </ContentCollection>
            </dx:SplitterPane>
            <dx:SplitterPane ContentUrl="~/ContentPageWithTextbox.aspx" Name="pnExternalPage">
            </dx:SplitterPane>
        </Panes>
    </dx:ASPxSplitter>
    </form>
</body>
</html>
