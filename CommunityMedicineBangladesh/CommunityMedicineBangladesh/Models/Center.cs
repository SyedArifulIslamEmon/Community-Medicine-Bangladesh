using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CommunityMedicineBangladesh.Models;

namespace WebMedicineAutoCenter.Models
{
    public class Center
    {

        public int CenterId { get; set; }
        public string Code { get; set; }
        public string Nmae { get; set; }
        public string Password { get; set; }



        public virtual District District { get; set; }
        public int DistrictId { get; set; }
        public virtual Thana Thana { get; set; }
        public int ThanaId { get; set; }



        public virtual ICollection<Doctor> Doctors { get; set; }
        public virtual ICollection<Patient> Patients { get; set; }
        public virtual ICollection<Report> Reports { get; set; }
        public virtual ICollection<CenterDisease> CenterDiseases { get; set; }
        public virtual ICollection<CenterMedicine> CenterMedicines { get; set; }


    }
}