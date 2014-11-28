using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.Data.Linq.Mapping;
using System.ComponentModel.DataAnnotations.Schema;

/// <summary>
/// Summary description for UserInfo
/// </summary>
namespace Web_Dev_Coursework.App_Code
{
    public class UserInfo
    {
        [Key]
        [System.ComponentModel.DataAnnotations.Schema.Column(Order=1)]
        public string Id { get; set; }

        [StringLength(256), Display(Name = "First Name")]
        public string FirstName { get; set; }

        [StringLength(256), Display(Name = "Last Name")]
        public string LastName { get; set; }

        [StringLength(256), Display(Name = "Email Id")]
        public string EmailId { get; set; }

        [Display(Name = "Mobile Number")]
        public double MobileNumber { get; set; }

        [Display(Name = "Country of Residence")]
        public string Country { get; set; }

        [StringLength(256), Display(Name = "Post Code")]
        public string PostCode { get; set; }

        [StringLength(256), Display(Name = "CV Path")]
        public string CVPath { get; set; }

        [StringLength(256), Display(Name = "Cover Letter Path")]
        public string CLPath { get; set; }

        [StringLength(256), Display(Name = "Application Link")]
        public string ALink { get; set; }

        [Key]
        [System.ComponentModel.DataAnnotations.Schema.Column(Order = 2)]
        public int? UserMenuID { get; set; }

        public virtual UserMenu UserMenu { get; set; }
    }
}