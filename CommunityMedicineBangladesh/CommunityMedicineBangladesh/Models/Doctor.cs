using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CommunityMedicineBangladesh.Models;

namespace WebMedicineAutoCenter.Models
{
    public class Doctor
    {

        public int DoctorId { get; set; }
        public string Nmae { get; set; }
        public string Degree { get; set; }
        public string Speciality { get; set; }



        public virtual Center Center { get; set; }
        public int CenterId { get; set; }
    }
}