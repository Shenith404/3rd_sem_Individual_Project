   M S B A M L   `   `   `  ����>  :LMS, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:Desktop01	Desktop01  5   	       Desktop01.Check   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:Desktop01     5   	     � WindowStartupLocation$  CenterScreen=�5   	    � WindowStyle$
 None=�5	   	    � Title$ Check��5
   	   $	��100��6   $	��300��6$    � DataContext 5         Desktop01.CheckVM  5   
   .��5      � .+�5   
   �� .+�5      �� $��15(�6/   $��0 5 0 0q�6=    �� TextAlignment$ Center=�6N   ��6   �� *Title+5      �� 5       �� Orientation$ 
Horizontal=�6   .+�5      ��    ButtonBackground#��[  6   $��Center=�6g   
�������$��0q�5      $	��Yes��5      $��30��6#   $��90��6/   $��
40 20 10 0q�6:   ��5   H   �� *
YesCommand+5   :   �� 5      $��Center=�6   #��[  6T   
�������$��0q�5      $��No��5      $��90��6"   $��30��6-   $��
30 20 10 0q�69   ��5   6   �� *	NoCommand+5   9   5      5      5      5       