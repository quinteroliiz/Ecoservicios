<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/MasterPage.master" AutoEventWireup="true" CodeFile="ListadoAsistencia.aspx.cs" Inherits="Presentacion_ListadoAsistencia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="titulopanel" Runat="Server">
    <h4 class="panel-title">Lista de asistencia</h4>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidopanel" Runat="Server">
    
    <form runat="server" class="form-horizontal" style="text-align: center">
     <label class="col-md-3 control-label" style="text-align:center">Lista de asistencia</label>
         <table class="nav-justified">
                  <tr>
                      <td style="height: 17px">
                      <div class="form-group">
                        <label class="col-md-3 control-label">Proyecto/Lugar</label>
                         <div class="col-md-3">
                           <asp:TextBox ID="pro_lugar" runat="server" ToolTip="Proyecto/Lugar" CssClass="form-control" placeholder="Proyecto/Lugar" MaxLength="10" Width="300 px" ></asp:TextBox>
                         </div>
                        </div>
                      </td>
                      <td style="height: 17px">
                      <div class="form-group">
                        <label class="col-md-3 control-label">Fecha</label>
                         <div class="col-md-3">
                           <asp:TextBox ID="fecha" runat="server" ToolTip="Fecha" CssClass="form-control" placeholder="aaaa-mm-dd" MaxLength="10" Width="300 px" TextMode="Date"></asp:TextBox>
                         </div>
                        </div>
                      </td>
                  </tr>
                  <tr>
                      <td style="height: 17px">
                      <div class="form-group">
                        <label class="col-md-3 control-label">Tema</label>
                         <div class="col-md-3">
                           <asp:TextBox ID="tema" runat="server" ToolTip="Nombre del tema" CssClass="form-control" placeholder="Nombre del tema" MaxLength="10" Width="300 px"></asp:TextBox>
                         </div>
                        </div>
                      </td>
                      <td style="height: 17px">
                      <div class="form-group">
                        <label class="col-md-3 control-label">Hora Inicio</label>
                         <div class="col-md-3">
                           <asp:TextBox ID="hora_inicio" runat="server" ToolTip="Hora Inicio" CssClass="form-control" placeholder="Hora Inicio" MaxLength="10" Width="300 px"></asp:TextBox>
                         </div>
                        </div>
                      </td>
                      <td style="height: 17px">
                      <div class="form-group">
                        <label class="col-md-3 control-label">Hora Final</label>
                         <div class="col-md-3">
                           <asp:TextBox ID="hora_final" runat="server" ToolTip="Hora Final" CssClass="form-control" placeholder="Hora Final" MaxLength="10" Width="300 px"></asp:TextBox>
                         </div>
                        </div>
                      </td>
                  </tr>
            </table>
        <table class="nav-justified">
                  <tr>
                      <td style="height: 17px">
                      <div class="form-group">
                        <label class="col-md-3 control-label">Nombre y Apellidos</label>
                         <div class="col-md-3">
                           <asp:TextBox ID="nomb_ape" runat="server" ToolTip="Proyecto/Lugar" CssClass="form-control" placeholder="Proyecto/Lugar" MaxLength="10" Width="300 px" ></asp:TextBox>
                         </div>
                        </div>
                      </td>
                      <td style="height: 17px">
                      <div class="form-group">
                        <label class="col-md-3 control-label">Cedula</label>
                         <div class="col-md-3">
                           <asp:TextBox ID="cedula" runat="server" ToolTip="Cedula" CssClass="form-control" placeholder="Cedula" MaxLength="10" Width="300 px" ></asp:TextBox>
                         </div>
                        </div>
                      </td>
                      <td style="height: 17px">
                      <div class="form-group">
                        <label class="col-md-3 control-label">Cargo</label>
                         <div class="col-md-3">
                             <asp:DropDownList ID="DDL_cargo" runat="server"></asp:DropDownList> 
                         </div>
                        </div>
                      </td>
                       <td style="height: 17px">
                      <div class="form-group">
                        <label class="col-md-3 control-label">Firma</label>
                         <div class="col-md-3">
                           <asp:TextBox ID="firma" runat="server" ToolTip="firma" CssClass="form-control" placeholder="Firma" MaxLength="10" Width="300 px"></asp:TextBox>
                         </div>
                        </div>
                      </td>
                  </tr>
            </table>
        <div class="form-group">
                        <label class="col-md-3 control-label">Responsable</label>
                         <div class="col-md-3">
                           <asp:TextBox ID="responsable" runat="server" ToolTip="Responsable" CssClass="form-control" placeholder="Responsable" MaxLength="10" Width="300 px"></asp:TextBox>
                         </div>
                        </div>





    </form>
</asp:Content>

