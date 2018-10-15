<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/MasterPage.master" AutoEventWireup="true" CodeFile="~/Logica/Entrevista.aspx.cs" Inherits="Presentacion_Entrevista" %>

<asp:Content ID="Content1" ContentPlaceHolderID="titulopanel" Runat="Server">
    <h4 class="panel-title">Entrevista</h4>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidopanel" Runat="Server">
    <form runat="server" class="form-horizontal" style="text-align: center">
        <div class="form-group">
              <label class="col-md-3 control-label">Identificacion</label>
              <div class="col-md-9">
                  <asp:textbox id="id_postulacion" runat="server" tooltip="Identificacion" cssclass="form-control" placeholder="Identificacion" maxlength="10" width="300 px"></asp:textbox>
              </div>
        </div>
        <div class="form-group">
              <label class="col-md-3 control-label">Aspirante</label>
              <div class="col-md-9">
                  <asp:DropDownList ID="DDL_aspirante" runat="server" CssClass="form-control" Width="300px" DataSourceID="ODS_aspirante" DataTextField="cc_aspirante" DataValueField="id_aspirante"></asp:DropDownList>
                  <asp:ObjectDataSource ID="ODS_aspirante" runat="server" SelectMethod="mostrarAspirante" TypeName="Data.DAO_Aspirante"></asp:ObjectDataSource>
              </div>
        </div>
        <div class="form-group">
              <label class="col-md-3 control-label">Cargo</label>
              <div class="col-md-9">
                 <asp:DropDownList ID="DDL_cargo" runat="server" CssClass="form-control" Width="300px" DataSourceID="ODS_cargo" DataTextField="nombre_cargo" DataValueField="id_cargo"></asp:DropDownList>
                  <asp:ObjectDataSource ID="ODS_cargo" runat="server" SelectMethod="mostrarCargos" TypeName="Data.DAO_Aspirante"></asp:ObjectDataSource>
              </div>
        </div>
        <div class="form-group">
              <label class="col-md-3 control-label">Fecha</label>
              <div class="col-md-9">
                   <asp:TextBox ID="fecha_entrevista" runat="server" ToolTip="aaaa-mm-dd" CssClass="form-control" placeholder="aaaa-mm-dd" MaxLength="150" Width="300 px"></asp:TextBox>
              </div>
        </div>
        <div class="form-group">
              <label class="col-md-3 control-label">Codigo Entrevistador</label>
              <div class="col-md-9">
                   <asp:TextBox ID="id_entrevistador" runat="server" ToolTip="Codigo Entrevistador" CssClass="form-control"  MaxLength="10" Width="300 px"></asp:TextBox>
              </div>
        </div>
        <div class="form-group">
              <label class="col-md-3 control-label">Concepto</label>
              <div class="col-md-9">
                   <asp:TextBox ID="observaciones" runat="server" ToolTip="observaciones" CssClass="form-control"  MaxLength="255" Width="300" TextMode="MultiLine" Rows="2"></asp:TextBox>
              </div>
        </div>
        <div class="form-group">
              <label class="col-md-3 control-label">Estado</label>
               <asp:DropDownList ID="DDL_Estado" runat="server" CssClass="form-control" Width="300px" AutoPostBack="True" DataSourceID="ODS_estado" DataTextField="nombre_estado" DataValueField="id_estados"></asp:DropDownList>

              <asp:ObjectDataSource ID="ODS_estado" runat="server" SelectMethod="mostrarEstado" TypeName="Data.DAO_Empleado"></asp:ObjectDataSource>

              <div class="col-md-9">
              </div>
        </div>
        <div class="form-group">
              <div style="text-align: center">
                  <asp:Button ID="B_nuevo" runat="server" Text="Guardar" CssClass="btn btn-success m-r-5 m-b-5" OnClick="B_nuevo_Click" />
                  <asp:Button ID="B_cancelar" runat="server" Text="Cancelar" CssClass="btn btn-danger m-r-5 m-b-5" OnClick="B_cancelar_Click" />
              </div>
        </div>
    </form>
</asp:Content>

