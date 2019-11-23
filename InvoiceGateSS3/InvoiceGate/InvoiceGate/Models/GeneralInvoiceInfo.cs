using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace InvoiceGate.Models
{
    public class GeneralInvoiceInfo
    {
        public string  invoiceType { get; set; }
        public string  templateCode { get; set; }
        public string  invoiceSeries { get; set; }
        public string  currencyCode { get; set; }
        public string  invoiceNote { get; set; }
        public int adjustmentType { get; set; }
        public bool paymentStatus { get; set; }
        public string  paymentType { get; set; }
        public string  paymentTypeName { get; set; }
        public bool cusGetInvoiceRight { get; set; }
        public string  userName { get; set; }

    }
}
