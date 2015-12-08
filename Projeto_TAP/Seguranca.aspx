<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Seguranca.aspx.cs" Inherits="Seguranca2" %>

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

    <div class="info-icons" style="margin-left:20px;margin-bottom:15px; margin-top:15px;">
           <i class="glyphicon glyphicon-user" style="font-size:xx-large; margin-right: 15px;"> </i>
           <asp:Label ID="Label1" runat="server" Font-Size="X-Large"> Usuários Cadastrados</asp:Label>
    </div>

    <form id="form1" runat="server" class="col-md-6">
        <div >
            <asp:GridView CssClass="table table-bordered table-hover" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="Usuarios" EnableModelValidation="True" RowStyle-HorizontalAlign="Center" OnRowCommand="GridView1_RowCommand" HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id"/>
                    <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                    <asp:BoundField DataField="usuario" HeaderText="Usuário" SortExpression="usuario" />
                    <asp:BoundField DataField="email" HeaderText="E-mail" SortExpression="email" />
                    <asp:ButtonField ButtonType="Image" ImageUrl="~/Imagens/Delete.png" HeaderText="Excluir" CommandName="Deletar" >
                        <ControlStyle Height="15px" Width="15px" />
                    </asp:ButtonField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="Usuarios" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [Nome], [usuario], [email] FROM [Usuarios] ORDER BY [Nome]"></asp:SqlDataSource>
        </div>

        <div>
            <asp:LinkButton runat="server" ID="cadastrarUsuario" CssClass="btn btn-lg btn-primary"  PostBackUrl="~/CadastrarUsuario.aspx" Text="Adicionar Usuário"/>
        </div>
        
    </form>
    
</body>
</html>
