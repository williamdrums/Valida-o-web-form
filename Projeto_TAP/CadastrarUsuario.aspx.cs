using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CadastrarUsuario : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Cadastrar(object sender, EventArgs e)
    {
        Usuario user = new Usuario();

        user.Nome = nome.Text;
        user.Email = email.Text;
        user.Usuario1 = usuario.Text;
        user.Senha = senha.Text;

        bool cadastrou = Usuario.Cadastrar(user);

        if (cadastrou)
        {
            LimparTextBox(this);
            lblMensagem.Visible = true;
            lblMensagem.Text = "Usuário Cadastrado Com Sucesso!";
            lblMensagem.CssClass = "alert alert-success";
        }
        else
        {
            lblMensagem.Visible = true;
            lblMensagem.Text = "Erro ao Cadastrar Usuário!";
            lblMensagem.CssClass = "alert alert-danger";
        }
    }

    protected void Limpar(object sender, EventArgs e)
    {
        LimparTextBox(this);
    }

    public void LimparTextBox(Control controle)
    {
        foreach (Control ctrl in controle.Controls)
        {
            //Limpa todos os campos TextBox
            if (ctrl.GetType() == typeof(TextBox))
            {
                ((TextBox)(ctrl)).Text = String.Empty;
            }

            if (ctrl.HasControls())
                LimparTextBox(ctrl);
        }
    }
}