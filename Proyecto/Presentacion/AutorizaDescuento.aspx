<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/MasterPage.master" AutoEventWireup="true" CodeFile="~/Logica/AutorizaDescuento.aspx.cs" Inherits="Presentacion_AutorizaDescuento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="titulopanel" Runat="Server">
    <h4 class="panel-title">Autorización de descuento</h4>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidopanel" Runat="Server">
     <form runat="server" class="form-horizontal" style="text-align: center">
     <label class="col-md-3 control-label" style="text-align:center">Autorización de descuento</label>

     <div class="form-group">
              <table class="nav-justified">
                  <tr>
                      <td style="height: 17px">
                      <div class="form-group">
                        <label class="col-md-3 control-label">Fecha de solicitud</label>
                         <div class="col-md-3">
                           <asp:TextBox ID="fecha_solicitud" runat="server" ToolTip="Fecha de solitud de empleado" CssClass="form-control" placeholder="aaaa-mm-dd" MaxLength="10" Width="300 px" TextMode="Date"></asp:TextBox>
                         </div>
                        </div>
                      </td>
                     
                      <td style="height: 17px">
                          <div class="form-group">
                        <label class="col-md-3 control-label">Nombre colaborador</label>
                         <div class="col-md-3">
                           <asp:TextBox ID="nombre_colaborador" runat="server" ToolTip="Nombre del colaborador" CssClass="form-control" placeholder="Nombre del colaborador" MaxLength="10" Width="300 px" ></asp:TextBox>
                         </div>
                        </div>
                      </td>
                      <td style="height: 17px">
                      <div class="form-group">
                        <label class="col-md-3 control-label">Cedula</label>
                         <div class="col-md-3">
                           <asp:TextBox ID="cedula" runat="server" ToolTip="Cedula del colaborador" CssClass="form-control" placeholder="Cedula del colaborador" MaxLength="10" Width="300 px" ></asp:TextBox>
                         </div>
                        </div>
                      </td>
                  </tr>
                 <tr>
                      <td style="height: 17px">
                      <div class="form-group">
                        <label class="col-md-3 control-label">Área</label>
                         <div class="col-md-3">
                           <asp:TextBox ID="area" runat="server" ToolTip="Área del colaborador" CssClass="form-control" placeholder="Área del colaborador" MaxLength="10" Width="300 px" ></asp:TextBox>
                         </div>
                        </div>
                      </td>
                     
                      <td style="height: 17px">
                          <div class="form-group">
                        <label class="col-md-3 control-label">Cargo</label>
                         <div class="col-md-3">
                           <asp:TextBox ID="cargo" runat="server" ToolTip="Cargo del colaborador" CssClass="form-control" placeholder="Cargo del colaborador" MaxLength="10" Width="300 px" ></asp:TextBox>
                         </div>
                        </div>
                      </td>
                      <td style="height: 17px">
                      <div class="form-group">
                        <label class="col-md-3 control-label">Salario</label>
                         <div class="col-md-3">
                           <asp:TextBox ID="salario" runat="server" ToolTip="Salario del colaborador" CssClass="form-control" placeholder="Salario del colaborador" MaxLength="10" Width="300 px" TextMode="Date"></asp:TextBox>
                         </div>
                        </div>
                      </td>
                  </tr>
              </table>
            
      </div>
      <label class="col-lg-30 control-label" > Autorizo a la empresa ECOSERVICIOS S.A.S. E.S.P., descontar de mi nómina  y/o de mi liquidación definitiva: </label>
 <table class="nav-justified">
                  <tr>
                      <td style="height: 17px">
                      <div class="form-group">
                        <label class="col-md-3 control-label">La suma de:</label>
                         <div class="col-md-3">
                           <asp:TextBox ID="valor" runat="server" ToolTip="Valor a autorizar" CssClass="form-control" placeholder="Valor a autorizar" MaxLength="10" Width="300 px"></asp:TextBox>
                         </div>
                        </div>
                      </td>
                     
                      <td style="height: 17px">
                          <div class="form-group">
                        <label class="col-md-3 control-label">Valor en letras:</label>
                         <div class="col-md-3">
                           <asp:TextBox ID="vletras" runat="server" ToolTip="Valor en letras" CssClass="form-control" placeholder="Valor en letras" MaxLength="10" Width="300 px" ></asp:TextBox>
                         </div>
                        </div>
                      </td>
                  </tr>
                 </table>
         <label class="col-md-3 control-label"style="text-align:center">Descontar:</label>
         <table class="nav-justified">
                  <tr>
                      <td style="height: 17px">
                      <div class="form-group">
                        <label class="col-md-3 control-label">Quincenal</label>
                         <div class="col-md-3">
                           <asp:CheckBox ID="quincenal" runat="server" ToolTip="Quncenal" CssClass="form-control" placeholder="Quincenal" />
                         </div>
                        </div>
                      </td>
                     
                      <td style="height: 17px">
                          <div class="form-group">
                        <label class="col-md-3 control-label">Mensual</label>
                         <div class="col-md-3">
                           <asp:CheckBox ID="mensual" runat="server" ToolTip="Quncenal" CssClass="form-control" placeholder="Quincenal" />
                         </div>
                        </div>
                      </td>

                      <td style="height: 17px">
                          <div class="form-group">
                        <label class="col-md-3 control-label">Número de cuotas</label>
                         <div class="col-md-3">
                           <asp:TextBox ID="num_cuotas" runat="server" ToolTip="Número de cuotas" CssClass="form-control" placeholder="Numero de cuotas" MaxLength="10" Width="50 px" ></asp:TextBox>
                         </div>
                        </div>
                      </td>
                      <td style="height: 17px">
                          <div class="form-group">
                        <label class="col-md-3 control-label">Valor cuota</label>
                         <div class="col-md-3">
                             <asp:TextBox ID="val_cuota" runat="server" ToolTip="Valor de la cuota" CssClass="form-control" placeholder="Valor de la cuota" MaxLength="10" Width="100 px" ></asp:TextBox>
                         </div>
                        </div>
                      </td>
                  </tr>
                 </table>
          <label class="col-md-3 control-label"style="text-align:center">Concepto:</label>
         <table class="nav-justified">
                  <tr>
                      <td style="height: 17px">
                      <div class="form-group">
                        <label class="col-md-3 control-label">Perdida de Herramientas/Equipos</label>
                         <div class="col-md-3">
                           <asp:CheckBox ID="perdida" runat="server" ToolTip="Perdida de Herramientas/Equipos" CssClass="form-control" placeholder="Perdida de Herramientas/Equipos" />
                         </div>
                        </div>
                      </td>
                     
                      <td style="height: 17px">
                          <div class="form-group">
                        <label class="col-md-3 control-label">Prestamos</label>
                         <div class="col-md-3">
                           <asp:CheckBox ID="prestamos" runat="server" ToolTip="Prestamos" CssClass="form-control" placeholder="Prestamos" />
                         </div>
                        </div>
                      </td>
                      </tr>
                      <tr>
                      <td style="height: 17px">
                          <div class="form-group">
                        <label class="col-md-3 control-label">Varios (Vacunas, examen medico, dotación)</label>
                         <div class="col-md-3">
                           <asp:CheckBox ID="varios" runat="server" ToolTip="Varios (Vacunas, examen medico, dotación)" CssClass="form-control" placeholder="Varios (Vacunas, examen medico, dotación)" />
                         </div>
                        </div>
                      </td>
                      <td style="height: 17px">
                          <div class="form-group">
                        <label class="col-md-3 control-label">Otros descuentos no contemplados)</label>
                         <div class="col-md-3">
                           <asp:CheckBox ID="otros" runat="server" ToolTip="Otros descuentos no contemplados" CssClass="form-control" placeholder="Otros descuentos no contemplados" />
                         </div>
                        </div>
                      </td>
                  </tr>
                 </table>
         <div class="form-group">
              <label class="col-md-3 control-label">Observaciones</label>
              <div class="col-md-9">
                   <asp:TextBox ID="observaciones" runat="server" ToolTip="Observaciones" CssClass="form-control" placeholder="Observaciones" MaxLength="150" Width="300 px"></asp:TextBox>
              </div>
        </div>
         <table class="nav-justified">
                  <tr>
                      <td style="height: 17px">
                      <div class="form-group">
                        <label class="col-md-3 control-label">Firma</label>
                            <div class="col-md-9">
                              <asp:TextBox ID="firma" runat="server" ToolTip="Firma del colaborador" CssClass="form-control" placeholder="Firma del colaborador" MaxLength="150" Width="300 px"></asp:TextBox>
                             </div>
                      </div>
                      </td>
                     
                      <td style="height: 17px">
                          <div class="form-group">
                            <label class="col-md-3 control-label">Documento de identidad</label>
                             <div class="col-md-9">
                                 <asp:TextBox ID="doc_identidad" runat="server" ToolTip="Cedula del colaborador" CssClass="form-control" placeholder="Cedula del colaborador" MaxLength="150" Width="300 px"></asp:TextBox>
                            </div>
                          </div>
                      </td>
                      </tr>
        </table> table
         
         
     </form>
</asp:Content>

