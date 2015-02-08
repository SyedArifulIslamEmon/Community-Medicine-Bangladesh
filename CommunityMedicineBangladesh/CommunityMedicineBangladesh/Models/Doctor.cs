using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using CommunityMedicineBangladesh.Models;

namespace WebMedicineAutoCenter.Models
{
    public class Doctor
    {

        public int DoctorId { get; set; }

        [Display(Name = "Doctor's Name")]
        public string Nmae { get; set; }

        [Display(Name = "Doctor's Degree")]
        public string Degree { get; set; }

        [Display(Name = "Doctor's Speciality")]
        public string Speciality { get; set; }



        public virtual Center Center { get; set; }
        public int CenterId { get; set; }


        public virtual ICollection<Prescription> Prescriptions { get; set; }
    }
}