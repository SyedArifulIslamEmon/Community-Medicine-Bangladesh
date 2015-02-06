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
        public DbSet<Center> Centers { get; set; }
        public DbSet<District> Districts { get; set; }
        public DbSet<Disease> Diseases { get; set; }
        public DbSet<Medicine> Medicines { get; set; }
        public DbSet<Thana> Thanas { get; set; }
        public DbSet<Prescription> Prescriptions { get; set; }


    }
}