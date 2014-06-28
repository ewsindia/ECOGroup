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
            return View();
        }
        public ActionResult Customermaster()
        {
            return View();
        }

    }
}
