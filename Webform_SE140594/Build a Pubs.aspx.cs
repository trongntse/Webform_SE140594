using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webform_SE140594
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            String odrder = string.Format("{0},{1},{2}",txtLoca.Text, ListBox1.SelectedValue, Calendar1.SelectedDate.ToShortDateString());
            txtlable.Text = odrder;
        }
    }
}