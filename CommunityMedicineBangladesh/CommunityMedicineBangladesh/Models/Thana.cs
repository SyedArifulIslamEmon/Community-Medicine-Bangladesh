﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebMedicineAutoCenter.Models;

namespace CommunityMedicineBangladesh.Models
{
    public class Thana
    {
        public int ThanaId { get; set; }
        public string Name { get; set; }

        public virtual District District { get; set; }
        public int DistrictId { get; set; }


     
        public virtual ICollection<Center> Centers { get; set; }
    }
}