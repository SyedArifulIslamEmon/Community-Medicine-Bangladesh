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
        public string Definition { get; set; }
        public string Type { get; set; }
        public string Symptoms { get; set; }
        public string RiskFactors { get; set; }
        public string Treatments { get; set; }
     


        public virtual ICollection<CenterDisease> CenterDiseases { get; set; }
        public virtual ICollection<DiseaseMedicine> DiseaseMedicines { get; set; }

    }
}