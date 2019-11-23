using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace InvoiceGate.Models
{
    public partial class invoiceContext : DbContext
    {
        public invoiceContext()
        {
        }

        public invoiceContext(DbContextOptions<invoiceContext> options)
            : base(options)
        {
        }

        public virtual DbSet<UserInformation> UserInformation { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. See http://go.microsoft.com/fwlink/?LinkId=723263 for guidance on storing connection strings.
                optionsBuilder.UseSqlite("DataSource=Database/invoice.db");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.HasAnnotation("ProductVersion", "2.2.6-servicing-10079");

            modelBuilder.Entity<UserInformation>(entity =>
            {
                entity.HasKey(e => e.UserId);

                entity.Property(e => e.UserId).ValueGeneratedNever();

                entity.Property(e => e.SellerAddressLine).HasColumnName("sellerAddressLine");

                entity.Property(e => e.SellerBankAcount).HasColumnName("sellerBankAcount");

                entity.Property(e => e.SellerBankName).HasColumnName("sellerBankName");

                entity.Property(e => e.SellerCityName).HasColumnName("sellerCityName");

                entity.Property(e => e.SellerContactPersonName).HasColumnName("sellerContactPersonName");

                entity.Property(e => e.SellerCountryCode).HasColumnName("sellerCountryCode");

                entity.Property(e => e.SellerDistrictName).HasColumnName("sellerDistrictName");

                entity.Property(e => e.SellerEmail).HasColumnName("sellerEmail");

                entity.Property(e => e.SellerFaxNumber).HasColumnName("sellerFaxNumber");

                entity.Property(e => e.SellerLegalName).HasColumnName("sellerLegalName");

                entity.Property(e => e.SellerPhoneNumber).HasColumnName("sellerPhoneNumber");

                entity.Property(e => e.SellerPostalCode).HasColumnName("sellerPostalCode");

                entity.Property(e => e.SellerSignedPersonName).HasColumnName("sellerSignedPersonName");

                entity.Property(e => e.SellerSubmittedPersonName).HasColumnName("sellerSubmittedPersonName");

                entity.Property(e => e.SellerTaxCode).HasColumnName("sellerTaxCode");

                entity.Property(e => e.SellerWebsite).HasColumnName("sellerWebsite");
            });
        }
    }
}
