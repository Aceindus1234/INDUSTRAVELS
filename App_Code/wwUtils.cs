using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
using System.Globalization;
using System.Collections.Specialized;

/// <summary>
/// Summary description for wwUtils
/// </summary>
namespace TravelBAL
{
    public class wwUtils
    {
        public wwUtils()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        
            #region mail

            //public static void SendMail(string From, string To, string Subject, string Body)
            //{
            //    MailMessage MsgObj = new MailMessage();

            //    MsgObj.From = new MailAddress(From);
            //    MsgObj.To.Add(To);
            //   // SmtpClient mSmtpClient = new SmtpClient("smtp.gmail.com");
            //    SmtpClient mSmtpClient = new SmtpClient("smtp.mail.yahoo.com");
            //    mSmtpClient.UseDefaultCredentials = true;
            //    //mSmtpClient.Credentials = new System.Net.NetworkCredential("aceindus123@gmail.com", "aceindus");
            //    mSmtpClient.Credentials = new System.Net.NetworkCredential("ssiddineni_aceindus@yahoo.com", "indusgroup1");
            //    mSmtpClient.EnableSsl = true;
            //    MsgObj.Subject = Subject;
            //    MsgObj.IsBodyHtml = true;
            //    MsgObj.Body = Body;

            //    // your remote SMTP server.
            //    //SmtpClient smtp = new SmtpClient();

            //    mSmtpClient.Send(MsgObj);

            //}
        public static void SendMail(string From, string To, string Subject, string Body)
            {

                WebClient client = new WebClient();
                NameValueCollection values = new NameValueCollection();
                values.Add("username", "ravi_iginc@yahoo.com");
                values.Add("api_key", "dc808cd8-512f-4f02-a6d6-9a2fc68ada01");

                values.Add("from", From);
                values.Add("subject", Subject);
               
                if (Body != null)
                {
                    values.Add("body_html", Body);
                }
                values.Add("to", To);

               

                byte[] response = client.UploadValues("https://api.elasticemail.com/mailer/send", values);
                
            }

            #endregion


            protected SqlConnection Conn; ///SQLConnection object 
            protected SqlTransaction sqlTrans;

            /// <summary>
            /// public functions
            /// </summary>
            #region "public Functions"
            ///
            /// <summary>
            /// Opens the connection to the database.
            /// </summary>
            protected void OpenConnection()
            {
                //string conn = ConfigurationSettings.AppSettings["WEConnectionString"];
                string conn = ConfigurationSettings.AppSettings["TravelConnectionString"];
                Conn = new SqlConnection();
                if (Conn.State == ConnectionState.Open)
                {
                    Conn.Close();
                }
                else
                {
                    Conn.ConnectionString = conn;
                    Conn.Open();
                }
            }

            /// 
            /// <summary>
            /// Closes the Connection
            /// </summary>
            protected void CloseConnection()
            {
                if (Conn != null)
                {
                    if (Conn.State == ConnectionState.Open)
                    {
                        Conn.Close();
                    }
                    Conn = null;
                }
            }

            /// <summary>
            /// Executes the Stored Procedure with the SqlParameter array object passed
            /// and returns the DataSet
            /// </summary>
            /// <param name="CommandText"></param>
            /// <param name="Params"></param>
            /// <returns></returns>
            public DataSet ExecuteSQL(String CommandText, SqlParameter[] Params)
            {
                OpenConnection();
                SqlCommand cmdObj = new SqlCommand();
                cmdObj.CommandType = CommandType.StoredProcedure;
                cmdObj.Connection = Conn;
                cmdObj.CommandText = CommandText;
                if (Params.Length > 0)
                {
                    for (int i = 0; i < Params.Length; i++)
                    {
                        cmdObj.Parameters.Add(Params[i]);
                    }
                }

                SqlDataAdapter daSP = new SqlDataAdapter(cmdObj);
                DataSet dsRes = new DataSet();

                daSP.Fill(dsRes);
                daSP.Dispose();

                cmdObj.Dispose();
                CloseConnection();

                return dsRes;
            }

            public DataSet ExecuteSQL(String CommandText)
            {
                OpenConnection();
                SqlCommand cmdObj = new SqlCommand();
                cmdObj.Connection = Conn;
                cmdObj.CommandText = CommandText;

                SqlDataAdapter daSP = new SqlDataAdapter(cmdObj);
                DataSet dsRes = new DataSet();

                daSP.Fill(dsRes);
                daSP.Dispose();

                cmdObj.Dispose();
                CloseConnection();

                return dsRes;
            }

