using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.Data.Entity;
using ECOGroup.Models;
using MySql.Data.Entity;

namespace ECOGroup.Models
{
    public class ECOGroupDBContext : DbContext
    {
        public DbSet<sai_cust_trans> sai_cust_trans { get; set; }
        public DbSet<sai_cust_trans_pay> sai_cust_trans_pay { get; set; }
        public DbSet<sai_customer_master> sai_customer_master { get; set; }
        //public DbSet<sai_discounts> sai_discounts { get; set; }
        //public DbSet<sai_shop_customer> sai_shop_customer { get; set; }
        public DbSet<sai_shop_master> sai_shop_master { get; set; }
        //public DbSet<sai_tree> sai_tree { get; set; }
        //public DbSet<sai_unauthorised_access> sai_unauthorised_access { get; set; }
        public DbSet<sai_user> sai_user { get; set; }
        //public DbSet<sai_verifier> sai_verifier { get; set; }
    }
}