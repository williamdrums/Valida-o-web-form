<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CadastrarUsuario.aspx.cs" Inherits="CadastrarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Incluindo o CSS do Bootstrap -->
    <link href="Content/css/bootstrap.css" rel="stylesheet" media="screen" type="text/css" />

    <script type="text/javascript" src="Content/js/jquery-1.11.3.js"></script>
    <script type="text/javascript" src="Content/js/bootstrap.js"></script>
    <title></title>
</head>
<body>
    <form runat="server" id="form1" data-toggle="validator">
        <div class="col-md-6 col-md-offset-3" >
            <div class="panel panel-primary" style="margin-top:15px;">
                <div class="panel-heading">
                    Cadastrar Usuário
                </div>
                <div class="panel-body">
                    <div style="margin-top:10px; margin-left:5px;" >
                        <asp:TextBox runat="server" id="nome" CssClass="form-control" placeholder="Nome"/>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Preencha o campo Nome" ControlToValidate="nome">*</asp:RequiredFieldValidator>
                    </div>                    

                    <div style="margin-left:5px;margin-top:15px;">
                        <asp:TextBox runat="server" id="email" CssClass="form-control" placeholder="E-mail"/>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Preencha o campo E-mail" ControlToValidate="email">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Informe um E-mail válido!" ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    </div>
                    
                                      
                    <div style="margin-left:5px;margin-top:15px;">
                        <asp:TextBox runat="server" id="usuario" CssClass="form-control" placeholder="Usuário"/>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Preencha o campo Usuário" ControlToValidate="usuario">*</asp:RequiredFieldValidator>
                    </div>
                    
                    <div style="margin-left:5px;margin-top:15px;">
                        <asp:TextBox TextMode="Password" runat="server" id="senha" CssClass="form-control" placeholder="Senha"/>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Preencha o campo Senha" ControlToValidate="senha">*</asp:RequiredFieldValidator>
                    </div>
                    
                    <div style="margin-left:5px;margin-top:15px;">
                        <asp:TextBox TextMode="Password" runat="server" id="confirma" CssClass="form-control" placeholder="Confirme sua senha"/>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Preencha o campo Confirme" ControlToValidate="confirma">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="A senha não confere!" ControlToCompare="senha" ControlToValidate="confirma">*</asp:CompareValidator>
                    </div>
                    
                    
                    <div class="btn-group-sm" style="margin-top:15px; margin-left:5px;">
                        <asp:Button runat="server" ID="cadastrar" CssClass="btn btn-success" Text="Cadastrar" OnClick="Cadastrar"/>
                        <asp:Button runat="server" ID="limpar" CssClass="btn btn-danger" Text="Limpar" OnClick="Limpar" ValidationGroup="false"/>
                    </div>

                    <div style="margin-top:20px;">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                        <asp:Label ID="lblMensagem" runat="server" Text="" Visible="false"/>
                    </div>
                </div>
            </div>
            
        </div>
    </form>
</body>
</html>
