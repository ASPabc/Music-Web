using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Web_Music.DAL;
using System.Data;

namespace Web_Music.BUS
{
    public class BUS_Tai_Khoan
    {
        Data data = new Data();
        public string GetRole(string username, string password)
        {
            string role = "";
            string sql = @"select * from Tai_Khoan where Username ='"+username+"'and Password = '"+password+"'";
            DataTable dt = new DataTable();
            dt = data.GetTable(sql);
            if(dt.Rows.Count == 1)
            {
                role = dt.Rows[0][3].ToString();
            }
            else
            {
                role = "none";
            }
            return role.Trim();
        }
        public void AddAccountForUser(string username, string password, string role)
        {
            if(!CheckExistUsername(username)){
                string sql = @"insert into Tai_Khoan values('" + username + "','" + password + "','" + role + "')";
                data.ExcuteNonQuerry(sql);
            }
            
        }
        public bool CheckExistUsername(string username)
        {
            string sql = @"select * from Tai_Khoan where Username ='"+username+"'";
            DataTable dt = new DataTable();
            dt = data.GetTable(sql);
            if(dt.Rows.Count == 0)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
    }
}