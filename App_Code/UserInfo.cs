using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

/// <summary>
/// Summary description for UserInfo
/// </summary>
namespace Web_Dev_Coursework.App_Code
{
    public class UserInfo
    {
        [ScaffoldColumn(false)]
        public int Id { get; set; }

        [StringLength(256), Display(Name = "First Name")]
        public string FirstName { get; set; }

        [StringLength(256), Display(Name = "Last Name")]
        public string LastName { get; set; }

        [StringLength(256), Display(Name = "Email Id")]
        public string EmailId { get; set; }

        [Display(Name = "Mobile Number")]
        public int MobileNumber { get; set; }

        [Display(Name = "Country of Residence")]
        public string Country { get; set; }

        [StringLength(256), Display(Name = "Post Code")]
        public string PostCode { get; set; }

        public int? UserMenuID { get; set; }

        public virtual UserMenu UserMenu { get; set; }
    }
}