using System;
using System.Collections.Generic;

namespace InvoiceGate.Models
{
    public partial class UserInformation
    {
        public string UserId { get; set; }
        public string SellerLegalName { get; set; }
        public string SellerTaxCode { get; set; }
        public string SellerAddressLine { get; set; }
        public string SellerPostalCode { get; set; }
        public string SellerDistrictName { get; set; }
        public string SellerCityName { get; set; }
        public string SellerCountryCode { get; set; }
        public string SellerPhoneNumber { get; set; }
        public string SellerFaxNumber { get; set; }
        public string SellerEmail { get; set; }
        public string SellerBankName { get; set; }
        public string SellerBankAcount { get; set; }
        public string SellerContactPersonName { get; set; }
        public string SellerSignedPersonName { get; set; }
        public string SellerSubmittedPersonName { get; set; }
        public string SellerWebsite { get; set; }
    }
}
