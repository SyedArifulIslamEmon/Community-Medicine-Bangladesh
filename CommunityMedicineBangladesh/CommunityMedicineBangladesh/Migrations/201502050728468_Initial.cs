namespace CommunityMedicineBangladesh.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Initial : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Reports", "CenterId", c => c.Int(nullable: false));
            CreateIndex("dbo.Reports", "CenterId");
            AddForeignKey("dbo.Reports", "CenterId", "dbo.Centers", "CenterId", cascadeDelete: true);
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Reports", "CenterId", "dbo.Centers");
            DropIndex("dbo.Reports", new[] { "CenterId" });
            DropColumn("dbo.Reports", "CenterId");
        }
    }
}