            public DataTable ExecuteSQL(String CommandText, int StartIndex, int MaxCount)
            {
                OpenConnection();
                SqlCommand cmdObj = new SqlCommand();
                cmdObj.Connection = Conn;
                cmdObj.CommandText = CommandText;
                SqlDataAdapter daSP = new SqlDataAdapter(cmdObj);
                DataSet dsRes = new DataSet();

                daSP.Fill(dsRes, StartIndex, MaxCount, "FilteredTable");
                daSP.Dispose();

                cmdObj.Dispose();
                CloseConnection();

                return dsRes.Tables["FilteredTable"];
            }
            /// <summary>
            /// Executes the Stored Procedure with the SqlParameterCollection object passed
            /// and returns the DataSet
            /// </summary>
            /// <param name="CommandText"></param>
            /// <param name="ParamsCollection"></param>
            /// <returns></returns>
            public DataSet ExecuteSQL(String CommandText, SqlParameterCollection ParamsCollection)
            {
                OpenConnection();
                //SqlCommand cmdObj=new SqlCommand(CommandText,Conn);
                SqlCommand cmdObj = new SqlCommand();
                cmdObj.CommandType = CommandType.StoredProcedure;
                cmdObj.Connection = Conn;
                cmdObj.CommandText = CommandText;

                if (ParamsCollection.Count > 0)
                {
                    for (int i = 0; i < ParamsCollection.Count; i++)
                    {
                        cmdObj.Parameters.Add(ParamsCollection[i]);
                    }
                }
                SqlDataAdapter daSP = new SqlDataAdapter(cmdObj);
                DataSet dsRes = new DataSet();

                daSP.Fill(dsRes);
                daSP.Dispose();

                cmdObj.Dispose();
                CloseConnection();

                return dsRes;
            }
            public int ExecuteSQL1(string CommandText)
            {
                OpenConnection();
                SqlCommand cmdObj = new SqlCommand();
                cmdObj.CommandText = CommandText;
                cmdObj.Connection = Conn;
                int x = Convert.ToInt32(cmdObj.ExecuteScalar());
                return (x);
            }
            #endregion

            #region "Public functions"
            /// <summary>
            /// Executes the stored procedure with the Parameter array and
            /// returns the DataTable.
            /// </summary>
            /// <param name="CommandText">Name of the Stored Procedure</param>
            /// <param name="Params">Array of Sql Parameters</param>
            /// <returns></returns>
            public DataTable ExecuteSelectDataTable(String CommandText, SqlParameter[] Params)
            {
                return ExecuteSQL(CommandText, Params).Tables[0];
            }
            public DataTable ExecuteSelectDataTable_Without(String CommandText, SqlParameter[] Params)
            {
                return ExecuteSQL(CommandText, Params).Tables[0];
            }
            /// <summary>
            /// /// Executes the stored procedure with the Parameter Collection and
            /// returns the DataTable.
            /// </summary>
            /// <param name="CommandText">Name of the Storec Procedure</param>
            /// <param name="ParamsCollection">SqlParameterCollection object</param>
            /// <returns></returns>
            public DataTable ExecuteSelectDataTable(String CommandText, SqlParameterCollection ParamsCollection)
            {
                return ExecuteSQL(CommandText, ParamsCollection).Tables[0];
            }

            /// <summary>
            /// Executes the stored procedure and
            /// returns the DataTable.
            /// </summary>
            /// <param name="CommandText">Name of the Stored Procedure</param>
            /// <returns></returns>
            public DataTable ExecuteSelectDataTable(String CommandText)
            {
                return ExecuteSQL(CommandText).Tables[0];
            }

            /// <summary>
            /// Executes the stored procedure with the Sql Parameter array and
            /// returns the DataSet.
            /// </summary>
            /// <param name="CommandText">Name of the Stored Procedure</param>
            /// <param name="Params">Array of SqlParameter object</param>
            /// <returns></returns>
            public DataSet ExecuteSelectDataSet(String CommandText, SqlParameter[] Params)
            {
                return ExecuteSQL(CommandText, Params);

            }
            /// <summary>
            /// Executes the stored procedure with the Parameter collection and
            /// returns the DataSet.
            /// </summary>
            /// <param name="CommandText">Name of the Stored Procedure</param>
            /// <param name="ParamsCollection">SqlParameterCollection object</param>
            /// <returns></returns>
            public DataSet ExecuteSelectDataSet(String CommandText, SqlParameterCollection ParamsCollection)
            {
                return ExecuteSQL(CommandText, ParamsCollection);
            }

