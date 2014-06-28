using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Xml;
using System.Text;
using System.Web.Security;
using System.Data.Entity;
using System.Globalization;

namespace ECOGroup.Models
{
    //[Table("cust_trans")]
    //public class cust_trans
    //{
    //    [Key]
    //    public int tid { get; set; }

    //    public int custid { get; set; }
    //    [ForeignKey("custid")]
    //    public customer_master sai_customer_master { get; set; }

    //    public int shopid { get; set; }
    //    [ForeignKey("shopid")]
    //    public shop_master sai_shop_master { get; set; }

    //    public double amount { get; set; }
    //    public float discount_p { get; set; }
    //    public float discount_c { get; set; }
    //    public string status { get; set; }
    //    public DateTime trans_date { get; set; }
    //}

    //[Table("cust_trans_pay")]
    //public class cust_trans_pay
    //{
    //    [Key]
    //    public int tid { get; set; }

    //    public int custid { get; set; }
    //    [ForeignKey("custid")]
    //    public customer_master sai_customer_master { get; set; }

    //    public int shopid { get; set; }
    //    [ForeignKey("shopid")]
    //    public shop_master sai_shop_master { get; set; }

    //    public double amount { get; set; }
    //    public DateTime trans_date { get; set; }
    //}

    //[Table("customer_master")]
    //public class customer_master
    //{
    //    [Key]
    //    public int custid { get; set; }
    //    public string fname { get; set; }
    //    public string mname { get; set; }
    //    public string lname { get; set; }
    //    public string mobile { get; set; }
    //    public string password { get; set; }
    //    public string email { get; set; }
    //    public string medicine_details { get; set; }
    //    public DateTime bdate { get; set; }
    //    public string tal { get; set; }
    //    public string dist { get; set; }
    //    public string Add1 { get; set; }
    //    public string Add2 { get; set; }
    //    public int pin { get; set; }
    //    public double discount_given { get; set; }
    //    public double discount_paid { get; set; }
    //    public int isActive { get; set; }
    //    public int isEmailVerified { get; set; }
    //    public int isMobileVerified { get; set; }
    //}

    ////[Table("discounts")]
    ////public class discounts
    ////{
    ////    [Key]
    ////    public double parent { get; set; }
    ////    [Key]
    ////    public double child { get; set; }
    ////}

    ////[Table("shop_customer")]
    ////public class shop_customer
    ////{
    ////    [Key]
    ////    public int shopid { get; set; }
    ////    [ForeignKey("shopid")]
    ////    public shop_master sai_shop_master { get; set; }

    ////    [Key]
    ////    public int custid { get; set; }
    ////    [ForeignKey("custid")]
    ////    public customer_master sai_customer_master { get; set; }
    ////}

    //[Table("sai_shop_master")]
    //public class shop_master
    //{
    //    [Key]
    //    public int shopid { get; set; }
    //    public string shopname { get; set; }
    //    public string ownername { get; set; }
    //    public string mobile { get; set; }
    //    public string email { get; set; }
    //    public string password { get; set; }
    //    public string tal { get; set; }
    //    public string dist { get; set; }
    //    public string add1 { get; set; }
    //    public string add2 { get; set; }
    //    public int pin { get; set; }
    //    public string comments { get; set; }
    //    public int isAcive { get; set; }
    //    public int isEmailVerified { get; set; }
    //    public int isMobileVerified { get; set; }
    //}

    ////[Table("tree")]
    ////public class tree
    ////{
    ////    [Key]
    ////    public double parentid { get; set; }
    ////    [ForeignKey("custid")]
    ////    public customer_master sai_customer_master { get; set; }

    ////    [Key]
    ////    public double childid { get; set; }
    ////    [ForeignKey("custid")]
    ////    public customer_master sai_customer_master2 { get; set; }
    ////}

    ////[Table("unauthorised_access")]
    ////public class unauthorised_access
    ////{
    ////    public string mobile { get; set; }
    ////    public DateTime message_time { get; set; }
    ////    public string message { get; set; }
    ////}

    //[Table("user")]
    //public class user
    //{
    //    [Key]
    //    public string username { get; set; }
    //    public string password { get; set; }
    //    public string mobile { get; set; }
    //    public string email { get; set; }
    //    public string previleges { get; set; }
    //}

