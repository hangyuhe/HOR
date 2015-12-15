using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Security;
using System.Net.Sockets;
using System.Security.Authentication;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;

namespace Communication
{
    internal class ClientHandler
    {
        private TcpClient _tcp;
        private SslStream _sslStream;
        private SecurityComm.RecvCallback _recvCallback;
        private X509Certificate _serverCertificate;
        public ClientHandler(SslStream sslStream, TcpClient tcpClient, X509Certificate certificate, SecurityComm.RecvCallback recvCallback)
        {
            _tcp = tcpClient;
            _sslStream = sslStream;
            _recvCallback = recvCallback;
            _serverCertificate = certificate;
        }

        private string ReadMessage()
        {
            byte[] buffer = new byte[2048];
            StringBuilder messageData = new StringBuilder();
            try
            {
                var bytes = -1;
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
        public void Process()
        {
            _sslStream.AuthenticateAsServer(_serverCertificate, false, SslProtocols.Tls, true);
            _sslStream.ReadTimeout = 5000;
            _sslStream.WriteTimeout = 5000;
            string newMessage = ReadMessage();

            byte[] message = Encoding.UTF8.GetBytes(_recvCallback(newMessage) + "<EOF>");
            _sslStream.Write(message);
            _sslStream.Close();
            _tcp.Close();
        }


    }
}