            /// <summary>
            /// Executes the Stored Procedure and Returns the DataSet
            /// </summary>
            /// <param name="CommandText">Name of the Stored Procedure</param>
            /// <returns></returns>
            public DataSet ExecuteSelectDataSet(String CommandText)
            {
                return ExecuteSQL(CommandText);
            }
            public DataSet ExecuteSelectDataSet(String procedure,string parameter)
            {
                procedure = procedure + " '" + parameter + "'";
                return ExecuteSQL(procedure);
            }
            public int ExecuteNonQuery(String CommandText)
            {
                OpenConnection();
                //SqlCommand cmdObj=new SqlCommand(CommandText,Conn);
                SqlCommand cmdObj = new SqlCommand();
                cmdObj.Connection = Conn;
                cmdObj.CommandText = CommandText;
                int intRecordsAffected = cmdObj.ExecuteNonQuery();
                cmdObj.Dispose();
                CloseConnection();

                return intRecordsAffected;
            }

            //public int ExecuteScalar(String CommandText)
            //{
            //    OpenConnection();
            //    //			SqlCommand cmdObj=new SqlCommand(CommandText,Conn);
            //    SqlCommand cmdObj = new SqlCommand();
            //    cmdObj.Connection = Conn;
            //    cmdObj.CommandText = CommandText;
            //    int intRecords = cmdObj.ExecuteScalar();
            //    cmdObj.Dispose();
            //    CloseConnection();

            //    return intRecords;
            //}

            /// <summary>
            /// Executes the stored procedure with the Parameter collection and 
            /// returns the numebr of records affected.
            /// </summary>
            /// <param name="CommandText"></param>
            /// <param name="Params"></param>
            /// <returns></returns>
            public int ExecuteNonQuery(String CommandText, SqlParameter[] Params)
            {
                OpenConnection();
                //SqlCommand cmdObj=new SqlCommand(CommandText,Conn);
                SqlCommand cmdObj = new SqlCommand();
                cmdObj.CommandType = CommandType.StoredProcedure;
                cmdObj.Connection = Conn;
                cmdObj.CommandText = CommandText;
                if (Params.Length > 0)
                {
                    for (int i = 0; i < Params.Length; i++)
                    {
                        cmdObj.Parameters.Add(Params[i]);
                    }
                }
                int intRecordsAffected = cmdObj.ExecuteNonQuery();
                cmdObj.Dispose();
                CloseConnection();

                return intRecordsAffected;
            }

