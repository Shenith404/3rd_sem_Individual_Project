   M S B A M L   `   `   `  ����>  :LMS, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:Desktop01	Desktop01  5   	       Desktop01.MainWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:Desktop01     5   	     � WindowStyle$
  None=�5   	    � WindowStartupLocation$ CenterScreen=�5	   	    � Title$ 
MainWindow��5
   	   $	��650��6   $
��1200��6)    � DataContext 5         Desktop01.MainWindowVM  5   
   .��5      � .+�5   
   �� $	��300��6   $	��650��6!   $��Bottom=�5      $
��Left=�5         ButtonBackground#��[  5       �� Orientation$ Vertical=�6D   .+�5      �� $��
-10 80 0 0q�6   $	��280��6,   $��Student Management system��68   $��Center=�6Y   $��28(�6v   
�������$
��Bold"�6�   $
��Wrap=�6�    �� TextAlignment$ Center=�6�   �� 5      $��
 40 20 0 0q�6   .+�5      ��   
mainbutten#��[ 5      ��5      �� *AddStudentCommand+.��5      �� .+�5      �� $��/Model/Images/au.png��6!   5      5      �� 5      #��[ 6   ��6?   �� *" ExecuteEditStudentCommandCommand+.��5       �� .+�5!      �� $��/Model/Images/eu.png��6    5"      5#      �� 5$      #��[ 6   ��6?   �� *DeleteCommand+.��5%      �� .+�5&      �� $��/Model/Images/du.png��6    5'      5(      �� 5)      $��-40 180 0 0q�6   #��[ 6/   ��6S   �� *ExitCommand+.��5*      �� .+�5+      �� $��/Model/Images/e.png��6    5,      5-      5/      52      �� 53   
   $	��650��6   $	��840��6"   
�������$��Right=�6A   $	��Top=�6]   $ Vertical=�6u   .+�54      �� $	��200��6   $��40��6$   $
��Left=�60   $��	45 80 0 0q�6K   $��35(�6^   	Members6u   �� 55      $�� 50 10 0 -10q�6   $
��Left=�60   $	��720��6K   
������ $ 
Horizontal=�6q   .+�56      �� $��0 0 10 0q�6   
�������$��70��6B     ListView#��[ 6N   $��Index��6p   �� 58      $��0 0 0 0q�6   
�������$��62��6A   #��[ 6M   $��Image��6o   �� 59      $��	FirstName��6   
�������$	��120��6?   #��[ 6K   �� 5:      $��LastName��6   
�������$	��120��6>   #��[ 6K   �� 5;      $	��Age��6   
�������#��[ 6:   �� 5<      $��DataOfBirth��6   
�������$	��120��6B   #��[ 6O   �� 5=      $	��Gpa��6   
�������#��[ 6:   5?      �� 5A      -   5         ��Name$ Listview��5A      $��0q�6)   $	��800��6=   $��	40 20 0 0q�6I   
������ $	��400��6u   ��6�   �� *Users+ �� UpdateSourceTrigger$ PropertyChanged=� �� SelectedItem 5B      �� *SelectedUser+$ PropertyChanged=���5C      �� 5D      .R�5E      �� 
������ #��[  6:   $��1q�6j   	 �� Padding$		 0.1q�5F   !   
 �� CornerRadius$
 5��60   $	��725��6A   $��50��6M   ._�5G      �� $	��720��6)   $��	-20 0 0 0q�65   
������ $ 
Horizontal=�6b   .+�5I   "   �� $��90��6G   #��[ 6R   ��6,   �� *
SetIndex+6R   �� 5K   "   $��40��6(   $��40��63   $��
-20 0 24 0q�6?   ��6S   �� *Image+�� 5L   "   $	��120��6k   #��[ 6x   ��6,   �� *	FirstName+$ PropertyChanged=�6x   �� 5M   "   $	��120��6j   #��[ 6w   ��6,   �� *
LastName+$ PropertyChanged=�6w   �� 5N   "   #��[ 6g   ��6,   �� *Age+$ PropertyChanged=�6g   �� 5O   "   $	��120��6m   #��[ 6y   ��6,   �� *DateOfBirth+$ PropertyChanged=�6y   �� 5P   "   #��[ 6f   ��6,   �� *GPA+$ PropertyChanged=�6f   5R      5T      5U      5X      5Y      �� 5Z   
   $��79��6   $	��Top=�6!   
������ .+�5\      �� $��19��6   $��19��6    $��Right=�6,   $��5q�5]      
������ $��0q�69   
���  ����5^      �� *ExitCommand+.��65   X68   5_      5a      5b      