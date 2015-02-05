using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebMedicineAutoCenter.Models;

namespace CommunityMedicineBangladesh.Models
{
    public class District
    {
        public int DistrictId { get; set; }
        public string Nmae { get; set; }
        public int Population { get; set; }



        public virtual ICollection<Center> Centers { get; set; }
    }
}