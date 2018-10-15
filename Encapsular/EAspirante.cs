using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Encapsular
{
    public class EAspirante
    {
        private int id;
        private int cedula;
        private String nombre;
        private String apellido;
        private String direccion;
        private String telefono;
        private int idPostulacion;
        private int idCargo;
        private String fechaEntrevista;
        private int idEntrevistador;
        private String concepto;
        private int idEstado;

        public int Id
        {
            get
            {
                return id;
            }

            set
            {
                id = value;
            }
        }

        public int Cedula
        {
            get
            {
                return cedula;
            }

            set
            {
                cedula = value;
            }
        }

        public string Nombre
        {
            get
            {
                return nombre;
            }

            set
            {
                nombre = value;
            }
        }

        public string Apellido
        {
            get
            {
                return apellido;
            }

            set
            {
                apellido = value;
            }
        }

        public string Direccion
        {
            get
            {
                return direccion;
            }

            set
            {
                direccion = value;
            }
        }

        public string Telefono
        {
            get
            {
                return telefono;
            }

            set
            {
                telefono = value;
            }
        }

        public int IdPostulacion
        {
            get
            {
                return idPostulacion;
            }

            set
            {
                idPostulacion = value;
            }
        }

        public int IdCargo
        {
            get
            {
                return idCargo;
            }

            set
            {
                idCargo = value;
            }
        }

        public string FechaEntrevista
        {
            get
            {
                return fechaEntrevista;
            }

            set
            {
                fechaEntrevista = value;
            }
        }

        public int IdEntrevistador
        {
            get
            {
                return idEntrevistador;
            }

            set
            {
                idEntrevistador = value;
            }
        }

        public string Concepto
        {
            get
            {
                return concepto;
            }

            set
            {
                concepto = value;
            }
        }

        public int IdEstado
        {
            get
            {
                return idEstado;
            }

            set
            {
                idEstado = value;
            }
        }
    }
}
