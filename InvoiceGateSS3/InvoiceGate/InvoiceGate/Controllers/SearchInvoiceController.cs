using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using InvoiceGate.Authentication;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using SCC_Client;

namespace InvoiceGate.Controllers.Manage
{
    public class SearchInvoiceController : Controller
    {
        public static IHostingEnvironment _env;

        public SearchInvoiceController(IHostingEnvironment env)
        {
            _env = env;
        }
        public IActionResult Index()
        {
            return View();
        }
        public class JsonContent : StringContent
        {
            public JsonContent(object obj) :
                base(JsonConvert.SerializeObject(obj), Encoding.UTF8, "application/json")
            { }
        }
        
        [HttpPost]
        public JsonResult getzip(string zip)
        {
            var base64EncodedBytes = System.Convert.FromBase64String(zip);
            toolgenpdf.unzip(zip, _env);
            return Json(toolgenpdf.ApplyXSLTransformation(_env));

        }
        [HttpPost]
        public  JsonResult Getitem(string mast, string shd, string ngay, string mabm)
        {
            string pl = ngay.Replace("/", "");
            string xl = pl.Replace(" ", "");
            string ngaylap = xl.Replace(":", "");
            string response = CreateRequest.webRequest("https://demo-sinvoice.viettel.vn:8443/InvoiceAPI/InvoiceUtilsWS/getInvoiceFilePortal?supplierTaxCode="+mast+"&invoiceNo="+shd+"&fileType=zip&strIssueDate="+ngaylap+"&reservationCode="+mabm,"",Authen.AuthString,"GET", "application/json");
            if (response != "")
            {
                var item = Json(response);
                return Json(item);
            }
                return Json(null);
        }
    }
}