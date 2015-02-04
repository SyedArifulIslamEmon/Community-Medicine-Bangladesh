using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using CommunityMedicineBangladesh.Models;

namespace WebMedicineAutoCenter.Models
{
    public class CenterGatewayDB : DbContext
    {
        public CenterGatewayDB()
            : base("CommunityMedicineBangladesh")
        {
            
        }
        public DbSet<Doctor> Doctors { get; set; }
        public DbSet<Patient> Patients { get; set; }
        public DbSet<Report> Reports { get; set; }
    }
}