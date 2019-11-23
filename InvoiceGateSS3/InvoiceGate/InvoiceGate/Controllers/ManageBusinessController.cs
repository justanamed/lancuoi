using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using InvoiceGate.Authentication;
using InvoiceGate.Models;
using Microsoft.AspNetCore.Mvc;

namespace InvoiceGate.Controllers.Manage
{
    public class ManageBusinessController : Controller
    {
        private readonly invoiceContext _context = new invoiceContext();

        public IActionResult BusinessConfiguration()
        {
            return View();
        }
        
        public IActionResult BusinessInformation()
        {
            string name = Authen.username;
            UserInformation ko = _context.UserInformation.Where( a => a.UserId == name).DefaultIfEmpty().First();
            if(ko == null)
            {
                return View();
            }
            return View(ko);
        }

    }
}