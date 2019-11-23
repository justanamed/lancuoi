using Microsoft.AspNetCore.Hosting;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;
using System.Xml.Xsl;

namespace InvoiceGate.Authentication
{
    public class toolgenpdf
    {
        
        public object RunExamples { get; private set; }
       
        public static void unzip(string s, IHostingEnvironment _env)
        {
            string[] files = Directory.GetFiles(_env.WebRootPath + "/PDF", "*", SearchOption.AllDirectories);
            foreach (string file in files)
            {
                System.IO.File.Delete(file);
            }
            string filePath = _env.WebRootPath + "/PDF/Myfile.zip";
            System.IO.File.WriteAllBytes(filePath, Convert.FromBase64String(s));
            string zipPath = _env.WebRootPath + "/PDF/Myfile.zip";
            string extractPath = _env.WebRootPath + "/PDF";
            System.IO.Compression.ZipFile.ExtractToDirectory(zipPath, extractPath);

        }
        public static string ApplyXSLTransformation(IHostingEnvironment _env)
        {
            string strHtml;
            XslCompiledTransform x = new XslCompiledTransform();
            XslCompiledTransform xslt = new XslCompiledTransform();
            xslt.Load(_env.WebRootPath + "/PDF/invoice.xsl");
            MemoryStream ms = new MemoryStream();
            XmlTextWriter writer = new XmlTextWriter(ms, Encoding.UTF8);
            StreamReader rd = new StreamReader(ms);
            string[] filePaths = Directory.GetFiles(_env.WebRootPath + "/PDF/", "*.xml", SearchOption.AllDirectories);
            xslt.Transform(filePaths[0], writer);
            ms.Position = 0;
            strHtml = rd.ReadToEnd();
            rd.Close();
            ms.Close();
            return strHtml;
        }
    }
}
