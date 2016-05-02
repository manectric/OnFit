using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Objects;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using onFit.Models;

namespace onFit.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Message = "Modify this template to jump-start your ASP.NET MVC application.";

            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your app description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult CityFilter(string searchString)
        {
            List<CityFilter_Result> _cityList = new List<CityFilter_Result>();

            using (Entities context = new Entities())
            {
                _cityList = context.CityFilter(searchString).ToList();
            }
            var customers = from o in _cityList
                            select new { cityName = o.Nazwa, cityID = o.ID, cityCounty = o.Powiat, cityProvince = o.Wojewodztwo };

            return Json(customers.ToList(), JsonRequestBehavior.AllowGet);
        }
    }
}
