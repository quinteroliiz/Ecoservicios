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
}