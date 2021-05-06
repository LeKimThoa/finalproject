using PJobs.Repository;
using System;
using System.Collections.Generic;

#nullable disable

namespace PJobs.Models
{
    public class JobViewModel
    {
        public List<NewJoin> NewJoins { get; set; }
        public int MaKiNang { get; set; }
        public List<KiNang> DSKiNang { get; set; }
    }
}