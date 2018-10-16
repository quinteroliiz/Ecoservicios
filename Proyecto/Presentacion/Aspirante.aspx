<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/MasterPage.master" AutoEventWireup="true" CodeFile="~/Logica/Aspirante.aspx.cs" Inherits="Presentacion_Aspirante" %>

<asp:Content ID="Content1" ContentPlaceHolderID="titulopanel" Runat="Server"><h4 class="panel-title">Aspirante</h4>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidopanel" Runat="Server">
    <form runat="server">
        <asp:Button ID="B_nuevo_aspirante" runat="server" Text="Nuevo Aspirante" CssClass="btn btn-success m-r-5" OnClick="B_nuevo_aspirante_Click" />
        <br />
        <br />
        <br />

        <asp:GridView ID="GV_Aspirante" runat="server" AutoGenerateColumns="False" CssClass="table" DataKeyNames="id_aspirante" DataSourceID="ODS_Aspirante" AllowPaging="True" OnRowCommand="GV_Aspirante_RowCommand">
            <Columns>
                <asp:BoundField DataField="id_aspirante" HeaderText="Id" />
                <asp:BoundField DataField="cc_aspirante" HeaderText="Cedula" />
                <asp:BoundField DataField="nombre_aspirante" HeaderText="Nombre" />
                <asp:BoundField DataField="apellido_aspirante" HeaderText="Apellido" />
                <asp:BoundField DataField="direccion_aspirante" HeaderText="Direccion" />
                <asp:BoundField DataField="telefono_aspirante" HeaderText="Telefono" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="B_eliminar" runat="server" CommandArgument='<%# DataBinder.Eval(Container, "RowIndex") %>' CommandName='<%# "Eliminar" %>' CssClass="btn btn-danger" OnClick="B_eliminar_Click" ToolTip="Eliminar" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="ODS_Aspirante" runat="server" DeleteMethod="eliminarAspirante" SelectMethod="mostrarAspirante" TypeName="Data.DAO_Aspirante">
            <DeleteParameters>
                <asp:Parameter Name="id_aspirante" Type="Int32" />
            </DeleteParameters>
        </asp:ObjectDataSource>

    </form>
</asp:Content>

