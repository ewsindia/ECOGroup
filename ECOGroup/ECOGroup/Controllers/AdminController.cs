using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using ECOGroup.Models;

namespace ECOGroup.Controllers
{
    public class AdminController : Controller
    {
        //
        // GET: /User/

        ECOGroupDBContext objdatacontext = new ECOGroupDBContext();

        public ActionResult Welcome()
        {
            return View();
        }

        public ActionResult Shopmasterinfo()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Shopmasterinfo(sai_shop_master objshopmaster)
        {
            if (!ModelState.IsValid)
            objdatacontext.sai_shop_master.Add(objshopmaster);
            objdatacontext.SaveChanges();
            return View(objshopmaster);
        }
        public ActionResult Customermaster()
        {
              ViewData["anyName"] = new List<SelectListItem>{ 
               new SelectListItem {Text = "Diabeties", Value = "0"}, 
               new SelectListItem {Text = "Astama", Value = "1"},
               new SelectListItem {Text = "Heart", Value = "2"},
               new SelectListItem {Text = "Sugar", Value = "3"} 
                    };
            return View();
        }
        [HttpPost]
        public ActionResult Customermaster(sai_customer_master  objcustomermaster)
        {
            
            objdatacontext.sai_customer_master.Add(objcustomermaster);
            objdatacontext.SaveChanges();
            return View(objcustomermaster);
        }
        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Login(LogIn log)
        {
            var objmem = (from obj in objdatacontext.sai_user select new { obj.email, obj.password });
            if (ModelState.IsValid)
            {
                foreach (var rec in objmem)
                {
                    if (log.username == rec.email && log.password== rec.password)
                    {
                        FormsAuthentication.SetAuthCookie(log.username, false);
                        return RedirectToAction("Shopmasterinfo");

                    }
                }
                ModelState.AddModelError("", "The user name or password provided is incorrect.");
            }

            return View();

        }

      


    }
}
