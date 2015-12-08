using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Usuario
/// </summary>
public class Usuario
{

    public Usuario()
    {
    }

    int id;
    string nome, usuario, senha, email;

    public int Id
    {
        get { return id; }
        set { id = value; }
    }

    public string Email
    {
        get { return email; }
        set { email = value; }
    }

    public string Senha
    {
        get { return senha; }
        set { senha = value; }
    }

    public string Usuario1
    {
        get { return usuario; }
        set { usuario = value; }
    }

    public string Nome
    {
        get { return nome; }
        set { nome = value; }
    }


    public static Boolean Deletar(int id)
    {
        SqlConnection conexao = Conexao.AbrirConexao();

        if (conexao != null)
        {
            try
            {
                string sql = String.Format(@"DELETE FROM Usuarios Where Id = '{0}'", id);
                SqlCommand comm = new SqlCommand(sql, conexao);
                comm.ExecuteNonQuery();
                Conexao.FecharConexao();
                return true;
            }
            catch (Exception ex)
            {
                //Falha ao deletar usuário
                return false;
            }
        }
        else
        {
            //Falha na Conexão Por favor tente mais tarde
        }
        return false;
    }

    public static Boolean Cadastrar(Usuario user)
    {
        SqlConnection conexao = Conexao.AbrirConexao();

        if (conexao != null)
        {
            try
            {
                string sql = String.Format(@"INSERT INTO Usuarios (Nome, usuario, senha, email) VALUES ('{0}','{1}','{2}','{3}')", user.nome, user.usuario, user.senha, user.email);
                SqlCommand comm = new SqlCommand(sql, conexao);
                comm.ExecuteNonQuery();
                Conexao.FecharConexao();
                return true;
            }
            catch (Exception ex)
            {
                //Falha ao cadatrar usuário
                return false;
            }
        }
        else
        {
            //Falha na Conexão Por favor tente mais tarde
        }
        return false;
    }
}