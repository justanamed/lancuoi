using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace InvoiceGate.Models
{
    public class TaxBreakdowns
    {
        public string  taxPercentage { get; set; }
        public string  taxableAmount { get; set; }
        public string  taxAmount { get; set; }

    }
}
