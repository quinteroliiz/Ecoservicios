<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/MasterPage.master" AutoEventWireup="true" CodeFile="~/Logica/Postulacion.aspx.cs" Inherits="Presentacion_Postulacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="titulopanel" Runat="Server">
    <h4 class="panel-title">Postulaciones</h4>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidopanel" Runat="Server">
    <form runat="server">
         <asp:Button ID="B_nueva_postulacion" runat="server" Text="Nueva Entrevista" CssClass="btn btn-success m-r-5" OnClick="B_nueva_postulacion_Click"  />
        <br />
        <br />
        <br />

         <asp:GridView ID="GV_Postulacion" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="table" DataKeyNames="id_postulacion" DataSourceID="ODS_postulacion" OnRowCommand="GV_Postulacion_RowCommand">
             <Columns>
                 <asp:BoundField DataField="id_postulacion" HeaderText="Id" />
                 <asp:BoundField DataField="cedula" HeaderText="Aspirante" />
                 <asp:BoundField DataField="cargo" HeaderText="Cargo" />
                 <asp:BoundField DataField="fecha" HeaderText="Fecha" />
                 <asp:BoundField DataField="entrevistador" HeaderText="Entrevistador" />
                 <asp:BoundField DataField="concepto" HeaderText="Concepto" />
                 <asp:BoundField DataField="estado" HeaderText="Estado" />
                 <asp:TemplateField>
                     <ItemTemplate>
                         <asp:Button ID="B_eliminar" runat="server" CommandArgument='<%# DataBinder.Eval(Container, "RowIndex") %>' CommandName='<%# "Eliminar" %>' CssClass="btn btn-danger" OnClick="B_eliminar_Click" ToolTip="Eliminar" />
                     </ItemTemplate>
                 </asp:TemplateField>
             </Columns>
         </asp:GridView>
         <asp:ObjectDataSource ID="ODS_postulacion" runat="server" DeleteMethod="eliminarPostulacion" SelectMethod="mostrarPostulacion" TypeName="Data.DAO_Aspirante">
             <DeleteParameters>
                 <asp:Parameter Name="id_postulacion" Type="Int32" />
             </DeleteParameters>
         </asp:ObjectDataSource>

    </form>
</asp:Content>

