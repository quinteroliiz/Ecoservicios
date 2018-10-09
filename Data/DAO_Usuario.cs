using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;
using Encapsular;

namespace Data
{
    public class DAO_Usuario
    {
        public DataTable login(EUsuario user)
        {
            DataTable Usuario = new DataTable();
            MySqlConnection conection = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyBd"].ConnectionString);

            try
            {
                MySqlDataAdapter dataAdapter = new MySqlDataAdapter("sp_login", conection);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                dataAdapter.SelectCommand.Parameters.Add("user_usuario", MySqlDbType.VarChar, 50).Value = user.UserName;
                dataAdapter.SelectCommand.Parameters.Add("pass_usuario", MySqlDbType.VarChar, 50).Value = user.Clave;

                conection.Open();
                dataAdapter.Fill(Usuario);
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
            return Usuario;
        }
    }
}
