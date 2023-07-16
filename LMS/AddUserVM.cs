using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Desktop01.Model;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Channels;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media.Imaging;

namespace Desktop01
{
    public partial class AddUserVM : ObservableObject

    {
        
   
        [ObservableProperty]
        public string firstname;


        [ObservableProperty]
        public string lastname;

        [ObservableProperty]
        public int age;

        [ObservableProperty]
        public string dateofbirth;

        [ObservableProperty]
        public double gpa;

        public int Reg = 1005;

        [ObservableProperty]
        public int index;


        public bool IsDateOfBirthValid(string dob)
        {
            DateTime dt;
            return DateTime.TryParseExact(dob, "dd/MM/yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out dt);
        }









        //To change the tile



        [ObservableProperty]
        public string title;

        [ObservableProperty]
        public BitmapImage selectedImage;

        public bool ispressclose;


      

      

        public AddUserVM(User u)
        {
            Student = u;
          
            firstname  = Student.FirstName;
            lastname = Student.LastName;
            age = Student.Age;
            gpa = Student.GPA;
            dateofbirth = Student.DateOfBirth;
            selectedImage=Student.Image;
            index = Student.Index;
            
        }
        public AddUserVM()
        {
            
        }


        //get image 
        [RelayCommand]
        public void UploadPhoto()
        {
            OpenFileDialog dialog = new OpenFileDialog();
            dialog.Filter = "Image files | *.bmp; *.png; *.jpg";
            dialog.FilterIndex = 1;
            if (dialog.ShowDialog() == true)
            {
                SelectedImage = new BitmapImage(new Uri(dialog.FileName));
            
               
                MessageBox.Show("Imgae successfuly uploded!", "successfull");
            }
        }






        public User Student { get; private set; }
        public Action CloseAction { get; internal set; }
        
        [RelayCommand]
        public void Save()
        {



            if (gpa < 0 || gpa > 4)
            {
                MessageBox.Show("GPA value must be between 0 and 4.", "Error");
                return;
            }
            else if (firstname == null)
            {
                MessageBox.Show("first Name should not be null.", "Error");
            }
            if (lastname == null)
            {
                MessageBox.Show("Last Name should not be null.", "Error");
            }
             if (IsDateOfBirthValid(dateofbirth)==false)
            {
                MessageBox.Show("Please insert Date of Birth in correct format dd/mm/yyyy.", "Error");
            }
             

            if (Student==null)
            {

                Student = new User()
                {
                    FirstName = firstname,
                    LastName = lastname,
                    Age = age,
                    DateOfBirth = dateofbirth,
                    Image = selectedImage,
                    Index = index,

                    GPA = gpa

                };


            }
            else
            {
                
                Student.FirstName = firstname;
                Student.LastName = lastname;
                Student.Age = age;
                Student.GPA= gpa;
                Student.Image = selectedImage;
                Student.DateOfBirth = dateofbirth;
                
                
                
            }
           
            if(Student.FirstName!=null && Student.LastName!=null && IsDateOfBirthValid(dateofbirth) != false) { 

                CloseAction(); }
           


        }
        //close window
        [RelayCommand]
        public void close()
        {
            ispressclose= true;
            CloseAction();
        }
    }
}
