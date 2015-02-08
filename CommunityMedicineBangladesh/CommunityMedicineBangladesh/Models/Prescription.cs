using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CommunityMedicineBangladesh.Models;

namespace WebMedicineAutoCenter.Models
{
    public class Prescription
    {
        public int PrescriptionId { get; set; }
        public DateTime Date { get; set; }
        public long VoterId { get; set; }
        public string Observation { get; set; }
        public string Dose { get; set; }
        public string BeforeAfter { get; set; }
        public int QuantityGiven { get; set; }
        public string Note { get; set; }



        public virtual Doctor Doctor { get; set; }
        public int DoctorId { get; set; }
        public virtual Disease Disease { get; set; }
        public int DiseaseId { get; set; }
        public virtual Medicine Medicine { get; set; }
        public int MedicineId { get; set; }


    }
}