using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace InvoiceGate.Models
{
    public class SellerInfo
    {
        public string  sellerCode { get; set; }
        public string  sellerLegalName { get; set; }
        public string  sellerTaxCode { get; set; }
        public string  sellerAddressLine { get; set; }
        public string  sellerPhoneNumber { get; set; }
        public string  sellerEmail { get; set; }
        public string  sellerBankName { get; set; }
        public string  sellerBankAccount { get; set; }

    }
}
