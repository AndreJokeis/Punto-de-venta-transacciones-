using PracticaTransacciones_Productos.Data;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PracticaTransacciones_Productos
{
    public partial class frmMenu : Form
    {
        List <Product> products = new List <Product> ();

        public frmMenu()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtBuscar.Text)) {
                MessageBox.Show("Ingrese un producto primero");
            }
            else
            {
                SQL sql = new SQL();

                Product product = sql.BuscarProducto(txtBuscar.Text);

                if(product != null)
                {
                    if (!products.Any(x=>x.barCode==product.barCode))
                    {
                        products.Add(product);
                        dgvProductos.DataSource = null;
                        dgvProductos.DataSource = products;

                        dgvProductos.Columns["barCode"].HeaderText = "barCode";
                        dgvProductos.Columns["name"].HeaderText = "Nombre";
                        dgvProductos.Columns["supplier"].HeaderText = "Proveedor";
                        dgvProductos.Columns["pieces"].HeaderText = "Cantidad";
                        dgvProductos.Columns["price"].HeaderText = "Precio";
                        dgvProductos.Columns["discontinued"].HeaderText = "Descontinuado";
                        dgvProductos.Columns["category"].HeaderText = "Categoria";
                    }

                    txtBuscar.Text = "";
                }
            }
        }

        private void btnDescontinuar_Click(object sender, EventArgs e)
        {
            SQL sql = new SQL();

            if (sql.Discontinue(products))
            {
                dgvProductos.DataSource = null;
                MessageBox.Show("Datos actualizados correctamente");

                products = new List<Product>();
            }
        }
    }
}
