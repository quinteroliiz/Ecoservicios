﻿using Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Presentacion_Aspirante : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void B_nuevo_aspirante_Click(object sender, EventArgs e)
    {
        Response.Redirect("CrearAspirante.aspx");
    }

    protected void B_eliminar_Click(object sender, EventArgs e)
    {

    }

    protected void GV_Aspirante_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Eliminar")
        {
            int rowIndex = int.Parse(e.CommandArgument.ToString());
            string val = this.GV_Aspirante.DataKeys[rowIndex]["id_aspirante"].ToString();
            DAO_Aspirante dAspirante = new DAO_Aspirante();
            dAspirante.eliminarAspirante(int.Parse(val));
            GV_Aspirante.DataBind();
        }
    }
}