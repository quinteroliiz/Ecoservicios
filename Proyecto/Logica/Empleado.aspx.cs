using Data;
using Encapsular;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Presentacion_Empleado : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void B_crear_empleado_Click(object sender, EventArgs e)
    {
        Response.Redirect("CrearEmpleado.aspx");
    }

    protected void B_consultar_Click(object sender, EventArgs e)
    {

    }

    protected void B_modificar_Click(object sender, EventArgs e)
    {
                
    }

    protected void GV_empleado_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        DAO_Empleado dEmpleado = new DAO_Empleado();
        EEmpleado eEmpleado = new EEmpleado();
        if (e.CommandName == "Modificar")
        {
            int rowIndex = int.Parse(e.CommandArgument.ToString());
            string val = this.GV_empleado.DataKeys[rowIndex]["id_empleado"].ToString();
            Session["idEmpleado"] = val;
            Response.Redirect("ModificarEmpleado.aspx");
        }
        else if(e.CommandName == "Eliminar")
        {
            int rowIndex = int.Parse(e.CommandArgument.ToString());
            string val = this.GV_empleado.DataKeys[rowIndex]["id_empleado"].ToString();
            eEmpleado.Id = Int32.Parse(val);
            dEmpleado.eliminarEmpleado(eEmpleado);
            GV_empleado.DataBind();
        }
    }

    protected void B_eliminar_Click(object sender, EventArgs e)
    {

    }
}