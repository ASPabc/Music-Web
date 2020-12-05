using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Web_Music.DTO
{
    public class Tai_Khoan
    {
        public string Username;
        public string Password;
        public string Role;

        public Tai_Khoan(string username, string password, string role)
        {
            Username = username;
            Password = password;
            Role = role;
        }
        public Tai_Khoan()
        {

        }
    }
}