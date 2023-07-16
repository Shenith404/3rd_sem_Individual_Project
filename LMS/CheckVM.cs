using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Desktop01
{
   public partial class CheckVM:ObservableObject
    {
        [ObservableProperty]
        public bool istrue;

        [ObservableProperty]
        public string title;

        public Action CloseAction { get; set; }

        [RelayCommand]
        public void Yes() { 
            istrue = true;
            CloseAction();
        }
        [RelayCommand]
        public void No()
        {
            istrue = false;
            CloseAction();
            
        }
    }
}
