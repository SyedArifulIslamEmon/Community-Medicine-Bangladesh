using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using CommunityMedicineBangladesh.Models;

namespace WebMedicineAutoCenter.Models
{
    public class Center
    {

        public int CenterId { get; set; }


        [Display(Name = "Center Name")]
        public string Name { get; set; }

        [Display(Name = "Center Code")]
        public string Code { get; set; }


        [Display(Name = "Center Password")]
        public string Password { get; set; }



        public virtual Thana Thana { get; set; }
        public int ThanaId { get; set; }


        public virtual ICollection<Doctor> Doctors { get; set; }
        public virtual ICollection<Patient> Patients { get; set; }
        public virtual ICollection<CenterDisease> CenterDiseases { get; set; }
        public virtual ICollection<CenterMedicine> CenterMedicines { get; set; }




    }
}