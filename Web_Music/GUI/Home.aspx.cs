using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Web_Music.BUS;

namespace Web_Music.GUI
{
    public partial class Home : System.Web.UI.Page
    {
        BUS_Multitable bus_Multitable = new BUS_Multitable();
        public DataTable dt1 = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            dt1 = bus_Multitable.GetDataSong();
        }
    }
}