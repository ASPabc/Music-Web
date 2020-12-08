using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_Music.BUS;

namespace Web_Music.GUI
{
    public partial class Register : System.Web.UI.Page
    {
        BUS_Tai_Khoan bus_TaiKhoan = new BUS_Tai_Khoan();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void dang_nhap_Click(object sender, EventArgs e)
        {
            if(txtpass.Text != txtpassconfirm.Text)
            {
                msg.Text = "Mật khẩu không đúng";
            }
            else
            {
                msg.Text = "";
                bus_TaiKhoan.AddAccountForUser(txtusername.Text, txtpass.Text, "user");
            }

        }
    }
}