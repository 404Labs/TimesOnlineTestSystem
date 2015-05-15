<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="onlineTestSystem.Result" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-top: 100px"></div>
    <div class="page-header" style="margin-top: 30px">
        <h1>Result</h1>

    </div>
    <div class="form-horizontal">


        <div class="form-group">
            <asp:Label ID="lblResult" class="col-sm-4 control-label" runat="server" Style="font-weight: bold; font-size: large"></asp:Label>
        </div>
        </div>
</asp:Content>