            /// <summary>
            /// Executes the stored procedure with the Parameter collection and 
            /// returns the numebr of records affected.
            /// </summary>
            /// <param name="CommandText"></param>
            /// <param name="Params"></param>
            /// <returns></returns>
            public string ExecuteScalar(String CommandText, SqlParameter[] Params)
            {
                OpenConnection();
                //			SqlCommand cmdObj=new SqlCommand(CommandText,Conn);
                SqlCommand cmdObj = new SqlCommand();
                cmdObj.CommandType = CommandType.StoredProcedure;
                cmdObj.Connection = Conn;
                cmdObj.CommandText = CommandText;

                if (Params.Length > 0)
                {
                    for (int i = 0; i < Params.Length; i++)
                    {
                        cmdObj.Parameters.Add(Params[i]);
                    }
                }
                string intRecordsAffected = cmdObj.ExecuteScalar().ToString();
                cmdObj.Dispose();
                CloseConnection();
                return intRecordsAffected;
            }
            /// <summary>
            /// Executes the stored procedure with the Parameter collection and 
            /// returns the numebr of records affected.
            /// </summary>
            /// <param name="CommandText"></param>
            /// <param name="Params"></param>
            /// <returns></returns>
            public string ExecuteScalar(String CommandText)
            {
                OpenConnection();
                //			SqlCommand cmdObj=new SqlCommand(CommandText,Conn);
                SqlCommand cmdObj = new SqlCommand();

                cmdObj.Connection = Conn;
                cmdObj.CommandText = CommandText;

                string intRecordsAffected = cmdObj.ExecuteScalar().ToString();
                cmdObj.Dispose();
                CloseConnection();

                return intRecordsAffected;
            }
            /// <summary>
            /// Executes the Stored Procedure with the SqlParameterCollection and
            /// returns the number of records affected.
            /// </summary>
            /// <param name="CommandText">Name of the Stored Procedure</param>
            /// <param name="ParamsCollection">SqlParameterCollection object</param>
            /// <returns></returns>
            public int ExecuteNonQuery(String CommandText, SqlParameterCollection ParamsCollection)
            {
                OpenConnection();
                //			SqlCommand cmdObj=new SqlCommand(CommandText,Conn);
                SqlCommand cmdObj = new SqlCommand();
                cmdObj.CommandType = CommandType.StoredProcedure;
                cmdObj.Connection = Conn;
                cmdObj.CommandText = CommandText;

                if (ParamsCollection.Count > 0)
                {
                    for (int i = 0; i < ParamsCollection.Count; i++)
                    {
                        cmdObj.Parameters.Add(ParamsCollection[i]);
                    }
                }

                int intRecordsAffected = cmdObj.ExecuteNonQuery();
                cmdObj.Dispose();
                CloseConnection();

                return intRecordsAffected;
            }
            public DataSet ExcuteQry(String CommandText)
            {
                // SqlConnection con = new SqlConnection(ConfigurationSettings.AppSettings["WEConnectionString"]);
                SqlConnection con = new SqlConnection(ConfigurationSettings.AppSettings["TravelConnectionString"]);
                con.Open();
                SqlCommand cmdObj = new SqlCommand();
                cmdObj.CommandText = CommandText;
                cmdObj.Connection = con;
                SqlDataAdapter daRes = new SqlDataAdapter(cmdObj);
                DataSet dsRes = new DataSet();
                daRes.Fill(dsRes);
                daRes.Dispose();
                cmdObj.Dispose();
                con.Close();
                return (dsRes);
            }
            public int ExecuteSqlQry1(String CommandText)
            {
                OpenConnection();
                SqlCommand cmdObj = new SqlCommand();
                cmdObj.CommandText = CommandText;
                cmdObj.Connection = Conn;
                int xres = cmdObj.ExecuteNonQuery();
                cmdObj.Dispose();
                CloseConnection();
                return (xres);

            }
            public int ExecuteSQLL(string CommandText)
            {
                OpenConnection();
                SqlCommand cmdObj = new SqlCommand();
                cmdObj.CommandText = CommandText;
                cmdObj.Connection = Conn;
                int x = Convert.ToInt32(cmdObj.ExecuteScalar());
                return (x);
            }
            public string ExecuteSQLstr1(string CommandText)
            {
                OpenConnection();
                SqlCommand cmdObj = new SqlCommand();
                cmdObj.CommandText = CommandText;
                cmdObj.Connection = Conn;
                string x = cmdObj.ExecuteScalar().ToString();
                return (x);
            }

            public int ExecuteSQL1(String CommandText, SqlParameter[] Params)
            {
                OpenConnection();
                SqlCommand cmdObj = new SqlCommand();
                cmdObj.CommandType = CommandType.StoredProcedure;
                cmdObj.Connection = Conn;
                cmdObj.CommandText = CommandText;
                if (Params.Length > 0)
                {
                    for (int i = 0; i < Params.Length; i++)
                    {
                        cmdObj.Parameters.Add(Params[i]);
                    }

                }

                int xx = cmdObj.ExecuteNonQuery();
                cmdObj.Dispose();
                CloseConnection();
                return xx;
            }

            /// <summary>
            /// Opens the Connection and Begins the Transaction
            /// </summary>
            public void BeginTransaction()
            {
                OpenConnection();
                //Begin the transaction
                sqlTrans = Conn.BeginTransaction();
            }

            /// <summary>
            /// Commits the Transaction
            /// </summary>
            public void CommitTransaction()
            {
                sqlTrans.Commit();
                sqlTrans.Dispose();
                CloseConnection();
            }

            /// <summary>
            /// Rolls Back the Transaction
            /// </summary>
            public void RollBackTransaction()
            {
                sqlTrans.Rollback();
                sqlTrans.Dispose();
                CloseConnection();
            }

