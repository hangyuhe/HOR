using System;
using System.Configuration;
using System.Data;
using System.Data.SqlTypes;
using System.IO;
using System.Text;
using System.Threading;
using System.Xml;
using DataEngine;
using Communication;
namespace unit_test
{
    class Program
    {
        private static void Main()
        {
            Program self = new Program();
            self.DataEngineConstructorTest();
            self.LocalDataEngineTest();
            self.RemoteDataEngineTest();
            self.CommunicationTest();



        }

        void LocalDataEngineTest()
        {
            Engine eg = new Engine();
            eg.Config("172.31.111.131", "test", "yf123456");
            eg.DataBase.Select("dbo.[user].*").From("dbo.[user]").Finish();
            DataSet ds = eg.QueryDirectly();
            if (ds.GetXml() == XmlDatasetConvertor.ConvertXmlToDataSet(ds.GetXml()).GetXml())
            {
                Console.WriteLine("xml to dataset convention succeed!");
            }
        }

        void RemoteDataEngineTest()
        {

            Engine eg = new Engine();
            eg.DataBase.Select("dbo.[user].*").From("dbo.[user]").Finish();

            Thread td = new Thread(RunRemoteSqlDataServer);
            td.Start();
            Console.WriteLine("enter remote data-layer server ip:");
            string ip = Console.ReadLine();
            for (int i = 0; i < 10; i++)
            {
                DataSet ds = eg.QueryViaServer(ip, "8888");
                if (ds.GetXml() == XmlDatasetConvertor.ConvertXmlToDataSet(ds.GetXml()).GetXml())
                {
                    Console.WriteLine("receive from server succeed!");
                }
            }
            
        }

        void RunRemoteSqlDataServer()
        {
            Engine eg = new Engine();
            eg.Config("172.31.111.131", "test", "yf123456");
            eg.SqlSeverUp();
        }
        void DataEngineConstructorTest()
        {
            Console.WriteLine(@"<?xml version=""1.0"" encoding=""utf-8""?>");
            DataBase db = new DataBase();

            db.Select("*").From("user").Where("id=1").And("name='yufeng'").Finish();
            Console.WriteLine(db.GetQueryCommd());

            db.Select("*").From("user").InnerJoin("hospital", "name=BUAA").Finish();
            Console.WriteLine(db.GetQueryCommd());

            db.InsertIntoTable("doctor", new[] { "name", "id", "passwd" }, new[] { "'yufeng'", "1", "123456" }).Finish();
            Console.WriteLine(db.GetQueryCommd());

            db.Update("user").From("Doctor").Set("name", "yufeng").Where("id=1").Finish();
            Console.WriteLine(db.GetQueryCommd());

            db.DeleteFrom("Doctor").Where("id=1").Finish();
            Console.WriteLine(db.GetQueryCommd());
        }
        string ServerRecvCallback(string msg)
        {
            Console.WriteLine("recive message from client:{0}", msg);
            return "message from client!";
        }

        void CommunicationServerTest()
        {
            SecurityComm sm = new SecurityComm();
            sm.Config("SslSocket.pfx", "123456", "SslSocket");
            sm.Listen("8889", ServerRecvCallback);
        }

        void CommunicationClientTest()
        {
            SecurityComm sm = new SecurityComm();
            sm.Config("SslSocket.pfx", "123456", "SslSocket");
            for (int i = 0; i < 10; i++)
            {
                string msg = sm.SyncSend("127.0.0.1", "8889", "hello from client!");
                Console.WriteLine("recive message from server:{0}", msg);
            }
            Console.WriteLine("enter server ip:");
            string ip = Console.ReadLine();

            for (int i = 0; i < 10; i++)
            {
                string msg = sm.SyncSend(ip, "8889", "hello from client!");
                Console.WriteLine("recive message from server:{0}", msg);
            }

        }

        void CommunicationTest()
        {
            Thread td = new Thread(CommunicationClientTest);
            td.Start();

            CommunicationServerTest();
        }
    }
}
