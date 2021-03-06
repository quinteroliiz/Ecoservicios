﻿using Encapsular;
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
    public class DAO_Aspirante
    {
        public DataTable mostrarAspirante()
        {
            DataTable Empleado = new DataTable();
            MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyBd"].ConnectionString);

            try
            {
                MySqlDataAdapter dataAdapter = new MySqlDataAdapter("sp_muestra_aspirante", conection);
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
        public void eliminarAspirante(int id_aspirante)
        {
            DataTable Empleado = new DataTable();
            MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyBd"].ConnectionString);

            try
            {
                MySqlDataAdapter dataAdapter = new MySqlDataAdapter("sp_eliminar_aspirante", conection);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                dataAdapter.SelectCommand.Parameters.Add("_id_aspirante", MySqlDbType.Int32).Value = id_aspirante;
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
        public DataTable creaAspirante(EAspirante eAspirante)
        {

            DataTable datos = new DataTable();
            MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyBd"].ConnectionString);

            try
            {
                MySqlDataAdapter dataAdapter = new MySqlDataAdapter("sp_nuevo_aspirante", conection);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                dataAdapter.SelectCommand.Parameters.Add("_id_aspirante", MySqlDbType.Int32).Value = eAspirante.Id;
                dataAdapter.SelectCommand.Parameters.Add("_cedula_aspirante", MySqlDbType.Int32).Value = eAspirante.Id;
                dataAdapter.SelectCommand.Parameters.Add("_nombre_aspirante", MySqlDbType.VarChar,100).Value = eAspirante.Nombre;
                dataAdapter.SelectCommand.Parameters.Add("_apellido_aspirante", MySqlDbType.VarChar, 100).Value = eAspirante.Apellido;
                dataAdapter.SelectCommand.Parameters.Add("_direccion_aspirante", MySqlDbType.VarChar, 150).Value = eAspirante.Direccion;
                dataAdapter.SelectCommand.Parameters.Add("_telefono_aspirante", MySqlDbType.VarChar, 45).Value = eAspirante.Telefono;




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

        public DataTable mostrarPostulacion()
        {
            DataTable Empleado = new DataTable();
            MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyBd"].ConnectionString);

            try
            {
                MySqlDataAdapter dataAdapter = new MySqlDataAdapter("sp_mostrar_postulacion", conection);
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
        public void eliminarPostulacion(int id_postulacion)
        {
            DataTable Empleado = new DataTable();
            MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyBd"].ConnectionString);

            try
            {
                MySqlDataAdapter dataAdapter = new MySqlDataAdapter("sp_eliminar_postulacion", conection);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                dataAdapter.SelectCommand.Parameters.Add("_id_postulacion", MySqlDbType.Int32).Value = id_postulacion;
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
        public DataTable mostrarCargos()
        {
            DataTable Empleado = new DataTable();
            MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyBd"].ConnectionString);

            try
            {
                MySqlDataAdapter dataAdapter = new MySqlDataAdapter("sp_muestra_cargo", conection);
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
        public DataTable creaPostulacion(EAspirante eAspirante)
        {

            DataTable datos = new DataTable();
            MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyBd"].ConnectionString);

            try
            {
                MySqlDataAdapter dataAdapter = new MySqlDataAdapter("sp_nueva_postulacion", conection);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                dataAdapter.SelectCommand.Parameters.Add("_id_postulacion", MySqlDbType.Int32).Value = eAspirante.IdPostulacion;
                dataAdapter.SelectCommand.Parameters.Add("_id_aspirante", MySqlDbType.Int32).Value = eAspirante.Id;
                dataAdapter.SelectCommand.Parameters.Add("_id_solicitud", MySqlDbType.Int32).Value = eAspirante.IdCargo;
                dataAdapter.SelectCommand.Parameters.Add("_fecha_entrevista", MySqlDbType.Date).Value = eAspirante.FechaEntrevista;
                dataAdapter.SelectCommand.Parameters.Add("_id_usuarioEntrevista", MySqlDbType.Int32).Value = eAspirante.IdEntrevistador;
                dataAdapter.SelectCommand.Parameters.Add("_concepto", MySqlDbType.Text).Value = eAspirante.Concepto;
                dataAdapter.SelectCommand.Parameters.Add("_id_estado", MySqlDbType.Int32).Value = eAspirante.IdEstado;




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
