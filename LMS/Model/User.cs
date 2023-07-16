using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media.Imaging;

namespace Desktop01.Model
{
    public class User
    {
        public int Age { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }

        public BitmapImage Image { get; set; }  

        public string  DateOfBirth{ get; set; }
        public  double GPA { get; set; }

        public int Index { get; set; }

        public string SetIndex
        {
            get { return $"EG/{Index}"; }
        }

     

        public User(int age, string firstName, string lastName,  string dateOfBirth, BitmapImage image, double gPA,int index)
        {
            Age = age;
            FirstName = firstName;
            LastName = lastName;
            Image = image;
            DateOfBirth = dateOfBirth;
            GPA = gPA;
            Index = index;
        }

        public User()
        {
        }
    }
}
