using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;

namespace DataEngine
{
    public class XmlDatasetConvertor
    {
        public static DataSet ConvertXmlToDataSet(string xmlData)
        {
            XmlTextReader reader = null;
            try
            {
                DataSet xmlDs = new DataSet();
                var stream = new StringReader(xmlData);
                reader = new XmlTextReader(stream);
                xmlDs.ReadXml(reader);
                return xmlDs;
            }
            catch (System.Exception ex)
            {
                Console.WriteLine(ex.Message);
                throw;
            }
            finally
            {
                if (reader != null) reader.Close();
            }
        }

        public static string ConvertDataSetToXml(DataSet dataSet)
        {
            return dataSet.GetXml();
        }
    }
}
