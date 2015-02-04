using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebMedicineAutoCenter.Models
{
    public class Medicine
    {
        public string MedicineID { get; set; }
        public string MedicineDosage { get; set; }

        public string MedicineSideEffects { get; set; }
        public double MedicineQuantity { get; set; }
        public double MedicineMl { get; set; }
        public double MedicineMg { get; set; }

    }
}