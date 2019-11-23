using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace InvoiceGate.Models
{
    public class SummarizeInfo
    {
        public string  sumOfTotalLineAmountWithoutTax { get; set;}
        public string  totalAmountWithoutTax { get; set; }
        public string  totalTaxAmount { get; set; }
        public string  totalAmountWithTax { get; set; }
        public string  totalAmountAfterDiscount { get; set; }
        public string  totalAmountWithTaxInWords { get; set; }
        public string  discountAmount { get; set; }

    }
}
