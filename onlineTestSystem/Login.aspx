<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="onlineTestSystem.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Login</title>

    <!-- Bootstrap core CSS -->
    <link href="Layout/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            font-family: Candara;
            background: url(Layout/assets/img/back.png);
            background-color: #444;
            background: url(Layout/assets/img/pinlayer2.png),url(Layout/assets/img/pinlayer1.png),url(Layout/assets/img/back.png);
        }

        .vertical-offset-100 {
            padding-top: 100px;
        }

        .img-profile {
            margin: 0 auto 20px;
            display: block;
        }
    </style>
    <script src="js/jquery-1.10.2.min.js"></script>
    <script src="js/TweenLite.min.js"></script>
</head>
<body>
    <div class="container">
        <div class="row vertical-offset-100">
            <div class="col-md-4 col-md-offset-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Please sign in</h3>
                    </div>
                    <div class="panel-body">
                        <div>
                            <img class="img-profile" src="../Layout/assets/img/logo.png" />
                        </div>

                        <form id="Form1" runat="server" accept-charset="UTF-8" role="form" data-toggle="validator">
                            <fieldset>
                                <div class="input-group" style="margin-bottom: 15px">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <asp:TextBox ID="txtUsername" runat="server" class="form-control" placeholder="Username" name="Username" required></asp:TextBox>
                                </div>
                                <div class="input-group" style="margin-bottom: 15px">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" class="form-control" placeholder="Password" required></asp:TextBox>
                                </div>

                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-chevron-down"></i></span>
                                    <asp:DropDownList ID="ddlProgram" class="form-control" runat="server">
                                        <asp:ListItem Text="Student" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="Faculty" Value="2"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input name="remember" type="checkbox" value="Remember Me" />
                                        Remember Me 
                                    </label>
                                </div>
                                <div class="alert alert-danger" role="alert" runat="server" id="divError">
                                    <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                                    <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
                                </div>
                                <div>
                                </div>
                                <asp:Button ID="btnLogin" runat="server" Text="Login" class="btn btn-lg btn-success btn-block" OnClick="btnLogin_Click" />
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        $(document).ready(function () {
            $(document).mousemove(function (e) {
                TweenLite.to($('body'),
                   .5,
                   {
                       css:
                         {
                             backgroundPosition: "" + parseInt(event.pageX / '8') + "px " + parseInt(event.pageY / '12') + "px, " + parseInt(event.pageX / '15') + "px " + parseInt(event.pageY / '15') + "px, " + parseInt(event.pageX / '30') + "px " + parseInt(event.pageY / '30') + "px"
                         }
                   });
            });
        });
    </script>
</body>
</html>
