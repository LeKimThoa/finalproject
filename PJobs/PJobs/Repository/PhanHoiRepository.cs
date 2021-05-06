using PJobs.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PJobs.Repository
{
    public class PhanhoiRepository
    {

        VIECLAMContext ctx = new VIECLAMContext();

        public PhanHoi themphanhoi(PhanHoi ph)
        {
            ctx.PhanHois.Add(ph);
            ctx.SaveChanges();
            return ph;
        }

    }
}