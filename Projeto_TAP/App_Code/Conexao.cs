using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Conexao
/// </summary>
public class Conexao
{
    static string stringBanco = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\TADS\Projeto_TADS_Professor\Projeto_TADS\Projeto_TAP\App_Data\Projeto.mdf;Integrated Security=True";

        static SqlConnection conn = null;

        public static SqlConnection AbrirConexao()
        {
            conn = new SqlConnection(stringBanco);

            try
            {
                conn.Open();
            }
            catch (Exception ex)
            {
                return null;
            }

            return conn;
        }

        public static void FecharConexao()
        {
            if (conn != null)
            {
                conn.Close();
            }
        }
}