            /// <summary>
            /// Executes a Non Query inside a Transaction. Throws an exception
            /// if called before calling BeginTransaction()
            /// </summary>
            /// <param name="CommandText">Query or Stored Procedure Name</param>
            /// <param name="colParams">Array of Sql Parameters</param>
            /// <returns></returns>
            public DataTable ExecuteSQLWithTransaction(String CommandText, SqlParameter[] Params)
            {
                //Check whether the transaction is started
                if (sqlTrans == null)
                {
                    throw new Exception("Transaction not started");
                }

                SqlCommand cmdObj = new SqlCommand(CommandText, sqlTrans.Connection);
                cmdObj.CommandType = CommandType.StoredProcedure;
                ///Assign the transaction object
                cmdObj.Transaction = sqlTrans;

                if (Params.Length > 0)
                {
                    for (int i = 0; i < Params.Length; i++)
                    {
                        cmdObj.Parameters.Add(Params[i]);
                    }
                }
                SqlDataAdapter daSP = new SqlDataAdapter(cmdObj);
                DataTable dtTbl = new DataTable();

                daSP.Fill(dtTbl);
                daSP.Dispose();

                cmdObj.Dispose();

                return dtTbl;
            }
            private static void AttachParameters(SqlCommand command, SqlParameter[] commandParameters)
            {
                foreach (SqlParameter p in commandParameters)
                {

                    if ((p.Direction == ParameterDirection.InputOutput) && (p.Value == null))
                    {
                        p.Value = DBNull.Value;
                    }

                    command.Parameters.Add(p);
                }
            }
            private static void PrepareCommand(SqlCommand command, SqlConnection connection, SqlTransaction transaction, CommandType commandType, string commandText, SqlParameter[] commandParameters)
            {

                if (connection.State != ConnectionState.Open)
                {
                    connection.Open();
                }
                command.Connection = connection;
                command.CommandText = commandText;
                if (transaction != null)
                {
                    command.Transaction = transaction;
                }
                command.CommandType = commandType;
                if (commandParameters != null)
                {
                    AttachParameters(command, commandParameters);
                }
                return;
            }
            public static object ExecuteScalar(SqlConnection connection, CommandType commandType, string commandText, params SqlParameter[] commandParameters)
            {
                SqlCommand cmd = new SqlCommand();
                PrepareCommand(cmd, connection, (SqlTransaction)null, commandType, commandText, commandParameters);

                object retval = cmd.ExecuteScalar();

                cmd.Parameters.Clear();
                return retval;
            }
            public static int ExecuteNonQuery(SqlConnection connection, CommandType commandType, string commandText, params SqlParameter[] commandParameters)
            {

                SqlCommand cmd = new SqlCommand();
                PrepareCommand(cmd, connection, (SqlTransaction)null, commandType, commandText, commandParameters);
                int retval = cmd.ExecuteNonQuery();
                cmd.Parameters.Clear();
                return retval;
            }
            private static void PrepareCommand(SqlCommand command, SqlConnection connection, SqlTransaction transaction, CommandType commandType, string commandText, SqlParameter[] commandParameters, out bool mustCloseConnection)
            {
                if (command == null) throw new ArgumentNullException("command");
                if (commandText == null || commandText.Length == 0) throw new ArgumentNullException("commandText");

                // If the provided connection is not open, we will open it
                if (connection.State != ConnectionState.Open)
                {
                    mustCloseConnection = true;
                    connection.Open();
                }
                else
                {
                    mustCloseConnection = false;
                }

                // Associate the connection with the command
                command.Connection = connection;

                // Set the command text (stored procedure name or SQL statement)
                command.CommandText = commandText;

                // If we were provided a transaction, assign it
                if (transaction != null)
                {
                    if (transaction.Connection == null) throw new ArgumentException("The transaction was rollbacked or commited, please provide an open transaction.", "transaction");
                    command.Transaction = transaction;
                }

                // Set the command type
                command.CommandType = commandType;

                // Attach the command parameters if they are provided
                if (commandParameters != null)
                {
                    AttachParameters(command, commandParameters);
                }
                return;
            }


            public static int ExecuteNonQuery(SqlTransaction transaction, CommandType commandType, string commandText, params SqlParameter[] commandParameters)
            {
                if (transaction == null) throw new ArgumentNullException("transaction");
                if (transaction != null && transaction.Connection == null) throw new ArgumentException("The transaction was rollbacked or commited, please provide an open transaction.", "transaction");

                // Create a command and prepare it for execution
                SqlCommand cmd = new SqlCommand();
                bool mustCloseConnection = false;
                PrepareCommand(cmd, transaction.Connection, transaction, commandType, commandText, commandParameters, out mustCloseConnection);

                // Finally, execute the command
                int retval = cmd.ExecuteNonQuery();

                // Detach the SqlParameters from the command object, so they can be used again
                cmd.Parameters.Clear();
                return retval;
            }



            #endregion



            public static DataTable GetDataTable(string SqlString)
            {
                SqlConnection conn = new SqlConnection(ConfigurationSettings.AppSettings["TravelConnectionString"]);
                DataTable dt = new DataTable();
                try
                {
                    SqlDataAdapter dbAdp = new SqlDataAdapter(SqlString, conn);
                    dbAdp.Fill(dt);
                }
                catch (Exception ex)
                {
                    throw new Exception("Error GetDataTable: " + ex.Message);
                }
                return dt;
            }
        
    }
}
