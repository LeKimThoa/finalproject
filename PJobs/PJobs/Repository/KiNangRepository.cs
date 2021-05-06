using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using PJobs.Models;

namespace PJobs.Repository
{
    public class KiNangRepository
    {
        VIECLAMContext ctx = new VIECLAMContext();

        public List<KiNang> getAllBlog() {
           return  ctx.KiNangs.ToList();

        }


        public KiNang themkinang(KiNang kn)
        {
            ctx.KiNangs.Add(kn);
            ctx.SaveChanges();
            return kn;
        }


        public KiNang suakinang(int id,KiNang kn)
        {
            return kn;
        }


        public KiNang xoaphanhoi(int id, KiNang kn)
        {
            return kn;
        }
    }
}
