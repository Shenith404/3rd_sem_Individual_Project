using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Desktop01.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Media.Imaging;

namespace Desktop01
{
    
    public  partial class MainWindowVM : ObservableObject
    {
        [ObservableProperty]
        public  ObservableCollection<User> users;
        [ObservableProperty]
        public User selectedUser=null;

        public int Reg = 1005;


        public void CloseMainWindow()
        {
            Application.Current.MainWindow.Close();
        }




        [RelayCommand]
        public void messeag()
        {

            MessageBox.Show($"{selectedUser.FirstName} GPA value must be between 0 and 4.", "Error");
        }

        [RelayCommand]
        public void AddStudent()
        {
            var vm = new AddUserVM();
            vm.title = " ADD USER";
            vm.index = Reg;
            Reg++;
            AddUserWindow window = new AddUserWindow(vm);
            
            window.ShowDialog();

            if (vm.ispressclose != true)
            {
                if (vm.Student.FirstName != null && vm.Student.LastName != null && vm.IsDateOfBirthValid(vm.dateofbirth) != false)
                {
                    users.Add(vm.Student);
                }
            }
            
        }
        public void deleted()
        {
            string name = selectedUser.FirstName;
            users.Remove(selectedUser);
            MessageBox.Show($"{name} is Deleted successfuly.", "DELETED \a ");
        }

        [RelayCommand]
        public void Delete()
        {
            if (selectedUser != null)
            {
                var vm=new CheckVM();
                vm.title = "Do you want to delete ?";
                Check window = new Check(vm);
                window.ShowDialog();
                if (vm.istrue == true)
                {
                    deleted();
                }
                
            }
            else
            {
                MessageBox.Show("Plese Select Student before Delete.", "Error");


            }
        }
        [RelayCommand]
        public void ExecuteEditStudentCommand()
        {
            if (selectedUser != null)
            {
                var vm = new AddUserVM(selectedUser);
                vm.title = " EDIT USER";
                var window = new AddUserWindow(vm);

                window.ShowDialog();


                int index = users.IndexOf(selectedUser);
                users.RemoveAt(index);
                users.Insert(index, vm.Student);



            }
            else
            {
                MessageBox.Show("Please Select the student", "Warning!");
            }
        }

        [RelayCommand]
        public void Exit()
        {
            var vm = new CheckVM();
            vm.title = "Do you want to Exit ?";
            Check window = new Check(vm);
            window.ShowDialog();
            if (vm.istrue == true)
            {
                CloseMainWindow();
            }

        }
        public  MainWindowVM()
        {
            users = new ObservableCollection<User>();
            BitmapImage image1 = new BitmapImage(new Uri("/Model/Images/1.png", UriKind.Relative));
            users.Add(new User(12, "kamal", "bandara", "12/1/2000",image1,0.2,1001));
            BitmapImage image2 = new BitmapImage(new Uri("/Model/Images/2.png", UriKind.Relative));
            users.Add(new User(12, "kanura", "perera", "12/1/2000",image2, 1.5,1002));
            BitmapImage image3 = new BitmapImage(new Uri("/Model/Images/3.png", UriKind.Relative));
            users.Add(new User(12, "sajith", "bandara", "12/1/2000",image3, 03.5,1003));
            BitmapImage image4= new BitmapImage(new Uri("/Model/Images/4.png", UriKind.Relative));
            users.Add(new User(12, "Shenith", "bandara", "12/1/2000", image4, 00,1004));

        }
    }
}
