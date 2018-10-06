using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;
using Encapsular;
using Data;

public partial class Presentacion_index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        EUsuario eusuario = new EUsuario();
        eusuario.Email = "Hola";
        eusuario.Password = "Contraseña";
  
    }

    protected void B_ingresar_Click(object sender, EventArgs e)
    {
        if (TB_email.Text == "" || TB_pass.Text == "")
        {
            Response.Write("<script>window.alert('Campos Vacios');</script>");
        }
        else
        {
            
        }
    }
}