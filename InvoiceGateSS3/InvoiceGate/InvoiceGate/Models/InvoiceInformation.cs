using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace InvoiceGate.Models
{
    public class InvoiceInformation
    {
        public string invoiceId { get; set; }
        public string invoiceType { get; set; }
        public string adjustmentType { get; set; }
        public string templateCode { get; set; }
        public string invoiceSeri { get; set; }
        public string invoiceNumber { get; set; }
        public string invoiceNo { get; set; }
        public string currency { get; set; }
        public string total { get; set; }
        public string issueDate { get; set; }
        public string issueDateStr { get; set; }
        public string state { get; set; }
        public string requestDate { get; set; }
        public string description { get; set; }
        public string buyerIdNo { get; set; }
        public string stateCode { get; set; }
        public string subscriberNumber { get; set; }
        public string paymentStatus { get; set; }
        public string viewStatus { get; set; }
        public string downloadStatus { get; set; }
        public string exchangeStatus { get; set; }
        public string numOfExchange { get; set; }
        public string createTime { get; set; }
        public string contractId { get; set; }
        public string contractNo { get; set; }
        public string supplierTaxCode { get; set; }
        public string buyerTaxCode { get; set; }
        public string totalBeforeTax { get; set; }
        public string taxAmount { get; set; }
        public string taxRate { get; set; }
        public string paymentMethod { get; set; }
        public string paymentTime { get; set; }
        public string customerId { get; set; }
        public string buyerName { get; set; }
        public string no { get; set; }
        public string paymentStatusName { get; set; }
    }
}
