using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using PJobs.Models;

namespace PJobs.Repository
{
    public class BlogRepository
    {
        VIECLAMContext ctx = new VIECLAMContext();

        public List<Blog> getAllBlog() {
           return  ctx.Blogs.ToList();

        }
    }
}
