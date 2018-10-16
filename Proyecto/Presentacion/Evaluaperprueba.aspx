<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/MasterPage.master" AutoEventWireup="true" CodeFile="~/Logica/Evaluaperprueba.aspx.cs" Inherits="Presentacion_evaluaperprueba" %>

<asp:Content ID="Content1" ContentPlaceHolderID="titulopanel" Runat="Server">
    <h4 class="panel-title">Evaluación periodo de prueba</h4>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidopanel" Runat="Server">
  <form runat="server" class="form-horizontal" style="text-align: justify">
        
    <div class="form-group">
              <label class="col-md-3 control-label">Nombre del empleado</label>
              <div class="col-md-9">
                   <asp:TextBox ID="nombre_empleado" runat="server" ToolTip="Nombre del empleado" CssClass="form-control" placeholder="Nombre del empleado" MaxLength="150" Width="300 px"></asp:TextBox>
              </div>
        </div>
    
        <div class="form-group">
              <label class="col-md-3 control-label">Cargo que desempeña actualmente</label>
              <div class="col-md-9">
                   <asp:TextBox ID="cargo_actual" runat="server" ToolTip="Cargo que desempeña actualmente" CssClass="form-control" placeholder="Cargo que desempeña actualmente" MaxLength="150" Width="300 px"></asp:TextBox>
              </div>
        </div>
        <div class="form-group">
              <label class="col-md-3 control-label">1. ¿Fortalezas encontradas en el periodo de prueba?: </label>
              <div class="col-md-9">
                   <asp:TextBox ID="pegunta_uno" runat="server" CssClass="form-control"  MaxLength="150" Width="600 px"></asp:TextBox>
              </div>
        </div>
        <div class="form-group">
              <label class="col-md-3 control-label">2. ¿Aspectos a mejorar durante el periodo de Prueba?: </label>
              <div class="col-md-9">
                   <asp:TextBox ID="pregunta_dos" runat="server"  CssClass="form-control" MaxLength="150" Width="600 px"></asp:TextBox>
              </div>
        </div>
        <div class="form-group">
              <label class="col-md-3 control-label">3. Como considera que podría mejorar estos aspectos. </label>
              <div class="col-md-9">
                   <asp:TextBox ID="Pregunta_tres" runat="server" CssClass="form-control" MaxLength="150" Width="600 px"></asp:TextBox>
              </div>
        </div>
      <label class="col-md-3 control-label">4. ¿Considera que Cumple con sus expectativas?:  </label>
      <table class="nav-justified">
                  <tr>
                      <td style="height: 17px">
                        <div class="form-group">
                         <label class="col-md-3 control-label">Si</label>
                             <div class="col-md-9">
                                 <asp:CheckBox ID="si" runat="server" CssClass="form-control"/>
                             </div>
                            </div>
                       </td>
                  </tr>
                  <tr>
                      <td style="height: 17px">
                        <div class="form-group">
                         <label class="col-md-3 control-label">No</label>
                             <div class="col-md-9">
                                 <asp:CheckBox ID="no" runat="server" CssClass="form-control"/>
                             </div>
                            </div>
                       </td>
                  </tr>
         </table>
      <div class="form-group">
              <label class="col-md-3 control-label">Observaciones </label>
              <div class="col-md-9">
                   <asp:TextBox ID="observaciones" runat="server" ToolTip="Observaciones" CssClass="form-control" placeholder="Observaciones" MaxLength="150" Width="500 px"></asp:TextBox>
              </div>
        </div>
      <div class="form-group">
              <label class="col-md-3 control-label">Firma evaluador </label>
              <div class="col-md-9">
                   <asp:TextBox ID="firma" runat="server" ToolTip="Firma evaluador" CssClass="form-control" placeholder="Firma evaluador" MaxLength="150" Width="500 px"></asp:TextBox>
              </div>
        </div>
    </form>
</asp:Content>

