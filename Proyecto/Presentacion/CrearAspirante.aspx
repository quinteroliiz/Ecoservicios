<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/MasterPage.master" AutoEventWireup="true" CodeFile="~/Logica/CrearAspirante.aspx.cs" Inherits="Presentacion_CrearAspirante" %>

<asp:Content ID="Content1" ContentPlaceHolderID="titulopanel" Runat="Server"><h4 class="panel-title">Nuevo Aspirante</h4>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidopanel" Runat="Server">
    <form runat="server" class="form-horizontal" style="text-align: center">
        <div class="form-group">
              <label class="col-md-3 control-label">Identificacion</label>
              <div class="col-md-9">
                  <asp:textbox id="id_aspirante" runat="server" tooltip="Identificacion" cssclass="form-control" placeholder="Identificacion" maxlength="10" width="300 px"></asp:textbox>
                 
              </div>
        </div>
        <div class="form-group">
              <label class="col-md-3 control-label">Cedula</label>
              <div class="col-md-9">
                  <asp:textbox id="cedula_aspirante" runat="server" tooltip="Cedula" cssclass="form-control" placeholder="Cedula" maxlength="10" width="300 px"></asp:textbox>
              </div>
        </div>
        <div class="form-group">
              <label class="col-md-3 control-label">Nombres</label>
              <div class="col-md-9">
                  <asp:textbox id="nombre_aspirante" runat="server" tooltip="Nombre del Aspirante" cssclass="form-control" placeholder="Nombre del Aspirante" maxlength="150" width="300 px"></asp:textbox>
                   
              </div>
        </div>
        <div class="form-group">
              <label class="col-md-3 control-label">Apellidos</label>
              <div class="col-md-9">
                   <asp:TextBox ID="apellido_aspirante" runat="server" ToolTip="Apellido del Aspirante" CssClass="form-control" placeholder="Apellido del Aspirante" MaxLength="150" Width="300 px"></asp:TextBox>
              </div>
        </div>
        <div class="form-group">
              <label class="col-md-3 control-label">Direccion</label>
              <div class="col-md-9">
                   <asp:TextBox ID="direccion_aspirante" runat="server" ToolTip="Direccion del Aspirante" CssClass="form-control" placeholder="Direccion del Aspirante" MaxLength="150" Width="300 px"></asp:TextBox>
              </div>
        </div>
        <div class="form-group">
              <label class="col-md-3 control-label">Telefono</label>
              <div class="col-md-9">
                   <asp:TextBox ID="telefono_aspirante" runat="server" ToolTip="Telefono del Aspirante" CssClass="form-control"  MaxLength="10" Width="300 px" TextMode="Phone"></asp:TextBox>
              </div>
        </div>
       
        <div class="form-group">
              <div style="text-align: center">
                  <asp:Button ID="B_nuevo" runat="server" Text="Crear Aspirante" CssClass="btn btn-success m-r-5 m-b-5" OnClick="B_nuevo_Click"  />
                  <asp:Button ID="B_cancelar" runat="server" Text="Cancelar" CssClass="btn btn-danger m-r-5 m-b-5" OnClick="B_cancelar_Click" />
              </div>
        </div>
    </form>
</asp:Content>