    ////[Table("verifier")]
    ////public class verifier
    ////{
    ////    public int id { get; set; }
    ////    public string emailToken { get; set; }
    ////    public string mobileOTP { get; set; }
    ////    public int isShop { get; set; }
    ////    public DateTime vaildtill { get; set; }
    ////}


    [Table("sai_cust_trans")]
    public class sai_cust_trans
    {
        [Key]
        public int tid { get; set; }

        public int custid { get; set; }
        [ForeignKey("custid")]
        public sai_customer_master sai_customer_master { get; set; }

        public int shopid { get; set; }
        [ForeignKey("shopid")]
        public sai_shop_master sai_shop_master { get; set; }

        public double amount { get; set; }
        public float discount_p { get; set; }
        public float discount_c { get; set; }
        public string status { get; set; }
        public DateTime trans_date { get; set; }
    }

    [Table("sai_cust_trans_pay")]
    public class sai_cust_trans_pay
    {
        [Key]
        public int tid { get; set; }

        public int custid { get; set; }
        [ForeignKey("custid")]
        public sai_customer_master sai_customer_master { get; set; }

        public int shopid { get; set; }
        [ForeignKey("shopid")]
        public sai_shop_master sai_shop_master { get; set; }

        public double amount { get; set; }
        public DateTime trans_date { get; set; }
    }

    [Table("sai_customer_master")]
    public class sai_customer_master
    {
        [Key]
        public int custid { get; set; }
        public string fname { get; set; }
        public string mname { get; set; }
        public string lname { get; set; }
        public string mobile { get; set; }
        public string password { get; set; }
        public string email { get; set; }
        public string medicine_details { get; set; }
        public DateTime bdate { get; set; }
        public string tal { get; set; }
        public string dist { get; set; }
        public string Add1 { get; set; }
        public string Add2 { get; set; }
        public int pin { get; set; }
        public double discount_given { get; set; }
        public double discount_paid { get; set; }
        public int isActive { get; set; }
        public int isEmailVerified { get; set; }
        public int isMobileVerified { get; set; }
    }

    [Table("sai_discounts")]
    public class sai_discounts
    {
        [Key]
        public double parent { get; set; }
        [Key]
        public double child { get; set; }
    }

    //[Table("sai_shop_customer")]
    //public class sai_shop_customer
    //{
    //    [Key]
    //    public int shopid { get; set; }
    //    [ForeignKey("shopid")]
    //    public sai_shop_master sai_shop_master { get; set; }

    //    [Key]
    //    public int custid { get; set; }
    //    [ForeignKey("custid")]
    //    public sai_customer_master sai_customer_master { get; set; }
    //}

    [Table("sai_shop_master")]
    public class sai_shop_master
    {
        [Key]
        public int shopid { get; set; }
        public string shopname { get; set; }
        public string ownername { get; set; }
        public string mobile { get; set; }
        public string email { get; set; }
        public string password { get; set; }
        public string tal { get; set; }
        public string dist { get; set; }
        public string add1 { get; set; }
        public string add2 { get; set; }
        public int pin { get; set; }
        public string comments { get; set; }
        public int isAcive { get; set; }
        public int isEmailVerified { get; set; }
        public int isMobileVerified { get; set; }
    }

    //[Table("sai_tree")]
    //public class sai_tree
    //{
    //    [Key]
    //    public double parentid { get; set; }
    //    [ForeignKey("custid")]
    //    public sai_customer_master sai_customer_master { get; set; }

    //    [Key]
    //    public double childid { get; set; }
    //    [ForeignKey("custid")]
    //    public sai_customer_master sai_customer_master2 { get; set; }
    //}

    //[Table("sai_unauthorised_access")]
    //public class sai_unauthorised_access
    //{
    //    public string mobile { get; set; }
    //    public DateTime message_time { get; set; }
    //    public string message { get; set; }
    //}

    [Table("sai_users")]
    public class sai_users
    {
        [Key]
        public string username { get; set; }
        public string password { get; set; }
        public string mobile { get; set; }
        public string email { get; set; }
        public string previleges { get; set; }
    }

    //[Table("sai_verifier")]
    //public class sai_verifier
    //{
    //    public int id { get; set; }
    //    public string emailToken { get; set; }
    //    public string mobileOTP { get; set; }
    //    public int isShop { get; set; }
    //    public DateTime vaildtill { get; set; }
    //}

}