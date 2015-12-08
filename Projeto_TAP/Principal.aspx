<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Principal.aspx.cs" Inherits="Principal" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <!-- Incluindo o CSS do Bootstrap -->
    <link href="Content/css/bootstrap.css" rel="stylesheet" media="screen" type="text/css" />

    <script type="text/javascript" src="Content/js/jquery-1.11.3.js"></script>
    <script type="text/javascript" src="Content/js/bootstrap.js"></script>
    <title></title>
</head>

<body>

    <div class="col-md-12">

        <nav class="navbar navbar-default">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand" href="Principal.aspx">Principal</a>
                </div>
                <div>
                    <ul class="nav navbar-nav">
                        <li><a href="#">Cadastrar</a></li>            
                        <li><a href="#">Consultar</a></li>
                        <li><a href="#">Relatórios</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" >Sistema<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Meus Dados</a></li>
                                <li><a href="Seguranca.aspx">Segurança</a></li>
                                <li><a href="#">Links Externos</a></li>
                            </ul>
                        </li>
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="Default.aspx">
                                <span class="glyphicon glyphicon-log-out"></span> Sair
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>

    <div class="col-md-10 col-md-offset-1" >
        <div class="container-fluid">
            <div class="jumbotron">
                <h1>Exemplo de Navbar</h1>
                <p></p>
                <p></p>
            </div>
        </div>
    </div>

    <div class="col-md-6 col-md-offset-3">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Panel title</h3>
            </div>
            <div class="panel-body">
                Panel content
            </div>
        </div>

        <div class="alert alert-success">
            <button type="button" class="close" data-dismiss="alert" >&times;</button>
            Sucesso! Seu primeiro Alerta!.
        </div>
    </div>

</body>
</html>
