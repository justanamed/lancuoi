using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Xml.Serialization;

namespace InvoiceGate.Models
{
    [XmlRoot(ElementName = "seller", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
    public class Seller
    {
        [XmlElement(ElementName = "sellerCode", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string SellerCode { get; set; }
        [XmlElement(ElementName = "sellerLegalName", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string SellerLegalName { get; set; }
        [XmlElement(ElementName = "sellerTaxCode", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string SellerTaxCode { get; set; }
        [XmlElement(ElementName = "sellerAddressLine", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string SellerAddressLine { get; set; }
        [XmlElement(ElementName = "sellerPhoneNumber", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string SellerPhoneNumber { get; set; }
        [XmlElement(ElementName = "sellerFaxNumber", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string SellerFaxNumber { get; set; }
        [XmlElement(ElementName = "sellerEmail", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string SellerEmail { get; set; }
        [XmlElement(ElementName = "sellerBankName", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string SellerBankName { get; set; }
        [XmlElement(ElementName = "sellerBankAccount", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string SellerBankAccount { get; set; }
        [XmlElement(ElementName = "sellerContactPersonName", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string SellerContactPersonName { get; set; }
        [XmlElement(ElementName = "sellerContactPersonPhoneNumber", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string SellerContactPersonPhoneNumber { get; set; }
        [XmlElement(ElementName = "sellerContactPersonEmail", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string SellerContactPersonEmail { get; set; }
        [XmlElement(ElementName = "sellerWebsite", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string SellerWebsite { get; set; }
        [XmlElement(ElementName = "sellerBusinessLicenseNo", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string SellerBusinessLicenseNo { get; set; }
        [XmlElement(ElementName = "sellerRepresentative", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string SellerRepresentative { get; set; }
        [XmlElement(ElementName = "sellerBankAccountOwner", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string SellerBankAccountOwner { get; set; }
        [XmlElement(ElementName = "sellerRepresentativeIdType", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string SellerRepresentativeIdType { get; set; }
        [XmlElement(ElementName = "sellerSearchInvoiceLink", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string SellerSearchInvoiceLink { get; set; }
        [XmlElement(ElementName = "sellerRepresentativeIdNo", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string SellerRepresentativeIdNo { get; set; }
    }

    [XmlRoot(ElementName = "buyer", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
    public class Buyer
    {
        [XmlElement(ElementName = "buyerCode", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string BuyerCode { get; set; }
        [XmlElement(ElementName = "buyerDisplayName", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string BuyerDisplayName { get; set; }
        [XmlElement(ElementName = "buyerLegalName", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string BuyerLegalName { get; set; }
        [XmlElement(ElementName = "buyerTaxCode", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string BuyerTaxCode { get; set; }
        [XmlElement(ElementName = "buyerAddressLine", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string BuyerAddressLine { get; set; }
        [XmlElement(ElementName = "buyerPostalCode", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string BuyerPostalCode { get; set; }
        [XmlElement(ElementName = "buyerDistrictName", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string BuyerDistrictName { get; set; }
        [XmlElement(ElementName = "buyerCityName", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string BuyerCityName { get; set; }
        [XmlElement(ElementName = "buyerCountryCode", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string BuyerCountryCode { get; set; }
        [XmlElement(ElementName = "buyerPhoneNumber", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string BuyerPhoneNumber { get; set; }
        [XmlElement(ElementName = "buyerFaxNumber", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string BuyerFaxNumber { get; set; }
        [XmlElement(ElementName = "buyerEmail", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string BuyerEmail { get; set; }
        [XmlElement(ElementName = "buyerBankName", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string BuyerBankName { get; set; }
        [XmlElement(ElementName = "buyerBankAccount", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string BuyerBankAccount { get; set; }
        [XmlElement(ElementName = "buyerIdType", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string BuyerIdType { get; set; }
        [XmlElement(ElementName = "buyerIdNo", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string BuyerIdNo { get; set; }
        [XmlElement(ElementName = "buyerBirthDay", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string BuyerBirthDay { get; set; }
    }

    [XmlRoot(ElementName = "item", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
    public class Item
    {
        [XmlElement(ElementName = "lineNumber", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string LineNumber { get; set; }
        [XmlElement(ElementName = "itemCode", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string ItemCode { get; set; }
        [XmlElement(ElementName = "itemName", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string ItemName { get; set; }
        [XmlElement(ElementName = "unitName", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string UnitName { get; set; }
        [XmlElement(ElementName = "unitPrice", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string UnitPrice { get; set; }
        [XmlElement(ElementName = "quantity", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string Quantity { get; set; }
        [XmlElement(ElementName = "selection", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string Selection { get; set; }
        [XmlElement(ElementName = "itemTotalAmountWithoutVat", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string ItemTotalAmountWithoutVat { get; set; }
        [XmlElement(ElementName = "itemTotalAmountWithVat", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string ItemTotalAmountWithVat { get; set; }
        [XmlElement(ElementName = "itemTotalAmountAfterDiscount", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string ItemTotalAmountAfterDiscount { get; set; }
        [XmlElement(ElementName = "vatAmount", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string VatAmount { get; set; }
        [XmlElement(ElementName = "discount", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string Discount { get; set; }
        [XmlElement(ElementName = "itemDiscount", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string ItemDiscount { get; set; }
        [XmlElement(ElementName = "itemNote", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string ItemNote { get; set; }
        [XmlElement(ElementName = "batchNo", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string BatchNo { get; set; }
        [XmlElement(ElementName = "expDate", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string ExpDate { get; set; }
    }

    [XmlRoot(ElementName = "items", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
    public class Items
    {
        [XmlElement(ElementName = "item", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public List<Item> Item { get; set; }
    }

    [XmlRoot(ElementName = "invoiceTaxBreakdowns", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
    public class InvoiceTaxBreakdowns
    {
        [XmlElement(ElementName = "vatPercentage", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string VatPercentage { get; set; }
        [XmlElement(ElementName = "vatTaxableAmount", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string VatTaxableAmount { get; set; }
        [XmlElement(ElementName = "vatTaxAmount", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string VatTaxAmount { get; set; }
    }

    [XmlRoot(ElementName = "payment", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
    public class Payment
    {
        [XmlElement(ElementName = "paymentMethodName", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string PaymentMethodName { get; set; }
    }

    [XmlRoot(ElementName = "payments", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
    public class Payments
    {
        [XmlElement(ElementName = "payment", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public Payment Payment { get; set; }
    }

    [XmlRoot(ElementName = "customDefines", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
    public class CustomDefines
    {
        [XmlElement(ElementName = "reservationCode", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string ReservationCode { get; set; }
    }

    [XmlRoot(ElementName = "metadata", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
    public class Metadata
    {
        [XmlElement(ElementName = "contactNo", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string ContactNo { get; set; }
        [XmlElement(ElementName = "buyerCode", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string BuyerCode { get; set; }
        [XmlElement(ElementName = "warehouse", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string Warehouse { get; set; }
    }

    [XmlRoot(ElementName = "invoiceData", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
    public class InvoiceData
    {
        [XmlElement(ElementName = "invoiceType", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string InvoiceType { get; set; }
        [XmlElement(ElementName = "templateCode", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string TemplateCode { get; set; }
        [XmlElement(ElementName = "invoiceSeries", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string InvoiceSeries { get; set; }
        [XmlElement(ElementName = "invoiceNumber", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string InvoiceNumber { get; set; }
        [XmlElement(ElementName = "invoiceName", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string InvoiceName { get; set; }
        [XmlElement(ElementName = "invoiceIssuedDate", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string InvoiceIssuedDate { get; set; }
        [XmlElement(ElementName = "invoiceSignedDate", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string InvoiceSignedDate { get; set; }
        [XmlElement(ElementName = "currencyCode", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string CurrencyCode { get; set; }
        [XmlElement(ElementName = "invoiceNote", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string InvoiceNote { get; set; }
        [XmlElement(ElementName = "adjustmentType", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string AdjustmentType { get; set; }
        [XmlElement(ElementName = "seller", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public Seller Seller { get; set; }
        [XmlElement(ElementName = "buyer", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public Buyer Buyer { get; set; }
        [XmlElement(ElementName = "items", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public Items Items { get; set; }
        [XmlElement(ElementName = "discountItems", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string DiscountItems { get; set; }
        [XmlElement(ElementName = "invoiceTaxBreakdowns", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public InvoiceTaxBreakdowns InvoiceTaxBreakdowns { get; set; }
        [XmlElement(ElementName = "payments", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public Payments Payments { get; set; }
        [XmlElement(ElementName = "sumOfTotalLineAmountWithoutVAT", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string SumOfTotalLineAmountWithoutVAT { get; set; }
        [XmlElement(ElementName = "totalAmountWithoutVAT", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string TotalAmountWithoutVAT { get; set; }
        [XmlElement(ElementName = "totalVATAmount", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string TotalVATAmount { get; set; }
        [XmlElement(ElementName = "totalAmountWithVAT", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string TotalAmountWithVAT { get; set; }
        [XmlElement(ElementName = "totalAmountAfterDiscount", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string TotalAmountAfterDiscount { get; set; }
        [XmlElement(ElementName = "totalAmountWithVATInWords", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string TotalAmountWithVATInWords { get; set; }
        [XmlElement(ElementName = "discountAmount", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string DiscountAmount { get; set; }
        [XmlElement(ElementName = "userDefines", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string UserDefines { get; set; }
        [XmlElement(ElementName = "customDefines", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public CustomDefines CustomDefines { get; set; }
        [XmlElement(ElementName = "metadata", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public Metadata Metadata { get; set; }
        [XmlElement(ElementName = "userName", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string UserName { get; set; }
        [XmlElement(ElementName = "transactionUuid", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public string TransactionUuid { get; set; }
        [XmlAttribute(AttributeName = "id")]
        public string Id { get; set; }
    }

    [XmlRoot(ElementName = "CanonicalizationMethod", Namespace = "http://www.w3.org/2000/09/xmldsig#")]
    public class CanonicalizationMethod
    {
        [XmlAttribute(AttributeName = "Algorithm")]
        public string Algorithm { get; set; }
    }

    [XmlRoot(ElementName = "SignatureMethod", Namespace = "http://www.w3.org/2000/09/xmldsig#")]
    public class SignatureMethod
    {
        [XmlAttribute(AttributeName = "Algorithm")]
        public string Algorithm { get; set; }
    }

    [XmlRoot(ElementName = "Transform", Namespace = "http://www.w3.org/2000/09/xmldsig#")]
    public class Transform
    {
        [XmlAttribute(AttributeName = "Algorithm")]
        public string Algorithm { get; set; }
    }

    [XmlRoot(ElementName = "Transforms", Namespace = "http://www.w3.org/2000/09/xmldsig#")]
    public class Transforms
    {
        [XmlElement(ElementName = "Transform", Namespace = "http://www.w3.org/2000/09/xmldsig#")]
        public Transform Transform { get; set; }
    }

    [XmlRoot(ElementName = "DigestMethod", Namespace = "http://www.w3.org/2000/09/xmldsig#")]
    public class DigestMethod
    {
        [XmlAttribute(AttributeName = "Algorithm")]
        public string Algorithm { get; set; }
    }

    [XmlRoot(ElementName = "Reference", Namespace = "http://www.w3.org/2000/09/xmldsig#")]
    public class Reference
    {
        [XmlElement(ElementName = "Transforms", Namespace = "http://www.w3.org/2000/09/xmldsig#")]
        public Transforms Transforms { get; set; }
        [XmlElement(ElementName = "DigestMethod", Namespace = "http://www.w3.org/2000/09/xmldsig#")]
        public DigestMethod DigestMethod { get; set; }
        [XmlElement(ElementName = "DigestValue", Namespace = "http://www.w3.org/2000/09/xmldsig#")]
        public string DigestValue { get; set; }
        [XmlAttribute(AttributeName = "URI")]
        public string URI { get; set; }
    }

    [XmlRoot(ElementName = "SignedInfo", Namespace = "http://www.w3.org/2000/09/xmldsig#")]
    public class SignedInfo
    {
        [XmlElement(ElementName = "CanonicalizationMethod", Namespace = "http://www.w3.org/2000/09/xmldsig#")]
        public CanonicalizationMethod CanonicalizationMethod { get; set; }
        [XmlElement(ElementName = "SignatureMethod", Namespace = "http://www.w3.org/2000/09/xmldsig#")]
        public SignatureMethod SignatureMethod { get; set; }
        [XmlElement(ElementName = "Reference", Namespace = "http://www.w3.org/2000/09/xmldsig#")]
        public Reference Reference { get; set; }
    }

    [XmlRoot(ElementName = "X509Data", Namespace = "http://www.w3.org/2000/09/xmldsig#")]
    public class X509Data
    {
        [XmlElement(ElementName = "X509SubjectName", Namespace = "http://www.w3.org/2000/09/xmldsig#")]
        public string X509SubjectName { get; set; }
        [XmlElement(ElementName = "X509Certificate", Namespace = "http://www.w3.org/2000/09/xmldsig#")]
        public string X509Certificate { get; set; }
    }

    [XmlRoot(ElementName = "RSAKeyValue", Namespace = "http://www.w3.org/2000/09/xmldsig#")]
    public class RSAKeyValue
    {
        [XmlElement(ElementName = "Modulus", Namespace = "http://www.w3.org/2000/09/xmldsig#")]
        public string Modulus { get; set; }
        [XmlElement(ElementName = "Exponent", Namespace = "http://www.w3.org/2000/09/xmldsig#")]
        public string Exponent { get; set; }
    }

    [XmlRoot(ElementName = "KeyValue", Namespace = "http://www.w3.org/2000/09/xmldsig#")]
    public class KeyValue
    {
        [XmlElement(ElementName = "RSAKeyValue", Namespace = "http://www.w3.org/2000/09/xmldsig#")]
        public RSAKeyValue RSAKeyValue { get; set; }
    }

    [XmlRoot(ElementName = "KeyInfo", Namespace = "http://www.w3.org/2000/09/xmldsig#")]
    public class KeyInfo
    {
        [XmlElement(ElementName = "X509Data", Namespace = "http://www.w3.org/2000/09/xmldsig#")]
        public X509Data X509Data { get; set; }
        [XmlElement(ElementName = "KeyValue", Namespace = "http://www.w3.org/2000/09/xmldsig#")]
        public KeyValue KeyValue { get; set; }
    }

    [XmlRoot(ElementName = "Signature", Namespace = "http://www.w3.org/2000/09/xmldsig#")]
    public class Signature
    {
        [XmlElement(ElementName = "SignedInfo", Namespace = "http://www.w3.org/2000/09/xmldsig#")]
        public SignedInfo SignedInfo { get; set; }
        [XmlElement(ElementName = "SignatureValue", Namespace = "http://www.w3.org/2000/09/xmldsig#")]
        public string SignatureValue { get; set; }
        [XmlElement(ElementName = "KeyInfo", Namespace = "http://www.w3.org/2000/09/xmldsig#")]
        public KeyInfo KeyInfo { get; set; }
        [XmlAttribute(AttributeName = "xmlns")]
        public string Xmlns { get; set; }
        [XmlAttribute(AttributeName = "Id")]
        public string Id { get; set; }
    }

    [XmlRoot(ElementName = "invoice", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
    public class invoice
    {
        [XmlElement(ElementName = "invoiceData", Namespace = "http://laphoadon.gdt.gov.vn/2014/09/invoicexml/v1")]
        public InvoiceData InvoiceData { get; set; }
        [XmlElement(ElementName = "Barcode")]
        public string Barcode { get; set; }
        [XmlElement(ElementName = "Signature", Namespace = "http://www.w3.org/2000/09/xmldsig#")]
        public Signature Signature { get; set; }
        [XmlAttribute(AttributeName = "inv", Namespace = "http://www.w3.org/2000/xmlns/")]
        public string Inv { get; set; }
        [XmlAttribute(AttributeName = "ns1", Namespace = "http://www.w3.org/2000/xmlns/")]
        public string Ns1 { get; set; }
    }


}