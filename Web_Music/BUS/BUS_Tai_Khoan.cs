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
                role = dt.Rows[0][2].ToString();
            }
            else
            {
                role = "none";
            }
            return role;
        }
    }
}