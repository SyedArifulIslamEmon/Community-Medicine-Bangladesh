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
          public string CenterCode { get; set; }
          public string CenterNmae { get; set; }
          public string CenterDistrict { get; set; }
          public string CenterThana { get; set; }
          public string CenterPassword { get; set; }
          public List<Doctor> CenterDoctor { get; set; }
          public List<Patient> CenterPatient { get; set; }
          public List<Medicine> CenterMedicine { get; set; }
    }
}