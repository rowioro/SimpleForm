using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProstyFormularz
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonWyslij_Click(object sender, EventArgs e)
        {

        }

        protected void ButtonWyslij_Click1(object sender, EventArgs e)
        {
            //LabelWynik.Text = TextBoxImie.Text;
            //LabelWynik.Text += TextBoxNazwisko.Text;
            var imie = TextBoxImie.Text;
            var nazwisko = TextBoxNazwisko.Text;
            var wojewodztwo = DropDownListWojewodztwo.SelectedValue;
            var miasto = TextBoxMiasto.Text;
            var ulica = TextBoxUlica.Text;
            var dom = TextBoxDom.Text;
            var email = TextBoxEmail.Text;
            var kod = TextBoxKod.Text;

            LabelOsoba.Text = imie + " " + nazwisko;
            LabelAdres.Text = wojewodztwo + " " + kod + " " + miasto + " " + ulica + " " + dom;
            LabelMail.Text = email;
        }
    }
}