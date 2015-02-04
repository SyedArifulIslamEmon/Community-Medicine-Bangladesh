using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CommunityMedicineBangladesh.Models
{
    public class Patient
    {
        public int PatientID { get; set; }
        public string PatientNmae { get; set; }
        public double PatientAge { get; set; }
        public string PatientContactInfo { get; set; }
        public string PatientGender { get; set; }
        public DateTime PatientDateOfBirth { get; set; }
        public string PatientAddress { get; set; }
        public string PatientSocialSecurityNumber { get; set; }
    }
}