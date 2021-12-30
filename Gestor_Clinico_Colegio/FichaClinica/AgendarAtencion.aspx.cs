using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Input;

namespace Gestor_Clinico_Colegio.FichaClinica
{
    public partial class AgendarAtencion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Verifica si es la primera vez que se muestra el canedario
            if (!IsPostBack)
                Calendar1.Visible = false;
        }
       
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Txt_calendario.Text = Calendar1.SelectedDate.ToShortDateString();
        }
        
        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {
            Calendar1.Visible = !Calendar1.Visible;
        }

        protected void TextSobreNom_TextChanged(object sender, EventArgs e)
        {

        }
    }
}