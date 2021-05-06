<<<<<<< Updated upstream
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using PJobs.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using PJobs.Repository;
=======
﻿using Microsoft.AspNetCore.Mvc;
using PJobs.Models;
using PJobs.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
>>>>>>> Stashed changes

namespace PJobs.Controllers
{
    public class AdminController : Controller
    {
<<<<<<< Updated upstream
        private VIECLAMContext ctx = new VIECLAMContext();
        private BlogRepository blogRepository = new BlogRepository();

        public AdminController()
        {
=======
        private NgangNgheRepository _ngangNgheRepository = null;
        private TinTuyenDungRepository _tinTuyenDungRepository = null;

        public AdminController(NgangNgheRepository ngangNgheRepository, TinTuyenDungRepository tinTuyenDungRepository) {
            _ngangNgheRepository = ngangNgheRepository;
            _tinTuyenDungRepository = tinTuyenDungRepository;
>>>>>>> Stashed changes

        }

        public IActionResult Index()
        {
<<<<<<< Updated upstream

            return View();
        }


        public IActionResult BlogInformation()
        {

            List<Blog> lst = blogRepository.getAllBlog();

            //passing model/data to  view
            return View(lst);
        }
        [HttpPut]
        public IActionResult BlogInformation(int id,[FromBody]Blog blog)
        {

            var entity = ctx.Blogs.FirstOrDefault(e => e.MaBlog == id);

            entity.TenBlog = blog.TenBlog;
            entity.NoiDungBlog = blog.NoiDungBlog;
            entity.NgayDangBlog = blog.NgayDangBlog;
            entity.LuotXem = blog.LuotXem;
            ctx.SaveChanges();
            return View();
           
        }
    }
}
=======
            return View();
        }
        public IActionResult Danhsachnganhnghe()
        {
            
            List<ThongTinNganhNghe> ds= _ngangNgheRepository.DanhSachThongTinNganhNghe();
            return View(ds);
        }
        public IActionResult DanhsachTinTuyenDungTheoNganhNghe(int id)
        {

            List<TinTuyenDung> ds = _tinTuyenDungRepository.dsTinTuyenDung();
            return View(ds);
        }

        public IActionResult XoaNganhNghe(int id)
        {

            List<ThongTinNganhNghe> ds = _ngangNgheRepository.XoaThongTinNganhNghe(id);
            return RedirectToAction("Danhsachnganhnghe");
        }
        public IActionResult Account()
        {
            return View();
        }
        public IActionResult Contact()
        {
            return View();
        }

    }
}
>>>>>>> Stashed changes
