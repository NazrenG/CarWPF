   M S B A M L   `   `   `  ����F  BCommandMVVM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:CommandMVVM.Views.WindowsCommandMVVM.Views.Windows  5   	   -    'CommandMVVM.Views.Windows.EditCarWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   9local'clr-namespace:CommandMVVM.Views.Windows     5   	   -   5        $��window��5        � Title$  EditCarWindow��5   	   $	��450��6   $	��800��6,   .��5	      �� $��Center=�6   $	��500��6,   $��10q�68   
�������.+�5
   
   �� $	��100��6   $��15q�6   $
��Left=�6)   $
��Back��6D   ��5      �� *Back+��6*   ��  �� ElementName$ window��5      �� 5   
   $��
5 20 10 20q�6    �� Orientation$ 
Horizontal=�6)   .+�5      �� $��70��6   $
��Make��6   $��0 0 20 0q�6.   $��18(�6B   �� 5      $	��400��5      $��0 0 10 0q�6!   $��18(�64   $��Right=�6B   ��5      �� *EditCar.Make+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�5   B   5      �� 5   
   $��
5 20 10 20q�6   $ 
Horizontal=�6)   .+�5      �� $��70��6   $��Model��6   $��0 0 20 0q�6/   $��18(�6B   �� 5      $	��400��5      $��0 0 10 0q�6!   $��18(�64   $��Right=�6B   ��5      �� *EditCar.Model+$ TwoWay=�$ PropertyChanged=�5   B   5      �� 5   
   $��
5 20 10 20q�6   $ 
Horizontal=�6)   .+�5      �� $��70��6   $
��Year��6   $��0 0 20 0q�6.   $��18(�6A   �� 5      $	��400��5!      $��0 0 10 0q�6!   $��18(�64   $��Right=�6B   ��5       �� *EditCar.Year+$ TwoWay=�$ PropertyChanged=�5!   B   5"      �� 5#   
   $ 
Horizontal=�6   $��Center=�6.   .+�5$      �� $��90��6   $��15q�6    $��	Save Edit��6,   ��6@   �� *SaveCommand+5&      5'      5(      