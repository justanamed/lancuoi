using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using System.Xml;
using System.Xml.Serialization;
using InvoiceGate.Authentication;
using InvoiceGate.Models;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using SCC_Client;

namespace InvoiceGate.Controllers.Manage
{
    public class InvoiceBusinessController : Controller
    {
        private readonly invoiceContext _context = new invoiceContext();
        public static IHostingEnvironment _env;

        public class Serializer
        {
            public T Deserialize<T>(string input) where T : class
            {
                System.Xml.Serialization.XmlSerializer ser = new System.Xml.Serialization.XmlSerializer(typeof(T));

                using (StringReader sr = new StringReader(input))
                {
                    return (T)ser.Deserialize(sr);
                }
            }

            public string Serialize<T>(T ObjectToSerialize)
            {
                XmlSerializer xmlSerializer = new XmlSerializer(ObjectToSerialize.GetType());

                using (StringWriter textWriter = new StringWriter())
                {
                    xmlSerializer.Serialize(textWriter, ObjectToSerialize);
                    return textWriter.ToString();
                }
            }
        }
        public InvoiceBusinessController(IHostingEnvironment env)
        {
            _env = env;
        }
        public IActionResult AddInvoice()
        {
            string name = Authen.username;
            UserInformation ko = _context.UserInformation.Where(a => a.UserId == name).DefaultIfEmpty().First();
            if (ko == null)
            {
                return View();
            }
            return View(ko);
        }
        public IActionResult ManageInvoice()
        {
            return View();
        }
        [HttpPost]
        public JsonResult laphoadon(string query,string mst)
        {
            while (query.Contains("\\"))
            {
                query.Replace("\\","");
            }
            var responce = CreateRequest.webRequest("https://demo-sinvoice.viettel.vn:8443/InvoiceAPI/InvoiceWS/createInvoice/"+mst,query,Authen.AuthString,"POST", "application/json");
            return Json(responce);

        }
        public DateTime UnixTimeToDateTime(long unixtime)
        {
            System.DateTime dtDateTime = new DateTime(1970, 1, 1, 0, 0, 0, 0, System.DateTimeKind.Utc);
            dtDateTime = dtDateTime.AddMilliseconds(unixtime).ToLocalTime();
      
            return dtDateTime;
        }
        [HttpPost]
        public IActionResult ManageInvoice(IFormCollection collect)
        {
            listInvoice vi = new listInvoice();
            string tungay = collect["ngaylaphd1"];
            string denngay = collect["ngaylaphd2"];
            if (collect["ngaylaphd1"] == collect["ngaylaphd2"])
            {
                tungay  = DateTime.Parse(tungay).AddDays(-1).ToString("yyyy-MM-dd") ;
            }
            string query = "{\"startDate\" : \""+ tungay + "\",\"endDate\" : \""+ denngay + "\",\"rowPerPage\" : 10000,\"pageNum\" : 1}";
            var responce = CreateRequest.webRequest("https://demo-sinvoice.viettel.vn:8443/InvoiceAPI/InvoiceUtilsWS/getInvoices/0100109106", query, Authen.AuthString, "POST", "application/json");
            vi = JsonConvert.DeserializeObject<listInvoice>(responce);
            List<InvoiceInformation> s =  vi.invoices.DefaultIfEmpty().ToList();
            foreach (InvoiceInformation temp in s)
            {
                temp.issueDate = DateTime.Parse(UnixTimeToDateTime(long.Parse(temp.issueDate)).ToString()).ToString("dd/MM/yyyy HH:mm:ss");
            }
            return View("ManageInvoice", s);
        }
        [HttpPost]
        public JsonResult getzip(string zip)
        {
            var base64EncodedBytes = System.Convert.FromBase64String(zip);
            toolgenpdf.unzip(zip, _env);
            return Json(toolgenpdf.ApplyXSLTransformation(_env));

        }
        [HttpPost]
        public JsonResult viewinvoice(string query)
        {

            string response = CreateRequest.webRequest("https://demo-sinvoice.viettel.vn:8443/InvoiceAPI/InvoiceUtilsWS/getInvoiceRepresentationFile",query, Authen.AuthString, "POST", "application/json");
            if (response != "")
            {
                var item = Json(response);
                return Json(item);
            }
            return Json(null);
        }
        public IActionResult ManageUnreleasedInvoice()
        {
            return View();
        }
        public ActionResult OnPostImport()
        {
            return View();
        }
        public async Task<IActionResult> ReplaceInvoice()
        {
            invoice invoicetemp = new invoice();
            XmlDocument doc = new XmlDocument();
            string[] filePaths = Directory.GetFiles(_env.WebRootPath + "/PDF/", "*.xml", SearchOption.AllDirectories);
            FileStream fs = new FileStream(filePaths[0], FileMode.Open, FileAccess.Read);
            doc.Load(fs);
            using (var stringWriter = new StringWriter())
            using (var xmlTextWriter = XmlWriter.Create(stringWriter))
            {
                doc.WriteTo(xmlTextWriter);
                xmlTextWriter.Flush();
                Serializer seri = new Serializer();
                invoicetemp = seri.Deserialize<invoice>(stringWriter.GetStringBuilder().ToString());
                return PartialView("ReplaceInvoice", invoicetemp);
            }

            return PartialView("ReplaceInvoice");

        }
       
        public IActionResult RepairInvoice()
        {
            return View();
        }
    }
}