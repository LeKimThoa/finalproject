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
    public class AdminController : Controller
    {
        private VIECLAMContext ctx = new VIECLAMContext();
        private BlogRepository blogRepository = new BlogRepository();

        public AdminController()
        {

        }

        public IActionResult Index()
        {

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