using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using ECOGroup.Models;

namespace ECOGroup.Controllers
{
    public class UserController : Controller
    {
        //
        // GET: /User/

        ECOGroupDBContext objdatacontext = new ECOGroupDBContext();

        public ActionResult login()
        {
            return View();
        }

        [HttpPost]
        public ActionResult login(LogIn objlogin,sai_user objuser)
        {
           
            if (objuser.password == objlogin.password)
            {
                FormsAuthentication.SetAuthCookie(objuser.username, false, "/");
                return RedirectToAction("Welcome", "User");
            }

            return View();
        }

        public ActionResult Welcome()
        {
            return View();
        }

        public ActionResult CustomerInfo()
        {
            return View();
        }

        [HttpPost]
        public ActionResult CustomerInfo(sai_customer_master objcustomer)
        {
            objdatacontext.sai_customer_master.Add(objcustomer);
            objdatacontext.SaveChanges();
            return RedirectToAction("CustomerInfo");
        }
    }
}
