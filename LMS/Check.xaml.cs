using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Desktop01
{
    /// <summary>
    /// Interaction logic for Check.xaml
    /// </summary>
    public partial class Check : Window
    {
       

        public Check(CheckVM vM)
        {
            
            InitializeComponent();
            DataContext = vM;
            vM.CloseAction = () => Close();
        }

    }
}
