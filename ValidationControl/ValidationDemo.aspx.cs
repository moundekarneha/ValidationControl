using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ValidationControl
{
    public partial class ValidationDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           // RangeValidator1.MinimumValue = DateTime.Now.AddYears(-1);
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
           int len = args.Value.Length;
            if (len >= 2)
                args.IsValid = true;
            else
                args.IsValid = false;
        }
    }
}