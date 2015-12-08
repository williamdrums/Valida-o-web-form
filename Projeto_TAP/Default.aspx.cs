using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page 
{

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void AcessarLogin(object sender, EventArgs e)
    {

        SqlConnection conexao = Conexao.AbrirConexao();

        if (conexao != null)
        {
            try
            {
                string user = usuario.Text;
                string pass = senha.Text;

                string sql = String.Format(@"Select * from Usuarios Where usuario = '{0}' AND senha = '{1}'", user, pass);

                SqlDataAdapter adp = new SqlDataAdapter(sql, conexao);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                Conexao.FecharConexao();

                if (ds.Tables[0].Rows.Count > 0)
                {
                    Response.Redirect("Principal.aspx");
                }
                else
                {
                    alerta.Text = "Usuário e/ou senha incorretos!";
                    alerta.Visible = true;
                }
            }
            catch (System.Data.SqlClient.SqlException sqlException)
            {
                Console.WriteLine(sqlException);
            }

        }
        else
        {
            //Falha na Conexao Por favor tente mais tarde
        }
        
    }

}