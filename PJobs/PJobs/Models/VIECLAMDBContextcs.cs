using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PJobs.Models
{
    public class VIECLAMDBContextcs : DbContext
    {
        public VIECLAMDBContextcs(DbContextOptions options) : base(options) {
        
        }
    }
}
