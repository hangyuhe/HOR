using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Communication;
namespace DataEngine
{
    public class Engine
    {
        public DataBase DataBase = new DataBase();
        private SecurityComm _scon = new SecurityComm();

        internal enum Action
        {
            QueryData
        }
        public DataSet QueryDirectly()
        {
            return DataBase.Query();
        }

        public DataSet QueryViaServer(string ip, string port)
        {
            _scon.Config("SslSocket.pfx", "123456", "SslSocket");
            string data = _scon.SyncSend(ip, port, DataBase.GetQueryCommd());
            return XmlDatasetConvertor.ConvertXmlToDataSet(data);
        }

        public void Config(string serverIp,string dbUserName,string dbPasswd)
        {
            //Data Source=172.31.111.131;Initial Catalog=Web_Appointment;Persist Security Info=True;User ID=test
            DataBase.SetDbConn(DataBase.Dbtype.Sql,
                String.Format("Data Source={0};Initial Catalog={1};Persist Security Info=True;User Id={2};Password={3};",
                serverIp, "Web_Appointment", dbUserName, dbPasswd));
        }

        string SqlQueryCallBack(string sqlCommd)
        {
            DataBase.SetSqlCommd(sqlCommd);
            return QueryDirectly().GetXml();
        }
        public void SqlSeverUp()
        {
            _scon.Config("SslSocket.pfx", "123456", "SslSocket");
            _scon.Listen("8888",SqlQueryCallBack);
        }
    }
}
