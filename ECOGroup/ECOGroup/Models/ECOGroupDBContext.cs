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
        //public DbSet<cust_trans> cust_trans { get; set; }
        //public DbSet<cust_trans_pay> cust_trans_pay { get; set; }
        //public DbSet<customer_master> customer_master { get; set; }
        ////public DbSet<discounts> discounts { get; set; }
        ////public DbSet<shop_customer> shop_customer { get; set; }
        //public DbSet<shop_master> shop_master { get; set; }
        ////public DbSet<tree> tree { get; set; }
        ////public DbSet<unauthorised_access> unauthorised_access { get; set; }
        //public DbSet<user> user { get; set; }
        ////public DbSet<verifier> verifier { get; set; }

        public DbSet<sai_cust_trans> sai_cust_trans { get; set; }
        public DbSet<sai_cust_trans_pay> sai_cust_trans_pay { get; set; }
        public DbSet<sai_customer_master> sai_customer_master { get; set; }
        //public DbSet<sai_discounts> sai_discounts { get; set; }
        //public DbSet<sai_shop_customer> sai_shop_customer { get; set; }
        public DbSet<sai_shop_master> sai_shop_master { get; set; }
        //public DbSet<sai_tree> sai_tree { get; set; }
        //public DbSet<sai_unauthorised_access> sai_unauthorised_access { get; set; }
        public DbSet<sai_users> sai_user { get; set; }
        //public DbSet<sai_verifier> sai_verifier { get; set; }
    }
}