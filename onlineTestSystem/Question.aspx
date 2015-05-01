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

     <div class="page-header" style="margin-top:30px">
        <h1>Genrate Test</h1>
    </div>
    <div style="margin-left:20%; margin-right:20%">
    <form1 class="form-horizontal">

        <div class="form-group">
            <label class="col-sm-2 control-label">Class</label>
            <div class="col-sm-10">
                <asp:DropDownList CssClass="form-control" ID="ddlClass" runat="server" style="width:40%"></asp:DropDownList>
            </div>
        </div>

          <div class="form-group">
            <label class="col-sm-2 control-label">Subject</label>
            <div class="col-sm-10">
                <asp:DropDownList CssClass="form-control" ID="ddlSubject" runat="server" style="width:40%"></asp:DropDownList>
            </div>
        </div>

        <div style="margin-left:10%; margin-right:10%; border:solid; border-color:black;">

            <div class="form-group" style="margin-left:5%; margin-right:5%">
            <label class="col-sm-2 control-label">Question</label>
            <div class="col-sm-10">
                <asp:TextBox CssClass="form-control" ID="txtQuestion" runat="server" style="width:70%"></asp:TextBox>
            </div>
               </div>
            <div class="form-group">
                <div class="col-sm-5" style="float:right" >
                <asp:Button CssClass="form-control" style="float:right; margin-right: 10px;" Text="Save" runat="server" />
                </div>
            </div>
        

        </div>





    </form1>
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
