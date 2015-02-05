using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebMedicineAutoCenter.Models;

namespace CommunityMedicineBangladesh.Models
{
    public class CenterDisease
    {
        public int CenterDiseaseId { get; set; }



        public virtual Center Center { get; set; }
        public int CenterId { get; set; }
        public virtual Disease Disease { get; set; }
        public int DiseaseId { get; set; }
    }
}