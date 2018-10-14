using Data;
using Encapsular;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Presentacion_ModificarEmpleado : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["idEmpleado"] == null)
        {
            Response.Redirect("Empleado.aspx");
        }
        else
        {
            EEmpleado eEmpleado = new EEmpleado();
            DAO_Empleado dEmpleado = new DAO_Empleado();
            eEmpleado.Id = Int32.Parse(Session["idEmpleado"].ToString());
            DataTable DatosEmpleado = dEmpleado.mostrarEmpleado(eEmpleado);
            id_empleado.Text = DatosEmpleado.Rows[0]["id_empleado"].ToString();
            nombre_empleado.Text = DatosEmpleado.Rows[0]["nombre_empleado"].ToString();
            apellido_empleado.Text = DatosEmpleado.Rows[0]["apellido_empleado"].ToString();
            direccion_empleado.Text = DatosEmpleado.Rows[0]["direccion_empleado"].ToString();
            telefono_empleado.Text = DatosEmpleado.Rows[0]["telefono_empleado"].ToString();
            string[] fecha = DatosEmpleado.Rows[0]["fecha_nacimiento"].ToString().Split(" ".ToCharArray());
            fecha_nacimiento.Text = fecha[0];
            DDL_estado.SelectedValue = DatosEmpleado.Rows[0]["id_estado"].ToString();
            fecha = DatosEmpleado.Rows[0]["fecha_expedicion"].ToString().Split(" ".ToCharArray());
            fecha_expedicion.Text = fecha[0];
            lugar_expedicion.Text = DatosEmpleado.Rows[0]["lugar_expedicion"].ToString();
            grupo_sanguineo.Text = DatosEmpleado.Rows[0]["grupo_sanguineo"].ToString();
            genero.SelectedValue = DatosEmpleado.Rows[0]["genero"].ToString();
            num_hijos.SelectedValue = DatosEmpleado.Rows[0]["num_hijos"].ToString();
            escolaridad.Text = DatosEmpleado.Rows[0]["escolaridad"].ToString();
            ciudad.Text = DatosEmpleado.Rows[0]["ciudad"].ToString();
            tel_contacto.Text = DatosEmpleado.Rows[0]["tel_contacto"].ToString();
            nom_contacto.Text = DatosEmpleado.Rows[0]["nom_contacto"].ToString();
            observaciones.Text = DatosEmpleado.Rows[0]["observaciones"].ToString();
        }
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
        eEmpleado.Genero = genero.SelectedValue;
        eEmpleado.NumHijos = Int16.Parse(num_hijos.SelectedValue);
        eEmpleado.Escolaridad = escolaridad.Text;
        eEmpleado.Ciudad = ciudad.Text;
        eEmpleado.TelContacto = tel_contacto.Text;
        eEmpleado.NomContacto1 = nom_contacto.Text;
        eEmpleado.Observaciones = observaciones.Text;

        DAO_Empleado dEmpleado = new DAO_Empleado();
        dEmpleado.modificarEmpleado(eEmpleado);
        Response.Redirect("Empleado.aspx");
        Session["idEmpleado"] = null;
    }

    protected void fecha_expedicion_TextChanged(object sender, EventArgs e)
    {

    }

    protected void B_cancelar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Empleado.aspx");
    }

    protected void genero_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}