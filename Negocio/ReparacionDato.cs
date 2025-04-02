using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    class ReparacionDato
    {
        public class Reparacion
        {
            public int NumReparacion { get; set; }
            public string Matricula { get; set; }
            public string Descripcion { get; set; }
            public DateTime FechaEntrada { get; set; }
            public DateTime? FechaSalida { get; set; }
            public decimal Horas { get; set; }
        }

    }
}
