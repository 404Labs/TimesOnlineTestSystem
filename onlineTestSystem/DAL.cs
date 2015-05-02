using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace onlineTestSystem
{
    public  class DAL
    {
        string connectionString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        DataTable dt;
        SqlConnection connection;
        SqlCommand command;
        SqlDataAdapter adapter;

        public DataTable selectData(string query)
        {
            connection = new SqlConnection(connectionString);
            connection.Open();
            command = new SqlCommand(query, connection);
            adapter = new SqlDataAdapter(command);
            dt = new DataTable();
            adapter.Fill(dt);
            return dt;
        }
        public int insertData(string query)
        {
            connection = new SqlConnection(connectionString);
            connection.Open();
            command = new SqlCommand(query, connection);
            int affectedRows = command.ExecuteNonQuery();
            return affectedRows;
        }
        public int updateData(string query)
        {
            connection = new SqlConnection(connectionString);
            connection.Open();
            command = new SqlCommand(query, connection);
            int affectedRows = command.ExecuteNonQuery();
            return affectedRows;
        }
        public int deleteData(string query)
        {
            connection = new SqlConnection(connectionString);
            connection.Open();
            command = new SqlCommand(query, connection);
            int affectedRows = command.ExecuteNonQuery();
            return affectedRows;
        }
    }
}