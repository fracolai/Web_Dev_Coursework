using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

/// <summary>
/// Summary description for UserMenu
/// </summary>
namespace Web_Dev_Coursework
{
    public class UserMenu
    {
        [ScaffoldColumn(false)]
        public int MenuItemID { get; set; }

        [Required, StringLength(100), Display(Name = "Name")]
        public string MenuItemName { get; set; }

        [Display(Name = "Menu Item Description")]
        public string Description { get; set; }

        public virtual ICollection<UserInfo> UserInfo { get; set; }
    }
}