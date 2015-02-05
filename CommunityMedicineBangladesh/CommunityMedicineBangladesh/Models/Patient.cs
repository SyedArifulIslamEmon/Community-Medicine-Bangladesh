using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebMedicineAutoCenter.Models;

namespace CommunityMedicineBangladesh.Models
{
    public class Patient
    {
        public int PatientId { get; set; }
        public string Nmae { get; set; }
        public double Age { get; set; }
        public string ContactInfo { get; set; }
        public string Gender { get; set; }
        public DateTime DateOfBirth { get; set; }
        public string Address { get; set; }
        public string SocialSecurityNumber { get; set; }



        public virtual Center Center { get; set; }
        public int CenterId { get; set; }
    }
}