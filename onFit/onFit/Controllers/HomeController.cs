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

        public ActionResult Details()
        {
            return View();
        }

  
        public ActionResult CityFilter(string searchString)
        {
            List<CityFilter_Result> _cityList = new List<CityFilter_Result>();

            using (Entities context = new Entities())
            {
                _cityList = context.CityFilter(searchString).ToList();
            }
            var customCityItems = from o in _cityList
                            select new { cityName = o.Nazwa, cityID = o.ID, cityCounty = o.Powiat, cityProvince = o.Wojewodztwo };

            return Json(customCityItems.ToList(), JsonRequestBehavior.AllowGet);
        }

        public ActionResult StreetFilter(string searchString, string wojewodztwo, string powiat)
        {
            List<StreetFilter_Result> _streetList = new List<StreetFilter_Result>();

            int pow, woj;

            pow = int.Parse(powiat);
            woj = int.Parse(wojewodztwo);

            using (Entities context = new Entities())
            {
                _streetList = context.StreetFilter(searchString, woj, pow).ToList();
            }
            var customStreetItems = from o in _streetList
                                    select new { streetName = o.Nazwa };

            return Json(customStreetItems.ToList(), JsonRequestBehavior.AllowGet);
        }
    }
}
