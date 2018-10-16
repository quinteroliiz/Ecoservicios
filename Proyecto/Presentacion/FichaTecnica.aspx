<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/MasterPage.master" AutoEventWireup="true" CodeFile="~/Logica/FichaTecnica.aspx.cs" Inherits="Presentacion_FichaTecnica" %>

<asp:Content ID="Content1" ContentPlaceHolderID="titulopanel" Runat="Server">
    <h4 class="panel-title">Ficha Técnica de capacitación</h4>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidopanel" Runat="Server">
    <form runat="server" class="form-horizontal" style="text-align: justify">
         <div class="form-group">
              <label class="col-md-3 control-label">Nombre de la capacitación</label>
              <div class="col-md-9">
                   <asp:TextBox ID="nombre_capacitacion" runat="server" ToolTip="Nombre de la capacitación" CssClass="form-control" placeholder="Nombre de la capacitación" MaxLength="150" Width="300 px"></asp:TextBox>
              </div>
        </div>
        <div class="form-group">
              <label class="col-md-3 control-label">Fecha de Programada</label>
              <div class="col-md-9">
                   <asp:TextBox ID="fecha_programada" runat="server" ToolTip="Fecha de Programada" CssClass="form-control" placeholder="aaaa-mm-dd" MaxLength="10" Width="300 px" TextMode="Date"></asp:TextBox>
              </div>
        </div>
    
        <div class="form-group">
              <label class="col-md-3 control-label">Alcance/población objetivo</label>
              <div class="col-md-9">
                   <asp:TextBox ID="alcance_objetivo" runat="server" ToolTip="Alcance/población objetivo" CssClass="form-control" placeholder="Alcance/población objetivo" MaxLength="150" Width="300 px"></asp:TextBox>
              </div>
        </div>
        <div class="form-group">
              <label class="col-md-3 control-label">Objetivo </label>
              <div class="col-md-9">
                   <asp:TextBox ID="objetivo" runat="server" ToolTip="Ojetivo" CssClass="form-control" placeholder="Objetivo"  MaxLength="150" Width="500 px"></asp:TextBox>
              </div>
        </div>
        <div class="form-group">
              <label class="col-md-3 control-label">Metodología </label>
              <div class="col-md-9">
                   <asp:TextBox ID="metodología" runat="server"  ToolTip="Metodologia" CssClass="form-control" placeholder="Metodologia" MaxLength="150" Width="500 px"></asp:TextBox>
              </div>
        </div>
        <table class="nav-justified">
                  <tr>
                      <td style="height: 17px">
                        <div class="form-group">
                         <label class="col-md-3 control-label">Número de sesiones</label>
                             <div class="col-md-9">
                          <asp:TextBox ID="num_sesiones" runat="server"  ToolTip="Número de sesiones" CssClass="form-control" placeholder="Número de sesiones" MaxLength="150" Width="500 px"></asp:TextBox>
                             </div>
                            </div>
                       </td>
                  </tr>
                  <tr>
                      <td style="height: 17px">
                        <div class="form-group">
                         <label class="col-md-3 control-label">Duración/Sesión</label>
                             <div class="col-md-9">
                            <asp:TextBox ID="duración" runat="server"  ToolTip="Duración/Sesión" CssClass="form-control" placeholder="Duración/Sesión" MaxLength="150" Width="500 px"></asp:TextBox>
                             </div>
                            </div>
                       </td>
                  </tr>
         </table>
        <div class="form-group">
              <label class="col-md-3 control-label">Contenido </label>
              <div class="col-md-9">
                   <asp:TextBox ID="contenido" runat="server" ToolTip="Contenido" CssClass="form-control" placeholder="contenido" MaxLength="150" Width="500 px"></asp:TextBox>
              </div>
        </div>
        <div class="form-group">
              <label class="col-md-3 control-label">Metodología de evaluación de conocimientos </label>
              <div class="col-md-9">
                   <asp:TextBox ID="metodo_cono" runat="server" ToolTip="Metodología de evaluación de conocimientos" CssClass="form-control" placeholder="Metodología de evaluación de conocimientos" MaxLength="150" Width="500 px"></asp:TextBox>
              </div>
        </div>
         <table class="nav-justified">
                  <tr>
                      <td style="height: 17px">
                        <div class="form-group">
                         <label class="col-md-3 control-label">Pregunta</label>
                             <div class="col-md-9">
                          <asp:TextBox ID="pregunta" runat="server"  ToolTip="Pregunta" CssClass="form-control" placeholder="Pregunta" MaxLength="150" Width="500 px"></asp:TextBox>
                             </div>
                            </div>
                       </td>
                  </tr>
                  <tr>
                      <td style="height: 17px">
                        <div class="form-group">
                         <label class="col-md-3 control-label">Puntaje</label>
                             <div class="col-md-9">
                            <asp:TextBox ID="puntaje" runat="server"  ToolTip="Puntaje" CssClass="form-control" placeholder="Puntaje" MaxLength="150" Width="500 px"></asp:TextBox>
                             </div>
                            </div>
                       </td>
                  </tr>
         </table>

      <div class="form-group">
              <label class="col-md-3 control-label">Nombre del capacitador </label>
              <div class="col-md-9">
                   <asp:TextBox ID="nom_capacitador" runat="server" ToolTip="Nombre del capacitador" CssClass="form-control" placeholder="Nombre del capacitador" MaxLength="150" Width="300 px"></asp:TextBox>
              </div>
        </div>
      <div class="form-group">
              <label class="col-md-3 control-label">Cedula del capacitador </label>
              <div class="col-md-9">
                   <asp:TextBox ID="ced_capacitador" runat="server" ToolTip="Cedula del capacitador" CssClass="form-control" placeholder="Cedula del capacitador" MaxLength="150" Width="300 px"></asp:TextBox>
              </div>
        </div>
    </form>
</asp:Content>

