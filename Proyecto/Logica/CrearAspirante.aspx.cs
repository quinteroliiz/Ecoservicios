using Data;
using Encapsular;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Presentacion_CrearAspirante : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void B_nuevo_Click(object sender, EventArgs e)
    {
        EAspirante eEmpleado = new EAspirante();
        eEmpleado.Id = Int32.Parse(id_aspirante.Text);
        eEmpleado.Cedula = Int32.Parse(cedula_aspirante.Text);
        eEmpleado.Nombre = nombre_aspirante.Text;
        eEmpleado.Apellido = apellido_aspirante.Text;
        eEmpleado.Direccion = direccion_aspirante.Text;
        eEmpleado.Telefono = telefono_aspirante.Text;
        

        DAO_Aspirante dEmpleado = new DAO_Aspirante();
        dEmpleado.creaAspirante(eEmpleado);
        id_aspirante.Text = "";
        nombre_aspirante.Text = "";
        apellido_aspirante.Text = "";
        direccion_aspirante.Text = "";
        telefono_aspirante.Text = "";
       
    }

    protected void B_cancelar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Aspirante.aspx");
    }
}