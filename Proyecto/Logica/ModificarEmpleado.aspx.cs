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
        EEmpleado eEmpleado = new EEmpleado();
        DAO_Empleado dEmpleado = new DAO_Empleado();
        eEmpleado.Id = Int32.Parse(Session["idEmpleado"].ToString());
        DataTable DatosEmpleado = dEmpleado.mostrarEmpleado(eEmpleado);
        id_empleado.Text = DatosEmpleado.Rows[0]["id_empleado"].ToString();
        nombre_empleado.Text = DatosEmpleado.Rows[0]["nombre_empleado"].ToString();
        apellido_empleado.Text = DatosEmpleado.Rows[0]["apellido_empleado"].ToString();
        direccion_empleado.Text = DatosEmpleado.Rows[0]["direccion_empleado"].ToString();
        telefono_empleado.Text = DatosEmpleado.Rows[0]["telefono_empleado"].ToString();
        //fecha_nacimiento.Text = DatosEmpleado.Rows[0]["fecha_nacimiento"].ToString();
        DDL_estado.SelectedValue = DatosEmpleado.Rows[0]["id_estado"].ToString();
      //  fecha_expedicion.Text = DatosEmpleado.Rows[0]["fecha_expedicion"].ToString();
        lugar_expedicion.Text = DatosEmpleado.Rows[0]["lugar_expedicion"].ToString();
        grupo_sanguineo.Text = DatosEmpleado.Rows[0]["grupo_sanguineo"].ToString();
        genero.SelectedValue = DatosEmpleado.Rows[0]["genero"].ToString();
        num_hijos.SelectedValue = DatosEmpleado.Rows[0]["num_hijos"].ToString();
        escolaridad.Text = DatosEmpleado.Rows[0]["escolaridad"].ToString();
        ciudad.Text = DatosEmpleado.Rows[0]["ciudad"].ToString();
        tel_contacto.Text = DatosEmpleado.Rows[0]["tel_contacto"].ToString();
        nom_contacto.Text = DatosEmpleado.Rows[0]["nom_contacto"].ToString();
        talla_botas.Text = DatosEmpleado.Rows[0]["talla_botas"].ToString();
        talla_impermeable.Text = DatosEmpleado.Rows[0]["talla_impermeable"].ToString();
        talla_overol.Text = DatosEmpleado.Rows[0]["talla_overol"].ToString();
        observaciones.Text = DatosEmpleado.Rows[0]["observaciones"].ToString();
    }

    protected void B_nuevo_Click(object sender, EventArgs e)
    {
        EEmpleado eEmpleado = new EEmpleado();
        eEmpleado.Id = Int32.Parse(id_empleado.Text);
        eEmpleado.Nombre = nombre_empleado.Text;
        eEmpleado.Apellido = apellido_empleado.Text;
        eEmpleado.Direccion = direccion_empleado.Text;
        eEmpleado.Telefono = telefono_empleado.Text;
        //eEmpleado.FechaNac = fecha_nacimiento.Text;
        eEmpleado.EstadoId = Int32.Parse(DDL_estado.SelectedValue);
      //  eEmpleado.FechaExp = fecha_expedicion.Text;
        eEmpleado.LugarExp = lugar_expedicion.Text;
        eEmpleado.GrupoSang = grupo_sanguineo.Text;
        eEmpleado.Genero = genero.SelectedItem.Text;
        eEmpleado.NumHijos = Int16.Parse(num_hijos.SelectedValue);
        eEmpleado.Escolaridad = escolaridad.Text;
        eEmpleado.Ciudad = ciudad.Text;
        eEmpleado.TelContacto = tel_contacto.Text;
        eEmpleado.NomContacto1 = nom_contacto.Text;
        eEmpleado.TallaBotas = talla_botas.Text;
        eEmpleado.TallaOverol = talla_overol.Text;
        eEmpleado.TallaImpermeable = talla_impermeable.Text;
        eEmpleado.Observaciones = observaciones.Text;

        DAO_Empleado dEmpleado = new DAO_Empleado();
        dEmpleado.modificarEmpleado(eEmpleado);
    }
}