using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using PJobs.Models;

namespace PJobs.Repository
{
    public class TinTuyenDungRepository
    {
        VIECLAMContext ctx = new VIECLAMContext();

        public List<TinTuyenDung> getAllTinTuyenDung() {
           return  ctx.TinTuyenDungs.ToList();

        }
    }
}
