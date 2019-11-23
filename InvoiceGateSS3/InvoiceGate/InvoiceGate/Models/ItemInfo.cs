using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace InvoiceGate.Models
{
    public class ItemInfo
    {
        public string  lineNumber { get; set; }
        public string  itemCode { get; set; }
        public string  itemName { get; set; }
        public string  unitName { get; set; }
        public string  unitPrice { get; set; }
        public string  quantity { get; set; }
        public string  itemTotalAmountWithoutTax { get; set; }
        public string  itemTotalAmountWithTax { get; set; }
        public string  itemTotalAmountAfterDiscount { get; set; }
        public string  taxPercentage { get; set; }
        public string  taxAmount { get; set; }
        public string  discount { get; set; }
        public string  itemDiscount { get; set; }
        public string  itemNote { get; set; }
        public string  batchNo { get; set; }
        public string  expDate { get; set; }
    }
}
