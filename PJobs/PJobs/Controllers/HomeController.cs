using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using PJobs.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using PJobs.Repository;

namespace PJobs.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private VIECLAMContext ctx = new VIECLAMContext();
        private TinTuyenDungRepository tinTuyenDungRepository = new TinTuyenDungRepository();
        private PhanhoiRepository phanhoiRepository = new PhanhoiRepository();
        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            List<TinTuyenDung> lst= tinTuyenDungRepository.getAllTinTuyenDung();

            //passing model/data to  view
            return View(lst);
        }
        public IActionResult Admin()
        {
            return View();
        }

        public IActionResult Contact()
        {
            ViewBag.mess = null;
            return View();
        }
        [HttpPost]
        public IActionResult Contact(PhanHoi model)
        {
            if (ModelState.IsValid)
            {
                model.TinhTrang = 0;//
                DateTime currentDate = DateTime.Now;

                model.NgayPhanHoi = currentDate;
                phanhoiRepository.themphanhoi(model);
                ViewBag.mess = "Thong tin đã được gửi";
                ModelState.Clear();
                return Redirect("Contact");
            }
           
            return View();
        }

        public IActionResult Text()
        {
            return View();
        }
 
        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
