using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KovacevicMarija_PIT
{
    public partial class izvestaj : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            prijava previousPage = (prijava)PreviousPage;

            lblprijava.Text = previousPage.ImeiPrezime + " (" + previousPage.Email + "), rođen " +
                              previousPage.Godine + ". godine, učenik " +
                              previousPage.Razred + ". razreda, uspešno je popunio obrazac za prijavu.";


        }

    }
}