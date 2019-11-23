using System;
using System.Collections.Generic;
using System.IO.Compression;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using InvoiceGate.Authentication;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
namespace InvoiceGate.Controllers
{
    public class InvoiceController : Controller
    {
        Authen au = new Authen();
        public IActionResult Home()
        {
            return View();
        }
        [HttpPost]
        public async Task<IActionResult> Home(IFormCollection account)
        {
            au.getstringAuth(account["taikhoan"],account["matkhau"]);
            var response = await Authen.client().GetAsync("InvoiceWS/getCustomFields");
           if (response.IsSuccessStatusCode)
                {
                    return RedirectToAction("Index","Invoice");
                }
            ViewBag.warning = "Tài khoản không tồn tại hoặc sai mật khẩu";
            return View();
        }

        public class JsonContent : StringContent
        {
            public JsonContent(object obj) :
                base(JsonConvert.SerializeObject(obj), Encoding.UTF8, "application/json")
            { }
        }
        public IActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public async Task<JsonResult> Getitem(string tk, string mk, string mast, string shd, string ngay ,string mabm)
        {
            string pl = ngay.Replace("/","");
            string xl = pl.Replace(" ", "");
            string nl = xl.Replace(":","");
            string temp = tk + ":" + mk;
            var client = new HttpClient();
            string authInfo = Convert.ToBase64String(Encoding.Default.GetBytes(temp)); //("Username:Password")  
            client.BaseAddress = new Uri("https://demo-sinvoice.viettel.vn:8443/InvoiceAPI/");
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Basic", authInfo);

            var response = await client.GetAsync(@"InvoiceUtilsWS/getInvoiceFilePortal?supplierTaxCode=" + mast + "&invoiceNo=" + shd + "&fileType=pdf&strIssueDate="+nl + "&reservationCode=" + mabm);
            if (response.IsSuccessStatusCode)
            {
                var item = Json(response.Content.ReadAsStringAsync().Result);
                return Json(item);
            }
            else
            {
                return Json(null);
            }
        }
    }
}