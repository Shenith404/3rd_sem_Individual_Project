   M S B A M L   `   `   `  ����>  :LMS, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:Desktop01	Desktop01  5   	       Desktop01.AddUserWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:Desktop01     5   	     � WindowStartupLocation$  CenterScreen=�5   	    � WindowStyle$
 None=�5	   	   $	��550��5
   E   $	��320��6R    � Title 6	   �� *Title+ �� UpdateSourceTrigger$ PropertyChanged=� � DataContext 5         Desktop01.AddUserVM  5   
   .��5      � .+�5   
   �� $	��300��5      $	��530��6   $	��Top=�5       �� Orientation$ Vertical=�6%   $��	 -8 0 0 0q�6<   .+�5      �� $��	0 10 10 0q�6   $��20��6+   $��15(�67    �� TextAlignment$ Center=�6E   
����  �$��Center=�6�   $	��200��6�   ��6o   �� *Title+$ PropertyChanged=�6�   �� 5      -   5         ��Name$	 img��5   +   $��80��6   $��80��6   $��	0 20 0 20q�68   ��6L   �� *SelectedImage+5      �� 5      $��40��6   $��40��6"   $��0q�6-   
������ $��Center=�6Z   $��Bottom=�6�   ��6w   �� *UploadPhotoCommand+.��5      �� .+�5      �� $��/Model/Images/pe.png��6   6=   5      5      �� 5       $&�� Index No:(you can't Edit this !)��6      
Atextblock#��[  6@   �� 5!      
 � Tag$ You cant Edit this��6Q   	 �� 
IsReadOnly$
	 True��6k     Atextbox#��[ 6}   ��6   �� *Index+$ PropertyChanged=�6}   �� 5#      $��First Name:��6   #��[  6+   �� 5$      #��[ 6V   ��6   �� *	Firstname+$ PropertyChanged=�6V   �� 5%      $��
Last Name:��6   #��[  6*   �� 5&      #��[ 6U   ��6   �� *
Lastname+$ PropertyChanged=�6U   �� 5'      $
��Age:��6   #��[  6$   �� 5(      #��[ 6P   ��6   �� *Age+$ PropertyChanged=�6P   �� 5)      $��DateOfBirth(dd/mm/yyyy):��6   #��[  68   �� 5*      #��[ 6X   ��6   �� *Dateofbirth+$ PropertyChanged=�6X   �� 5+      $	��GPA��6   #��[  6#   �� 5,      #��[ 6G   ��6   �� *Gpa+$ Default=�6l   �� 5.      $
��Save��6     savebtn#��[ 6D   ��6$   �� *SaveCommand+53      56      �� 57   
   $	��300��6   $	��200��6!   $��Center=�6.   $	��Top=�6K   .+�59      �� $��X��6   $��19��6!   
������ 
���  ��$��0q�6w   
���  ��$��Right=�6�   ��6,   �� *closeCommand+6�   5;      5=      5>      