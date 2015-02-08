using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using WebMedicineAutoCenter.Models;

namespace CommunityMedicineBangladesh.Models
{
    public class Disease
    {
        public int DiseaseId { get; set; }

        [Required(ErrorMessage = "Disease Name is required")]
        [Display(Name = "Disease Name")]
        public string Name { get; set; }

        [Required(ErrorMessage = "Disease Description is required")]
        [Display(Name = "Disease Description")]
        public string Description { get; set; }

        [Required(ErrorMessage = "Treatment Procedure is required")]
        [Display(Name = "Treatment Procedure")]
        public string TreatmentProcedure { get; set; }

        [Required(ErrorMessage = "Preferred Drugs is required")]
        [Display(Name = "Preferred Drugs")]
        public string PreferredDrugs { get; set; }

        [Required(ErrorMessage = "Treatments is required")]
        public string Treatments { get; set; }



        public virtual ICollection<CenterDisease> CenterDiseases { get; set; }
        public virtual ICollection<DiseaseMedicine> DiseaseMedicines { get; set; }
        public virtual ICollection<Prescription> Prescriptions { get; set; }

    }
}