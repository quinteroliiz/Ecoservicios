using Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Presentacion_Postulacion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void B_eliminar_Click(object sender, EventArgs e)
    {

    }

    protected void GV_Postulacion_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Eliminar")
        {
            int rowIndex = int.Parse(e.CommandArgument.ToString());
            string val = this.GV_Postulacion.DataKeys[rowIndex]["id_postulacion"].ToString();
            DAO_Aspirante dAspirante = new DAO_Aspirante();
            dAspirante.eliminarPostulacion(Int32.Parse(val));
            GV_Postulacion.DataBind();
        }
    }

    protected void B_nueva_postulacion_Click(object sender, EventArgs e)
    {
        Response.Redirect("Entrevista.aspx");
    }
}