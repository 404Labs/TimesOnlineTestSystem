<%@ Page Title="Questions" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="Question.aspx.cs" Inherits="onlineTestSystem.Question" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%-- <style type="text/css">
        .auto-style1 {
            height: 22px
        }
        .auto-style5 {
            width: 205px;
        }
    </style>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-top: 100px"></div>
    <div class="page-header" style="margin-top: 30px">
        <h1>Add Question</h1>
    </div>
    <div class="form-inline">
        <div class="form-group">
            <label>Class</label>
            <asp:DropDownList CssClass="form-control" ID="ddlClass" runat="server">
                <asp:ListItem>Select Class</asp:ListItem>
                <asp:ListItem Text="GMAT" Value="1"></asp:ListItem>
                <asp:ListItem Text="IELTS" Value="2"></asp:ListItem>
                <asp:ListItem Text="MCAT" Value="3"></asp:ListItem>
                <asp:ListItem Text="ECAT" Value="4"></asp:ListItem>
                <asp:ListItem Text="BCAT" Value="5"></asp:ListItem>
                <asp:ListItem Text="SAT" Value="6"></asp:ListItem>
            </asp:DropDownList>

        </div>
        <div class="form-group">
            <label>Subject</label>

            <asp:DropDownList CssClass="form-control" ID="ddlSubject" runat="server">
                <asp:ListItem>Select Subject</asp:ListItem>
                <asp:ListItem Text="Mathematics" Value="1"></asp:ListItem>
                <asp:ListItem Text="Physics" Value="2"></asp:ListItem>
                <asp:ListItem Text="Chemistry" Value="3"></asp:ListItem>
                <asp:ListItem Text="English" Value="4"></asp:ListItem>
                <asp:ListItem Text="Biology" Value="5"></asp:ListItem>
                <asp:ListItem Text="General Knowledge" Value="6"></asp:ListItem>
            </asp:DropDownList>

        </div>
        <div class="form-group">

            <label>Chapter</label>

            <asp:DropDownList ID="ddlChapter" CssClass="form-control" runat="server">
                <asp:ListItem>Select Chapter</asp:ListItem>
                <asp:ListItem Text="Chapter 1" Value="1"></asp:ListItem>
                <asp:ListItem Text="Chapter 2" Value="2"></asp:ListItem>
                <asp:ListItem Text="Chapter 3" Value="3"></asp:ListItem>
                <asp:ListItem Text="Chapter 4" Value="4"></asp:ListItem>
                <asp:ListItem Text="Chapter 5" Value="5"></asp:ListItem>
            </asp:DropDownList>

        </div>
    </div>
    <div class="page-header" style="margin-top: 30px"></div>
    <div class="form-horizontal">

        <div class="form-group">
            <label class="col-sm-1 control-label">Question</label>
            <div class="col-sm-10">
                <asp:TextBox CssClass="form-control" ID="txtQuestion" runat="server" TextMode="MultiLine"></asp:TextBox>
            </div>
        </div>
    </div>


    <div class="form-group">
        <label class="col-sm-2 control-label">Number of Options</label>
        <div class="col-sm-10">
            <asp:DropDownList CssClass="form-control" ID="ddlNumOFOpt" runat="server" Style="width: 25%" OnSelectedIndexChanged="ddlNumOFOpt_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem>Select Number</asp:ListItem>
                <asp:ListItem Text="1" Value="1"></asp:ListItem>
                <asp:ListItem Text="2" Value="2"></asp:ListItem>
                <asp:ListItem Text="3" Value="3"></asp:ListItem>
                <asp:ListItem Text="4" Value="4"></asp:ListItem>
                <asp:ListItem Text="5" Value="5"></asp:ListItem>

            </asp:DropDownList>
        </div>
    </div>
    <asp:Panel ID="Panel1" runat="server"></asp:Panel>
    <div class="form-group">
        <div class="col-sm-offset-3 col-sm-10">

            <asp:Button class="btn btn-primary btn-lg btn-block" ID="btnSave" Text="Save" runat="server" Style="margin-top: 10px;margin-bottom:10px; width: 25%" OnClick="btnSave_Click" />
        </div>
    </div>

</asp:Content>


<%--<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>College</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div class="page-header">
                <h1>College</h1>
            </div>
            <div class="row"></div>
            <form1 class="form-horizontal" id="contact-form" method="get" action="">

                <div class="form-group">
                    <label class="col-sm-2 control-label">College Name</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtCollegeName" class="form-control" runat="server" Width="200px" required></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Short Name</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtShortName" class="form-control" runat="server" Width="200px" required></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Address</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtAddress" class="form-control" runat="server" Width="200px" required></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Contact</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtContact" class="form-control" runat="server" Width="200px" required></asp:TextBox>
                    </div>
                </div>              
                <div class="form-group">

                    <label class="col-sm-2 control-label">Gender</label>
                    <div class="col-sm-6">
                        <asp:RadioButtonList ID="ddlGender" runat="server" class="input-group-addon" Width="300px" RepeatDirection="Horizontal">
                            <asp:ListItem Value="1">Male</asp:ListItem>
                            <asp:ListItem Value="0">Female</asp:ListItem>
                        </asp:RadioButtonList>

                    </div>
                </div>           
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                            <asp:button id="btnCollegeAdd" class="btn btn-default btn-lg" runat="server" text="Add" onclick="btnadd_Click" />
                    </div>
                </div>
    </div>
    </form>
</body>
</html>--%>
