using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PracticaTransacciones_Productos.Data
{
    internal class SQL
    {
        private readonly string ConnectionString = "Server=localhost;Database=tienda;Uid=root;Pwd=root;";
        private readonly string buscar = "select * from productos where barcode=@barCode;";
        private readonly string descontinuar = "update productos set discontinued=1 where barCode=@barCode;";


        public Product BuscarProducto(string barCode)
        {
            using (MySqlConnection connection = new MySqlConnection(ConnectionString))
            {
                connection.Open();

                using (MySqlCommand command = new MySqlCommand(buscar, connection))
                {
                    command.Parameters.AddWithValue("@barCode", barCode);

                    try
                    {
                        using (MySqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                Product product = new Product();

                                //MessageBox.Show(reader["name"].ToString());

                                product.barCode = reader["barCode"].ToString();
                                product.name = reader["name"].ToString();
                                product.supplier = reader["supplier"].ToString();
                                product.pieces = Convert.ToInt32(reader["pieces"].ToString());
                                product.price = Convert.ToSingle(reader["price"].ToString());
                                product.discontinued = Convert.ToBoolean(reader["discontinued"].ToString());
                                product.category = reader["category"].ToString();

                                return product;
                            }
                            else
                            {
                                MessageBox.Show("El producto no existe");
                            }

                        }
                    }

                    catch (MySqlException ex)
                    {

                        MessageBox.Show("Hubo un error al leer el código, inténtelo de nuevo!");
                    }
                }

                return null;
            }
        }

        public bool Discontinue(List<Product> lista)
        {
            using (MySqlConnection connection = new MySqlConnection(ConnectionString))
            {
                connection.Open();

                MySqlTransaction transaction = connection.BeginTransaction();

                try
                {
                    foreach (Product product in lista)
                    {
                        using (MySqlCommand command = new MySqlCommand(descontinuar, connection)) 
                        { 
                            command.Parameters.AddWithValue("@barCode", product.barCode);
                            command.ExecuteNonQuery(); 
                        }
                    }

                    transaction.Commit();
                    return true;
                }
                catch (Exception e)
                {
                    MessageBox.Show("Hubo un error");
                }

                transaction.Rollback();
                return false;
            }
        }

    }
}
