using Data;
using Encapsular;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Presentacion_Entrevista : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void B_nuevo_Click(object sender, EventArgs e)
    {
        EAspirante eAspirante = new EAspirante();
        DAO_Aspirante dAspirante = new DAO_Aspirante();
        eAspirante.IdPostulacion = int.Parse(id_postulacion.Text);
        eAspirante.Id = int.Parse(DDL_aspirante.SelectedValue);
        eAspirante.IdCargo = int.Parse(DDL_cargo.SelectedValue);
        eAspirante.FechaEntrevista = fecha_entrevista.Text;
        eAspirante.IdEntrevistador = int.Parse(id_entrevistador.Text);
        eAspirante.Concepto = observaciones.Text;
        eAspirante.IdEstado = int.Parse(DDL_Estado.SelectedValue);

        dAspirante.creaPostulacion(eAspirante);
        id_postulacion.Text = "";
        fecha_entrevista.Text = "";
        observaciones.Text = "";

    }

    protected void B_cancelar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Postulacion.aspx");
    }
}