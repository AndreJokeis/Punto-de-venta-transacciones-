using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PracticaTransacciones_Productos.Data
{
    internal class Product
    {
        public string barCode       { get; set; }
        public string name          { get; set; }
        public string supplier      { get; set; }
        public int    pieces        { get; set; }
        public float  price         { get; set; }
        public bool   discontinued  { get; set; }
        public string category      { get; set; }
    }
}
