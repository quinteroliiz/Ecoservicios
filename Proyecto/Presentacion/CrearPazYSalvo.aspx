<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/MasterPage.master" AutoEventWireup="true" CodeFile="~/Logica/CrearPazYSalvo.aspx.cs" Inherits="Presentacion_CrearPazYSalvo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="titulopanel" Runat="Server">Nuevo Paz y Salvo
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidopanel" Runat="Server">
    <form runat="server" class="form-horizontal">
        <asp:Panel ID="Panel1" runat="server">
            <div class="form-group">
              <label class="col-md-3 control-label">Cedula</label>
              <div class="col-md-9">
                  <asp:textbox id="cc_empleado" runat="server" tooltip="Cedula del empleado" cssclass="form-control" placeholder="Cedula del empleado" maxlength="150" width="300 px"></asp:textbox>
                <asp:Button ID="B_buscar" runat="server" Text="Consultar" /> 
              </div>
                
        </div>
        </asp:Panel>
        
        <table cellpadding="0" cellspacing="0" class="nav-justified ">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Cedula"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 21px">
                    <asp:Label ID="Label3" runat="server" Text="Cargo"></asp:Label>
                </td>
                <td style="height: 21px">
                    <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td style="height: 21px">
                    <asp:Label ID="Label4" runat="server" Text="Area"></asp:Label>
                </td>
                <td style="height: 21px">
                    <asp:TextBox ID="TextBox4" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 17px"></td>
                <td style="height: 17px"></td>
                <td style="height: 17px"></td>
                <td style="height: 17px"></td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:Label ID="Label5" runat="server" Text="Fecha Retiro"></asp:Label>
                    <asp:TextBox ID="TextBox5" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:Label ID="Label6" runat="server" Text="Motivo del Retiro"></asp:Label>
                    <asp:TextBox ID="TextBox6" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
        </table>

        <table cellpadding="0" cellspacing="0" class="nav-justified">
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="ALMACEN/SUPEVISOR"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label11" runat="server" Text="Observaciones de herramientas/materiales/equipos/ dotación	"></asp:Label>
                </td>
                <td>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="CONTABILIDAD"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label12" runat="server" Text="Observaciones de: Saldo años anteriores/prestamos/anticipos/ otros	"></asp:Label>
                </td>
                <td>
                    <asp:CheckBox ID="CheckBox2" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="TALENTO HUMANO"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label13" runat="server" Text="Observaciones de : documentos / carnet	"></asp:Label>
                </td>
                <td>
                    <asp:CheckBox ID="CheckBox3" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="TÉCNICOS MTO/DIRECTOR"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label14" runat="server" Text="Observaciones de : Vehículos, equipos, herramientas.	"></asp:Label>
                </td>
                <td>
                    <asp:CheckBox ID="CheckBox4" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </form>
</asp:Content>

