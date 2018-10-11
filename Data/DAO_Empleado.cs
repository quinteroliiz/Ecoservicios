using Encapsular;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data
{
    public class DAO_Empleado
    {
        public DataTable mostrarEmpleado()
        {
            DataTable Empleado = new DataTable();
            MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyBd"].ConnectionString);

            try
            {
                MySqlDataAdapter dataAdapter = new MySqlDataAdapter("sp_muestra_empleado", conection);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

                conection.Open();
                dataAdapter.Fill(Empleado);
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
            finally
            {
                if (conection != null)
                {
                    conection.Close();
                }
            }
            return Empleado;
        }
        public DataTable mostrarEstado()
        {
            DataTable Estado = new DataTable();
            MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyBd"].ConnectionString);

            try
            {
                MySqlDataAdapter dataAdapter = new MySqlDataAdapter("sp_muestra_estado", conection);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

                conection.Open();
                dataAdapter.Fill(Estado);
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
            finally
            {
                if (conection != null)
                {
                    conection.Close();
                }
            }
            return Estado;
        }
        public DataTable creaEmpleado(EEmpleado eEmpleado)
        {

            DataTable datos = new DataTable();
            MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyBd"].ConnectionString);

            try
            {
                MySqlDataAdapter dataAdapter = new MySqlDataAdapter("sp_nuevo_empleado", conection);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                dataAdapter.SelectCommand.Parameters.Add("_id_empleado", MySqlDbType.Int32).Value = eEmpleado.Id;
                dataAdapter.SelectCommand.Parameters.Add("_nombre_empleado", MySqlDbType.TinyText).Value = eEmpleado.Nombre;
                dataAdapter.SelectCommand.Parameters.Add("_apellido_empleado", MySqlDbType.TinyText).Value = eEmpleado.Apellido;
                dataAdapter.SelectCommand.Parameters.Add("_direccion_empleado", MySqlDbType.TinyText).Value = eEmpleado.Direccion;
                dataAdapter.SelectCommand.Parameters.Add("_telefono_empleado", MySqlDbType.TinyText).Value = eEmpleado.Telefono;
                dataAdapter.SelectCommand.Parameters.Add("_fecha_nacimiento", MySqlDbType.Date).Value = eEmpleado.FechaNac;
                dataAdapter.SelectCommand.Parameters.Add("_id_estado", MySqlDbType.Int32).Value = eEmpleado.EstadoId;
                dataAdapter.SelectCommand.Parameters.Add("_fecha_expedicion", MySqlDbType.Date).Value = eEmpleado.FechaExp;
                dataAdapter.SelectCommand.Parameters.Add("_lugar_expedicion", MySqlDbType.VarChar,45).Value = eEmpleado.LugarExp;
                dataAdapter.SelectCommand.Parameters.Add("_grupo_sanguineo", MySqlDbType.VarChar, 4).Value = eEmpleado.GrupoSang;
                dataAdapter.SelectCommand.Parameters.Add("_genero", MySqlDbType.VarChar, 45).Value = eEmpleado.Genero;
                dataAdapter.SelectCommand.Parameters.Add("_num_hijos", MySqlDbType.Int32).Value = eEmpleado.NumHijos;
                dataAdapter.SelectCommand.Parameters.Add("_escolaridad", MySqlDbType.VarChar, 45).Value = eEmpleado.Escolaridad;
                dataAdapter.SelectCommand.Parameters.Add("_ciudad", MySqlDbType.VarChar, 45).Value = eEmpleado.Ciudad;
                dataAdapter.SelectCommand.Parameters.Add("_tel_contacto", MySqlDbType.VarChar, 45).Value = eEmpleado.TelContacto;
                dataAdapter.SelectCommand.Parameters.Add("_nom_contacto", MySqlDbType.VarChar, 45).Value = eEmpleado.NomContacto1;
                dataAdapter.SelectCommand.Parameters.Add("_talla_botas", MySqlDbType.VarChar, 4).Value = eEmpleado.TallaBotas;
                dataAdapter.SelectCommand.Parameters.Add("_talla_overol", MySqlDbType.VarChar, 4).Value = eEmpleado.TallaOverol;
                dataAdapter.SelectCommand.Parameters.Add("_talla_impermeable", MySqlDbType.VarChar, 4).Value = eEmpleado.TallaImpermeable;
                dataAdapter.SelectCommand.Parameters.Add("_observaciones", MySqlDbType.Text).Value = eEmpleado.Observaciones;



                conection.Open();
                dataAdapter.Fill(datos);
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
            finally
            {
                if (conection != null)
                {
                    conection.Close();
                }
            }
            return datos;
        }
        public DataTable mostrarEmpleado(EEmpleado eEmpleado)
        {
            DataTable Empleado = new DataTable();
            MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyBd"].ConnectionString);

            try
            {
                MySqlDataAdapter dataAdapter = new MySqlDataAdapter("sp_mostrar_empleado", conection);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                dataAdapter.SelectCommand.Parameters.Add("_id_empleado", MySqlDbType.Int32).Value = eEmpleado.Id;
                conection.Open();
                dataAdapter.Fill(Empleado);
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
            finally
            {
                if (conection != null)
                {
                    conection.Close();
                }
            }
            return Empleado;
        }
        public void eliminarEmpleado(EEmpleado eEmpleado)
        {
            DataTable Empleado = new DataTable();
            MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyBd"].ConnectionString);

            try
            {
                MySqlDataAdapter dataAdapter = new MySqlDataAdapter("sp_eliminar_empleado", conection);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                dataAdapter.SelectCommand.Parameters.Add("_id_empleado", MySqlDbType.Int32).Value = eEmpleado.Id;
                conection.Open();
                dataAdapter.Fill(Empleado);
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
            finally
            {
                if (conection != null)
                {
                    conection.Close();
                }
            }
           
        }
        public DataTable modificarEmpleado(EEmpleado eEmpleado)
        {

            DataTable datos = new DataTable();
            MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyBd"].ConnectionString);

            try
            {
                MySqlDataAdapter dataAdapter = new MySqlDataAdapter("sp_modificar_empleado", conection);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                dataAdapter.SelectCommand.Parameters.Add("_id_empleado", MySqlDbType.Int32).Value = eEmpleado.Id;
                dataAdapter.SelectCommand.Parameters.Add("_nombre_empleado", MySqlDbType.TinyText).Value = eEmpleado.Nombre;
                dataAdapter.SelectCommand.Parameters.Add("_apellido_empleado", MySqlDbType.TinyText).Value = eEmpleado.Apellido;
                dataAdapter.SelectCommand.Parameters.Add("_direccion_empleado", MySqlDbType.TinyText).Value = eEmpleado.Direccion;
                dataAdapter.SelectCommand.Parameters.Add("_telefono_empleado", MySqlDbType.TinyText).Value = eEmpleado.Telefono;
               // dataAdapter.SelectCommand.Parameters.Add("_fecha_nacimiento", MySqlDbType.Date).Value = eEmpleado.FechaNac;
                dataAdapter.SelectCommand.Parameters.Add("_id_estado", MySqlDbType.Int32).Value = eEmpleado.EstadoId;
             //   dataAdapter.SelectCommand.Parameters.Add("_fecha_expedicion", MySqlDbType.Date).Value = eEmpleado.FechaExp;
                dataAdapter.SelectCommand.Parameters.Add("_lugar_expedicion", MySqlDbType.VarChar, 45).Value = eEmpleado.LugarExp;
                dataAdapter.SelectCommand.Parameters.Add("_grupo_sanguineo", MySqlDbType.VarChar, 4).Value = eEmpleado.GrupoSang;
                dataAdapter.SelectCommand.Parameters.Add("_genero", MySqlDbType.VarChar, 45).Value = eEmpleado.Genero;
                dataAdapter.SelectCommand.Parameters.Add("_num_hijos", MySqlDbType.Int32).Value = eEmpleado.NumHijos;
                dataAdapter.SelectCommand.Parameters.Add("_escolaridad", MySqlDbType.VarChar, 45).Value = eEmpleado.Escolaridad;
                dataAdapter.SelectCommand.Parameters.Add("_ciudad", MySqlDbType.VarChar, 45).Value = eEmpleado.Ciudad;
                dataAdapter.SelectCommand.Parameters.Add("_tel_contacto", MySqlDbType.VarChar, 45).Value = eEmpleado.TelContacto;
                dataAdapter.SelectCommand.Parameters.Add("_nom_contacto", MySqlDbType.VarChar, 45).Value = eEmpleado.NomContacto1;
                dataAdapter.SelectCommand.Parameters.Add("_talla_botas", MySqlDbType.VarChar, 4).Value = eEmpleado.TallaBotas;
                dataAdapter.SelectCommand.Parameters.Add("_talla_overol", MySqlDbType.VarChar, 4).Value = eEmpleado.TallaOverol;
                dataAdapter.SelectCommand.Parameters.Add("_talla_impermeable", MySqlDbType.VarChar, 4).Value = eEmpleado.TallaImpermeable;
                dataAdapter.SelectCommand.Parameters.Add("_observaciones", MySqlDbType.Text).Value = eEmpleado.Observaciones;



                conection.Open();
                dataAdapter.Fill(datos);
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
            finally
            {
                if (conection != null)
                {
                    conection.Close();
                }
            }
            return datos;
        }
    }
}
