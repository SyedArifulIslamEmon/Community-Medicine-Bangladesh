using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebMedicineAutoCenter.Models;

namespace CommunityMedicineBangladesh.Models
{
    public class Disease
    {
        public int DiseaseId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string Type { get; set; }
        public string TreatmentProcedure { get; set; }
        public string PreferredDrugs { get; set; }
        public string Treatments { get; set; }
     


        public virtual ICollection<CenterDisease> CenterDiseases { get; set; }
        public virtual ICollection<DiseaseMedicine> DiseaseMedicines { get; set; }
        public virtual ICollection<Prescription> Prescriptions { get; set; }

    }
}