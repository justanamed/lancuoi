using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace InvoiceGate.Models
{
    public class RootObject
    {
        public object errorCode { get; set; }
        public object description { get; set; }
        public string fileName { get; set; }
        public string fileToBytes { get; set; }
        public bool paymentStatus { get; set; }
    }
}
