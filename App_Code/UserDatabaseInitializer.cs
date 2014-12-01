using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.Entity;
using System.Web;

/// <summary>
/// Summary description for UserDatabaseInitializer
/// </summary>
/// 
namespace Web_Dev_Coursework.App_Code
{
    public class UserDatabaseInitializer: DropCreateDatabaseIfModelChanges<UserContext>
    {
        protected override void Seed(UserContext context)
        {
            GetUserMenus().ForEach(c => context.UserMenus.Add(c));
            GetUserInfos().ForEach(p => context.UserInfos.Add(p));
        }

        private static List<UserMenu> GetUserMenus()
        {
            var userMenus = new List<UserMenu> {
                new UserMenu
                {
                    MenuItemID = 1,
                    MenuItemName = "Personal Details"
                },
                new UserMenu
                {
                    MenuItemID = 2,
                    MenuItemName = "My CV"
                },
                new UserMenu
                {
                    MenuItemID = 3,
                    MenuItemName = "My Cover Letter"
                },
                new UserMenu
                {
                    MenuItemID = 4,
                    MenuItemName = "My Applications"
                }
            };

            return userMenus;
        }

        public static List<UserInfo> GetUserInfos()
        {
            string currentuser = HttpContext.Current.User.Identity.Name;
            var userInfos = new List<UserInfo> {
                new UserInfo
                {
                    Id = currentuser,
                    UserMenuID = 1
               },
               new UserInfo
                {
                    Id = currentuser,
                    UserMenuID = 2
               },
               new UserInfo
                {
                    Id = currentuser,
                    UserMenuID = 3
               },
               new UserInfo
               {
                    Id = currentuser,
                    UserMenuID = 4
               }
            };
            return userInfos;
        }
    }

}