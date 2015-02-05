using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebMedicineAutoCenter.Models
{
    public class Report
    {
        public int ReportId { get; set; }
        public DateTime ReportDate { get; set; }



        public virtual Center Center { get; set; }
        public int CenterId { get; set; }
    }
}