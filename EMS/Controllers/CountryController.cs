﻿using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using EMS.Gateway;
using EMS.Models;

namespace EMS.Controllers
{
    public class CountryController : Controller
    {
        private EMSDbContext db = new EMSDbContext();
        //
        // GET: /Country/
        public ActionResult Index()
        {
            return View(db.Countries.ToList());
        }

        public ActionResult SaveCountry()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult SaveCountry(Country country)
        {
            if (ModelState.IsValid)
            {
                if (country.Id !=0)
                db.Entry(country).State=EntityState.Modified;
                else
                db.Countries.Add(country);
                db.SaveChanges();
                return RedirectToAction("SaveCountry");
            }
            return View(country);
        }


        // GET: /Division/Edit/5
        public ActionResult EditCountry(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Country country = db.Countries.Find(id);
            if (country == null)
            {
                return HttpNotFound();
            }
            //ViewBag.CountryId = new SelectList(db.Countries, "Id", "CountryCode", division.CountryId);
            return View(country);
        }

        // POST: /Division/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult EditCountry(Country country)
        {
            if (ModelState.IsValid)
            {
                db.Entry(country).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            //ViewBag.CountryId = new SelectList(db.Countries, "Id", "CountryCode", division.CountryId);
            return View(country);
        }
        

        public JsonResult Delete(int? id)
        {
            EMSDbContext db = new EMSDbContext();
            Country country = db.Countries.Find(id);
            db.Countries.Remove(country);
            db.SaveChanges();
            return Json(true, JsonRequestBehavior.AllowGet);
        }
        
        [HttpPost]
        public JsonResult IsCountryCodeExists(string countrycode)
        {
            return Json(!db.Countries.Any(c => c.CountryCode == countrycode), JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public JsonResult IsCountryNameExists(string countryname)
        {
            return Json(!db.Countries.Any(c => c.CountryName == countryname), JsonRequestBehavior.AllowGet);
        }
        public PartialViewResult _ShowCountry()
        {
            List<Country> countries = db.Countries.OrderBy(c => c.CountryName).ToList<Country>();
            return PartialView(countries.ToList()); 
        }
    }
}