<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="GenerateTest.aspx.cs" Inherits="onlineTestSystem.GenerateTest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    


  <div class="page-header" style="margin-top:30px">
        <h1>Genrate Test</h1>
    </div>

    <form1 class="form-horizontal">
        <div class="form-group">
            <label class="col-sm-2 control-label">Name</label>
            <div class="col-sm-10">
            <asp:TextBox CssClass="form-control" ID="txtName" placeholder="Name" runat="server" style="width:25%"></asp:TextBox>
            </div>
        </div>
        
        <div class="row"></div>

        <div class="form-group">
            <label class="col-sm-2 control-label">Subject</label>
            <div class="col-sm-10">
            <asp:DropDownList CssClass="form-control" ID="ddlSubject" runat="server" style="width:25%"></asp:DropDownList>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">Class</label>
            <div class="col-sm-10">
                <asp:DropDownList CssClass="form-control" ID="ddlClass" runat="server" style="width:25%"></asp:DropDownList>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">Duration</label>
            <div class="col-sm-10">
                <asp:TextBox CssClass="form-control" ID="txtDuration" runat="server" style="width:25%"></asp:TextBox>
            </div>
        </div>
        <div class="row"></div>
        <div class="form-group">

            <label class="col-sm-2 control-label">Chapter</label>
            <div class="col-sm-10">
                <asp:DropDownList CssClass="form-control" runat="server" style="width:25%"></asp:DropDownList>
            </div>
        </div>
      <div class="form-group">
            <label class="col-sm-2 control-label">Number Of Questions</label>
            <div class="col-sm-10">
                <asp:TextBox CssClass="form-control" ID="txtNumOfQuestions" runat="server" style="width:25%"></asp:TextBox>
            </div>
        </div>
    </form1>
    

   
</asp:Content>
