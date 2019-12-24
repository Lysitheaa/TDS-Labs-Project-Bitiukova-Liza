/**
 * 
 *  How do you use this ?  
 * 
 *  First of all, you have to options
 *      1. Execute queries that require data (SELECT)
 *      2. Execute queries that not requrire any read of data (UPDATE, DELETE, INSERT)
 * 
 *  1.1  DatabaseHandler handler = DatabaseHandler.getInstance();
 *  1.2  handler.setSQL("SELECT * FROM Employee");
 *  1.3  handler.queryExecute();
 *  
 *   while (handler.reader.Read()) {
               employeename = handler.reader["Employee_firstNAme"].ToString()
            }
 * 
 * 
 * At any time you can add variables to your query using @ inside your query
 * Example SELECT * FROM Employee WHERE SSN = @SSN
 * 
 * then you call this method before executing the query
 *  handler.addParameter("@SSN","123456789");
 * 
 * When you want to execute non query 
 * just call handler.ExecuteNonQuery(); instead of queryExecute
 * 
 * - Othman
 * 
 */

using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace HRDatabase
{
    class DatabaseHandler
    {

        /**
         * The connection string can be found in the properties of your database.
         * It will declare which database are we going to use in the project
         * Make sure you keep the @ sign before the string.
         * */
        private const string CONNECTION_STRING = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lysithea\Documents\HR_Manadement_DB.mdf;Integrated Security=True;Connect Timeout=34";
            //@"Data Source=.\SQLEXPRESS;Initial Catalog=project;Integrated Security=True;Pooling=False";

        private static SqlConnection connection;
        private static SqlCommand command;
        public SqlDataReader reader;
        private static DatabaseHandler instance;

        private DatabaseHandler()
        {            
            if (connection == null || connection.State != ConnectionState.Open)
            {
                if (connection != null && connection.State != ConnectionState.Closed)
                    connection.Close();
                connection = new SqlConnection();
                connection.ConnectionString = CONNECTION_STRING;
                connection.Open();
                command = new SqlCommand();
                command.Connection = connection;
            }
        }

        public static DatabaseHandler getInstance()
        {

            if (instance == null)
                instance = new DatabaseHandler();
            else {
                connection.Close();
                new SqlConnection(CONNECTION_STRING);
                connection.Open();
                command = new SqlCommand();
                command.Connection = connection;
            }

            return instance;
        }

        public void setSQL(string SQL){
            command.CommandText = SQL;
        }

        public void queryExecute(){
            reader = command.ExecuteReader();
        }
        
        //** Return the number of word affected by the last statment
        public int ExecuteNonQuery() {
            return (int) command.ExecuteNonQuery();
        }

        public void addParameter(string variable, string value) {
            command.Parameters.AddWithValue(variable, value);
        }

    }
}
