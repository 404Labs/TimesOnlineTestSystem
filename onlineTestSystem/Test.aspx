<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="onlineTestSystem.Test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--  <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>--%>

    <div style="margin-top: 100px"></div>
    <div class="page-header" style="margin-top: 30px">
        <h1>Test</h1>
        <div style="float:right;margin-top:-10px">
            <asp:LinkButton ID="lbEndTest" runat="server" OnClick="lbEndTest_Click" >End Test</asp:LinkButton>
        </div>
    </div>
    <div class="form-horizontal">


        <div class="form-group">
            <asp:Label ID="lblQuestionNumber" class="col-sm-2 control-label" runat="server" Style="font-weight: bold; font-size: large"></asp:Label>
        </div>
        <div class="form-group">
            <asp:Label ID="lblQuestion" class="col-sm control-label" runat="server" Style="font-size: large"></asp:Label>
        </div>
        <div class="radio">
            <asp:RadioButtonList ID="rblOptions" runat="server">
            </asp:RadioButtonList>
            <%-- <div class="radio">
                        <label>
                            <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                            Option one is this and that&mdash;be sure to include why it's great
                        </label>
                    </div>--%>
        </div>
        <div style="margin-left: 500px">
            <asp:Button ID="btnPrevious" class="btn btn-default btn-sm" runat="server" Style="width: 100px" Text="<< Previous" OnClick="btnPrevious_Click"></asp:Button>
            <asp:Button ID="btnNext" class="btn btn-primary btn-sm" runat="server" Style="width: 100px" Text="Next >>" OnClick="btnNext_Click"></asp:Button>
        </div>
        <%--  </ContentTemplate>
    </asp:UpdatePanel>--%>
</asp:Content>
