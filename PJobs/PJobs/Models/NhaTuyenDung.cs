using System;
using System.Collections.Generic;

#nullable disable

namespace PJobs.Models
{
    public partial class NhaTuyenDung
    {
        public NhaTuyenDung()
        {
<<<<<<< Updated upstream
            PhanHois = new HashSet<PhanHoi>();
=======
>>>>>>> Stashed changes
            ThongTinDiaDiems = new HashSet<ThongTinDiaDiem>();
            TinTuyenDungs = new HashSet<TinTuyenDung>();
        }

        public long MaNhaTuyenDung { get; set; }
        public string Email { get; set; }
        public string MatKhau { get; set; }
        public string TenCongTy { get; set; }
        public string Sdt { get; set; }
        public string MaSoThue { get; set; }
        public long ThanhPhoHoatDong { get; set; }
        public long QuanHuyenHoatDong { get; set; }
        public string DiaChiHoatDong { get; set; }
        public string MoTaCongTy { get; set; }
        public string AnhDaiDien { get; set; }
        public DateTime? NgayTao { get; set; }
        public long LinhVuc { get; set; }

        public virtual ThongTinLinhVuc LinhVucNavigation { get; set; }
<<<<<<< Updated upstream
        public virtual ICollection<PhanHoi> PhanHois { get; set; }
=======
>>>>>>> Stashed changes
        public virtual ICollection<ThongTinDiaDiem> ThongTinDiaDiems { get; set; }
        public virtual ICollection<TinTuyenDung> TinTuyenDungs { get; set; }
    }
}
