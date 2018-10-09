<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/MasterPage.master" AutoEventWireup="true" CodeFile="~/Logica/Empleado.aspx.cs" Inherits="Presentacion_Empleado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="titulopanel" Runat="Server"><h4 class="panel-title">Empleado</h4>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidopanel" Runat="Server">
    <form runat="server">
        <asp:Button ID="B_crear_empleado" runat="server" Text="Nuevo empleado" CssClass="btn btn-success m-r-5" OnClick="B_crear_empleado_Click" />
        <br />
        <br />
        <br />
        
    <asp:GridView ID="GV_empleado" runat="server" AutoGenerateColumns="False" DataSourceID="ODS_Empleado" CssClass="table" AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="id_empleado" HeaderText="Id" />
            <asp:BoundField DataField="nombre_empleado" HeaderText="Nombre" />
            <asp:BoundField DataField="apellido_empleado" HeaderText="Apellido" />
            <asp:BoundField DataField="direccion_empleado" HeaderText="Direccion" />
            <asp:BoundField DataField="telefono_empleado" HeaderText="Telefono" />
            <asp:BoundField DataField="talla_botas" HeaderText="Botas" />
            <asp:BoundField DataField="talla_overol" HeaderText="Overol" />
            <asp:BoundField HeaderText="Impermeable" DataField="talla_impermeable" />
        </Columns>
    </asp:GridView>
        <asp:ObjectDataSource ID="ODS_Empleado" runat="server" SelectMethod="mostrarEmpleado" TypeName="Data.DAO_Empleado"></asp:ObjectDataSource>
        </form>
</asp:Content>

