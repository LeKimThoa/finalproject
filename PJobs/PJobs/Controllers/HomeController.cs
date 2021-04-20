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

        private TinTuyenDungRepository tinTuyenDungRepository = new TinTuyenDungRepository();
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
        public IActionResult Admin1()
        {
            return View();
        }
        public IActionResult Admin2()
        {
            return View();
        }
        public IActionResult Index1()
        {
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
