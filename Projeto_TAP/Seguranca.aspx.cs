using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Seguranca2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Deletar")
        {
            int linha = int.Parse((string)e.CommandArgument);
            int id = int.Parse(GridView1.Rows[linha].Cells[0].Text);

            bool del = Usuario.Deletar(id);

            if(del)
            {
                Response.Redirect("Seguranca.aspx");
            }
            else
            {
                Response.Redirect("Seguranca.aspx");
            }
        }
    }

    public void Cadastrar(object sender, EventArgs e)
    {

    }
}