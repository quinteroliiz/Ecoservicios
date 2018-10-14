using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Encapsular;
using Data;

public partial class Presentacion_CrearEmpleado : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void B_nuevo_Click(object sender, EventArgs e)
    {
        EEmpleado eEmpleado = new EEmpleado();
        eEmpleado.Id = Int32.Parse(id_empleado.Text);
        eEmpleado.Nombre = nombre_empleado.Text;
        eEmpleado.Apellido = apellido_empleado.Text;
        eEmpleado.Direccion = direccion_empleado.Text;
        eEmpleado.Telefono = telefono_empleado.Text;
        eEmpleado.FechaNac = fecha_nacimiento.Text;
        eEmpleado.EstadoId = Int32.Parse(DDL_estado.SelectedValue);
        eEmpleado.FechaExp = fecha_expedicion.Text;
        eEmpleado.LugarExp = lugar_expedicion.Text;
        eEmpleado.GrupoSang = grupo_sanguineo.Text;
        eEmpleado.Genero = genero.SelectedItem.Text;
        eEmpleado.NumHijos = Int16.Parse(genero.SelectedValue);
        eEmpleado.Escolaridad = escolaridad.Text;
        eEmpleado.Ciudad = ciudad.Text;
        eEmpleado.TelContacto = tel_contacto.Text;
        eEmpleado.NomContacto1 = nom_contacto.Text;
        eEmpleado.Observaciones = observaciones.Text;

        DAO_Empleado dEmpleado = new DAO_Empleado();
        dEmpleado.creaEmpleado(eEmpleado);
        id_empleado.Text = "";
        nombre_empleado.Text = "";
        apellido_empleado.Text = "";
        direccion_empleado.Text = "";
        telefono_empleado.Text = "";
        fecha_nacimiento.Text = "";
        fecha_expedicion.Text = "";
        lugar_expedicion.Text = "";
        grupo_sanguineo.Text = "";
        escolaridad.Text = "";
        ciudad.Text = "";
        tel_contacto.Text = "";
        nom_contacto.Text = "";
        observaciones.Text = "";

    }

    protected void B_cancelar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Empleado.aspx");
    }
}