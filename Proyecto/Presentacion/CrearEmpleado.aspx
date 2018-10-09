<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/MasterPage.master" AutoEventWireup="true" CodeFile="~/Logica/CrearEmpleado.aspx.cs" Inherits="Presentacion_CrearEmpleado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="titulopanel" Runat="Server">
    <h4 class="panel-title" style="panel-title">Nuevo Empleado</h4>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidopanel" Runat="Server">
    <form runat="server" class="form-horizontal" style="text-align: center">
        <div class="form-group">
              <label class="col-md-3 control-label">Identificacion</label>
              <div class="col-md-9">
                   <asp:TextBox ID="id_empleado" runat="server" ToolTip="Identificacion" CssClass="form-control" placeholder="Identificacion" MaxLength="10" Width="300 px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RFV_id" runat="server" ErrorMessage="*" ControlToValidate="id_empleado" CssClass="alert-danger"></asp:RequiredFieldValidator>
              </div>
        </div>
        <div class="form-group">
              <label class="col-md-3 control-label">Nombres</label>
              <div class="col-md-9">
                   <asp:TextBox ID="nombre_empleado" runat="server" ToolTip="Nombre del empleado" CssClass="form-control" placeholder="Nombre del empleado" MaxLength="150" Width="300 px"></asp:TextBox>
                   
              </div>
        </div>
        <div class="form-group">
              <label class="col-md-3 control-label">Apellidos</label>
              <div class="col-md-9">
                   <asp:TextBox ID="apellido_empleado" runat="server" ToolTip="Apellido del Empleado" CssClass="form-control" placeholder="Apellido del Empleado" MaxLength="150" Width="300 px"></asp:TextBox>
              </div>
        </div>
        <div class="form-group">
              <label class="col-md-3 control-label">Direccion</label>
              <div class="col-md-9">
                   <asp:TextBox ID="direccion_empleado" runat="server" ToolTip="Direccion del Empleado" CssClass="form-control" placeholder="Direccion del Empleado" MaxLength="150" Width="300 px"></asp:TextBox>
              </div>
        </div>
        <div class="form-group">
              <label class="col-md-3 control-label">Telefono</label>
              <div class="col-md-9">
                   <asp:TextBox ID="telefono_empleado" runat="server" ToolTip="Telefono del Empleado" CssClass="form-control"  MaxLength="10" Width="300 px" TextMode="Phone"></asp:TextBox>
              </div>
        </div>
        <div class="form-group">
              <label class="col-md-3 control-label">Fecha de Nacimiento</label>
              <div class="col-md-9">
                   <asp:TextBox ID="fecha_nacimiento" runat="server" ToolTip="Fecha de nacimiento del empleado" CssClass="form-control" placeholder="aaaa-mm-dd" MaxLength="10" Width="300 px" TextMode="Date"></asp:TextBox>
              </div>
        </div>
        <div class="form-group">
              <label class="col-md-3 control-label">Estado</label>
              <div class="col-md-9">
                  <asp:DropDownList ID="DDL_estado" runat="server" CssClass="form-control" AutoPostBack="True" DataSourceID="ODS_estado" DataTextField="nombre_estado" DataValueField="id_estados" Width="300px" placeholder="Seleccione un estado"></asp:DropDownList>
                  <asp:ObjectDataSource ID="ODS_estado" runat="server" SelectMethod="mostrarEstado" TypeName="Data.DAO_Empleado"></asp:ObjectDataSource>
              </div>
        </div>
        <div class="form-group">
              <label class="col-md-3 control-label">Fecha de Expedicion</label>
              <div class="col-md-9">
                   <asp:TextBox ID="fecha_expedicion" runat="server" ToolTip="Fecha de Expedicion del documento del empleado" CssClass="form-control" placeholder="aaaa-mm-dd" MaxLength="10" Width="300 px" TextMode="Date"></asp:TextBox>
              </div>
        </div>
        <div class="form-group">
              <label class="col-md-3 control-label">Lugar de Expedicion</label>
              <div class="col-md-9">
                   <asp:TextBox ID="lugar_expedicion" runat="server" ToolTip="lugar de Expedicion del documento del empleado" CssClass="form-control" placeholder="Lugar de Expedicion" MaxLength="45" Width="300 px"></asp:TextBox>
              </div>
        </div>
        <div class="form-group">
              <label class="col-md-3 control-label">Grupo Sanguineo</label>
              <div class="col-md-9">
                   <asp:TextBox ID="grupo_sanguineo" runat="server" ToolTip="Grupo sanguineo" CssClass="form-control"  MaxLength="5" Width="100 px"></asp:TextBox>
              </div>
        </div>
        <div class="form-group">
              <label class="col-md-3 control-label">Genero</label>
              <div class="col-md-9">
                  <asp:DropDownList ID="genero" runat="server" CssClass="form-control" Width="161px">
                      <asp:ListItem>Seleccione</asp:ListItem>
                      <asp:ListItem Value="1">Femenino</asp:ListItem>
                      <asp:ListItem Value="2">Masculino</asp:ListItem>
                  </asp:DropDownList>
              </div>
        </div>
        <div class="form-group">
              <label class="col-md-3 control-label">Numero de Hijos</label>
              <div class="col-md-9">
                  <asp:DropDownList ID="num_hijos" runat="server" CssClass="form-control" Width="80px">
                      <asp:ListItem>0</asp:ListItem>
                      <asp:ListItem>1</asp:ListItem>
                      <asp:ListItem>2</asp:ListItem>
                      <asp:ListItem>3</asp:ListItem>
                      <asp:ListItem>4</asp:ListItem>
                      <asp:ListItem>5</asp:ListItem>
                      <asp:ListItem>6</asp:ListItem>
                      <asp:ListItem>7</asp:ListItem>
                      <asp:ListItem>8</asp:ListItem>
                      <asp:ListItem>9</asp:ListItem>
                      <asp:ListItem>10</asp:ListItem>
                  </asp:DropDownList>
              </div>
        </div>
        <div class="form-group">
              <label class="col-md-3 control-label">Escolaridad</label>
              <div class="col-md-9">
                   <asp:TextBox ID="escolaridad" runat="server" ToolTip="Nivel de escolaridad" CssClass="form-control" placeholder="Nivel de escolaridad" MaxLength="45" Width="300 px"></asp:TextBox>
              </div>
        </div>
        <div class="form-group">
              <label class="col-md-3 control-label">Ciudad</label>
              <div class="col-md-9">
                   <asp:TextBox ID="ciudad" runat="server" ToolTip="Ciudad" CssClass="form-control" placeholder="Ciudad" MaxLength="45" Width="300 px"></asp:TextBox>
              </div>
        </div>
        <div class="form-group">
              <label class="col-md-3 control-label">Telefono de contacto</label>
              <div class="col-md-9">
                   <asp:TextBox ID="tel_contacto" runat="server" ToolTip="Telefono de contacto" CssClass="form-control"  MaxLength="45" Width="300 px" TextMode="Phone"></asp:TextBox>
              </div>
        </div>
        <div class="form-group">
              <label class="col-md-3 control-label">Nombre de contacto</label>
              <div class="col-md-9">
                   <asp:TextBox ID="nom_contacto" runat="server" ToolTip="Nombre de un contacto del empleado" CssClass="form-control" placeholder="Nombre de contacto" MaxLength="45" Width="300 px"></asp:TextBox>
              </div>
        </div>
        <div class="form-group">
              <label class="col-md-3 control-label">Talla de Botas</label>
              <div class="col-md-9">
                   <asp:TextBox ID="talla_botas" runat="server" ToolTip="Talla de las botas del empleado" CssClass="form-control" placeholder="Talla" MaxLength="4" Width="80 px"></asp:TextBox>
              </div>
        </div>
        <div class="form-group">
              <label class="col-md-3 control-label">Talla de Overol</label>
              <div class="col-md-9">
                   <asp:TextBox ID="talla_overol" runat="server" ToolTip="Talla del overol del empleado" CssClass="form-control" placeholder="Talla" MaxLength="4" Width="80 px"></asp:TextBox>
              </div>
        </div>
        <div class="form-group">
              <label class="col-md-3 control-label">Talla de Impermeable</label>
              <div class="col-md-9">
                   <asp:TextBox ID="talla_impermeable" runat="server" ToolTip="Talla de impermeable" CssClass="form-control" placeholder="Talla" MaxLength="4" Width="80 px"></asp:TextBox>
              </div>
        </div>
        <div class="form-group">
              <label class="col-md-3 control-label">Observaciones</label>
              <div class="col-md-9">
                   <asp:TextBox ID="observaciones" runat="server" ToolTip="observaciones" CssClass="form-control"  MaxLength="4" Width="300" TextMode="MultiLine"></asp:TextBox>
              </div>
        </div>
        <div class="form-group">
              <div style="text-align: center">
                  <asp:Button ID="B_nuevo" runat="server" Text="Crear Empleado" CssClass="btn btn-success m-r-5 m-b-5" OnClick="B_nuevo_Click" />
                  <asp:Button ID="B_cancelar" runat="server" Text="Cancelar" CssClass="btn btn-danger m-r-5 m-b-5" OnClick="B_cancelar_Click" />
              </div>
        </div>
    </form>
</asp:Content>

