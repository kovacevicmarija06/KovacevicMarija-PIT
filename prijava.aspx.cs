using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KovacevicMarija_PIT
{
    public partial class prijava : System.Web.UI.Page
    {
        
        

        
        
        protected void btnclick(object sender, EventArgs e)
        {
            if (txtImeValidator.IsValid && txtEmailValidator.IsValid
                && txtEmailExpression.IsValid && radioValidator.IsValid &&
                txtConfirmValidator.IsValid && PorediLozinkeValidator.IsValid &&
                txtAgeValidator.IsValid && GodineValidator.IsValid)
            {
                lblPoruka.Text = "Uspešno su popunjena sva polja!";
                btnOtvori.PostBackUrl = "~/izvestaj.aspx";
            }
            
        }
        public string ImeiPrezime
        {
            get { return txtIme.Text; }

        }
        public string Email
        {
            get { return txtEmail.Text; }
        }

        public string Godine
        {
            get { return txtAge.Text; }
        }
        public string Razred
        {
            get { return radio.Text; }
        }
    }
}