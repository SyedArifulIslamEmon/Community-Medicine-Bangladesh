using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebMedicineAutoCenter.Models;

namespace CommunityMedicineBangladesh.Models
{
    public class DiseaseMedicine
    {
        public int DiseaseMedicineId { get; set; }



        public virtual Disease Disease { get; set; }
        public int DiseaseId { get; set; }
        public virtual Medicine Medicine { get; set; }
        public int MedicineId { get; set; }
    }
}