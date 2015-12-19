using System;
using System.Data;
using System.Data.SqlClient;
using System.Xml;

namespace DataEngine
{
    public class DataBase
    {
        private string _commd;
        private string _space = " ";
        private SqlConnection _dbConnection;
        private SqlCommand _sqlCommand;
        private SqlDataAdapter _sqlDataAdapter;

        public string GetQueryCommd()
        {
            return _commd;
        }

        internal void SetSqlCommd(string sqlCommd)
        {
            _commd = sqlCommd;
        }
        public enum Dbtype
        {
            Sql,
            Mysql
        }

        internal DataSet Query()
        {
            DataSet dataSet = new DataSet();
            try
            {
                _dbConnection.Open();
                _sqlCommand.Connection = _dbConnection;
                _sqlDataAdapter = new SqlDataAdapter(_sqlCommand);
                _sqlDataAdapter.Fill(dataSet);


            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
            finally
            {
                _dbConnection.Close();
            }
            return dataSet;

        }

        internal void SetDbConn(Dbtype dbType, string conn)
        {
            switch (dbType)
            {
                case Dbtype.Sql:
                    _dbConnection = new SqlConnection(conn);
                    break;
                case Dbtype.Mysql:
                    break;
            }

        }

        public DataBase Select(string items)
        {
            ClearCommd();
            _commd += "SELECT" + _space + items + _space;
            return this;
        }

        public DataBase From(string source)
        {
            _commd += "FROM" + _space + source + _space;
            return this;
        }

        public DataBase Where(string cond)
        {
            _commd += "WHERE" + _space + cond + _space;
            return this;
        }

        public DataBase And(string cond)
        {
            _commd += "AND" + _space + cond + _space;
            return this;
        }

        public DataBase Or(string cond)
        {
            _commd += "OR" + _space + cond + _space;
            return this;
        }

        public DataBase InsertIntoTable(string table, string[] columns, string[] values)
        {
            ClearCommd();
            _commd += "INSERT INTO" + _space + table + _space;



            string joinString = "";

            foreach (var column in columns)
            {
                joinString += column + ",";
            }
            joinString = joinString.TrimEnd(',');


            _commd += "(" + joinString + ")" + _space;
            joinString = "";

            foreach (var s in values)
            {
                joinString += s + ",";
            }
            joinString = joinString.TrimEnd(',');

            _commd += "VALUES" + _space + "(" + joinString + ")" + _space;
            return this;
        }

        public DataBase Update(string table)
        {
            ClearCommd();
            _commd += "UPDATE" + _space + table + _space;
            return this;
        }

        public DataBase Set(string colunmName, string newValue)
        {
            _commd += "SET" + _space + colunmName + _space + "=" + _space + newValue + _space;
            return this;
        }

        public DataBase DeleteFrom(string table)
        {
            ClearCommd();
            _commd += "DELETE FROM" +  _space + table + _space;
            return this;
        }

        public DataBase InnerJoin(string table, string cond)
        {
            _commd += "INNER JOIN" + _space + table + _space + "ON" + _space + cond + _space;
            return this;
        }

        public DataBase Finish()
        {
            _commd += ";";
            _sqlCommand = new SqlCommand(_commd);
            return this;
        }

        void ClearCommd()
        {
            _commd = "";
        }
    }
}
