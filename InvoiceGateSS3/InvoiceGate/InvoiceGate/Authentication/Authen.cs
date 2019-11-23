
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;

namespace InvoiceGate.Authentication
{
    public class Authen
    {
        public Authen()
        {
            
        }
        public static HttpClient client()
        {
            HttpClient cl = new HttpClient();
            cl.BaseAddress = new Uri("https://demo-sinvoice.viettel.vn:8443/InvoiceAPI/");
            cl.DefaultRequestHeaders.Accept.Clear();
            cl.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            cl.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Basic", AuthString);
            return cl;
        }
        public void getstringAuth(string tk, string mk)
        {
            string temp = tk + ":" + mk;
            username = tk;
            var client = new HttpClient();
            string authInfo = Convert.ToBase64String(Encoding.Default.GetBytes(temp)); //("Username:Password")  
            AuthString = authInfo;
        }
        public static string AuthString {get; set;}
        public static string username { get; set; }
    }
}
