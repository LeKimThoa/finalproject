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


        public List<KiNang> xoakinang(int kn)
        {

            KiNang kn_db = ctx.KiNangs.Where(x => x.MaKiNang == kn).SingleOrDefault();
            ctx.KiNangs.Remove(kn_db);
            ctx.SaveChanges();
            return ctx.KiNangs.ToList();
        }

        public KiNang suanhatuyendung(KiNang kn)
        {
            KiNang kn_db = ctx.KiNangs.Where(x => x.MaKiNang == kn.MaKiNang).SingleOrDefault();
            kn_db.TenKiNang = kn.TenKiNang;
            ctx.SaveChanges();
            return kn;
        }
        public List<KiNang> timkiemkynang_theoten(string ten)
        {
            return null;
        }
    }
}
