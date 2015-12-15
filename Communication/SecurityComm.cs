using System;
using System.Net;
using System.Net.Security;
using System.Net.Sockets;
using System.Security.Authentication;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading;

namespace Communication
{
   public class SecurityComm
    {
        private TcpClient _tcp;
        private SslStream _sslStream;
        private string _serverCertificateName;
        private X509Certificate _serverCertificate;
        public delegate string RecvCallback(string message);
        private bool ValidateServerCertificate(
                object sender,
                X509Certificate certificate,
                X509Chain chain,
                SslPolicyErrors sslPolicyErrors)
        {
            if (sslPolicyErrors == SslPolicyErrors.None)
                return true;
            return false;
        }

        private string ReadMessage()
        {
            byte[] buffer = new byte[2048];
            StringBuilder messageData = new StringBuilder();
            int bytes = -1;
            try
            {
                do
                {
                    bytes = _sslStream.Read(buffer, 0, buffer.Length);
                    Decoder decoder = Encoding.UTF8.GetDecoder();
                    char[] chars = new char[decoder.GetCharCount(buffer, 0, bytes)];
                    decoder.GetChars(buffer, 0, bytes, chars, 0);
                    messageData.Append(chars);
                    if (messageData.ToString().IndexOf("<EOF>", StringComparison.Ordinal) != -1)
                    {
                        break;
                    }
                } while (bytes != 0);
            }
            catch (SystemException e)
            {
                Console.WriteLine(e.Message);
                return "";
            }

            return messageData.ToString().Remove(messageData.Length - 5);

        }
        public string SyncSend(string ip, string port, string data)
        {
            _tcp = new TcpClient(ip, Int32.Parse(port));
            _sslStream = new SslStream(
                    _tcp.GetStream(),
                    false,
                    ValidateServerCertificate,
                    null
                    );
            string serverMessage;
            try
            {
                _sslStream.AuthenticateAsClient(_serverCertificateName);
                data += "<EOF>";
                byte[] message = Encoding.UTF8.GetBytes(data);
                _sslStream.Write(message);
                _sslStream.Flush();
                serverMessage = ReadMessage();
            }
            catch (AuthenticationException e)
            {
                Console.WriteLine(e.Message);
                return "";
            }
            finally
            {
                _sslStream.Close();
                _tcp.Close();
            }
            
            return serverMessage;
        }

        public void Listen(string port, RecvCallback _recvCallback)
        {
            TcpListener listener = new TcpListener(IPAddress.Any, Int32.Parse(port));
            listener.Start();
            while (true)
            {
                TcpClient tcpClient = listener.AcceptTcpClient();

                ClientHandler handler = new ClientHandler(new SslStream(tcpClient.GetStream(), false), tcpClient,_serverCertificate, _recvCallback);

                Thread processingThread = new Thread(handler.Process);
                processingThread.Start();

            }
        }

        public void Config(string certificate, string password, string serverCertificateName)
        {
            _serverCertificate = new X509Certificate2(certificate, password);
            _serverCertificateName = serverCertificateName;
        }

    }
}
