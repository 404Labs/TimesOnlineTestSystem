<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="GenerateTest.aspx.cs" Inherits="onlineTestSystem.GenerateTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div style="margin-top: 100px"></div>
    <div class="page-header" style="margin-top: 30px">
        <h1>Genrate Test</h1>
    </div>

    <div class="form-horizontal">
        <div class="form-group">
            <label class="col-sm-2 control-label">Name</label>
            <div class="col-sm-10">
                <asp:TextBox CssClass="form-control" ID="txtName" placeholder="Name" runat="server" Style="width: 25%"></asp:TextBox>
            </div>
        </div>

        <div class="row"></div>


        <div class="form-group">
            <label class="col-sm-2 control-label">Class</label>
            <div class="col-sm-10">
                <asp:DropDownList CssClass="form-control" ID="ddlClass" runat="server" Style="width: 25%">
                    <asp:ListItem>Select Class</asp:ListItem>
                    <asp:ListItem Text="GMAT" Value="1"></asp:ListItem>
                    <asp:ListItem Text="IELTS" Value="2"></asp:ListItem>
                    <asp:ListItem Text="MCAT" Value="3"></asp:ListItem>
                    <asp:ListItem Text="ECAT" Value="4"></asp:ListItem>
                    <asp:ListItem Text="BCAT" Value="5"></asp:ListItem>
                    <asp:ListItem Text="SAT" Value="6"></asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">Subject</label>
            <div class="col-sm-10">
                <asp:DropDownList CssClass="form-control" ID="ddlSubject" runat="server" Style="width: 25%">
                    <asp:ListItem>Select Subject</asp:ListItem>
                    <asp:ListItem Text="Mathematics" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Physics" Value="2"></asp:ListItem>
                    <asp:ListItem Text="Chemistry" Value="3"></asp:ListItem>
                    <asp:ListItem Text="English" Value="4"></asp:ListItem>
                    <asp:ListItem Text="Biology" Value="5"></asp:ListItem>
                    <asp:ListItem Text="General Knowledge" Value="6"></asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div class="form-group">

            <label class="col-sm-2 control-label">Chapter</label>
            <div class="col-sm-10">
                <asp:DropDownList ID="ddlChapter" CssClass="form-control" runat="server" Style="width: 25%">
                    <asp:ListItem>Select Chapter</asp:ListItem>
                    <asp:ListItem Text="Chapter 1" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Chapter 2" Value="2"></asp:ListItem>
                    <asp:ListItem Text="Chapter 3" Value="3"></asp:ListItem>
                    <asp:ListItem Text="Chapter 4" Value="4"></asp:ListItem>
                    <asp:ListItem Text="Chapter 5" Value="5"></asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-2 control-label">Duration</label>
            <div class="col-sm-10">
                <asp:TextBox CssClass="form-control" ID="txtDuration" runat="server" Style="width: 25%"></asp:TextBox>
            </div>
        </div>
        <div class="row"></div>

        <div class="form-group">
            <label class="col-sm-2 control-label">Number Of Questions</label>
            <div class="col-sm-10">
                <asp:TextBox CssClass="form-control" ID="txtNumOfQuestions" runat="server" Style="width: 25%"></asp:TextBox>
                <asp:Label ID="lblConfirm" runat="server" Style="color: #00ff00;"> </asp:Label>
            </div>
        </div>

    </div>

    <div class="form-inline">

        <div class="col-sm-offset-3 col-sm-10">
            <asp:Button ID="btnGenerateTest" runat="server" class="btn btn-primary btn-lg btn-block" OnClick="btnGenerateTest_Click" Text="Generate Test" Style="width: 50%" />
            <asp:Button ID="btnAddQuestion" runat="server" class="btn btn-default btn-lg btn-block" OnClick="btnAddQuestion_Click" Text="Add More Questions" Style="width: 50%" />
            <%-- <asp:Button ID="btnGenerateTest" class="btn btn-primary btn-lg btn-block" runat="server" Style="width: 50%" OnClick="btnGenerateTest_Click">Generate Test</asp:Button>
            <asp:Button ID="btnAddQuestion_Click" class="btn btn-default btn-lg btn-block" Style="width: 50%" runat="server" OnClick="btnAddQuestion_Click">Block level button</asp:Button>--%>
        </div>
    </div>
</asp:Content>
