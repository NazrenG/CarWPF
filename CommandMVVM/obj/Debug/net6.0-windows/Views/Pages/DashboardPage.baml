   M S B A M L   `   `   `  ����F  BCommandMVVM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:CommandMVVM.Views.PagesCommandMVVM.Views.Pages  5      +    %CommandMVVM.Views.Pages.DashboardPage   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      7local%clr-namespace:CommandMVVM.Views.Pages     5      _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialdesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      -   5          N�Name$
  page��5       N� Title$ DashboardPage��5
      .��5      � 
�������.+�5   
   �� $��Center=�6   $	��500��60   $��10q�6<   .+�5      �� -   5         ��Name$	 cmb��5      $��10 20 10 20q�5       �� SelectedItem 5   $   �� *
SelectItem+��5      �� *Cars+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�5      �� 5      $��
5 20 10 20q�6    �� Orientation$ 
Horizontal=�6-   .+�5      �� $��70��6   $
��Make��6#   $��0 0 20 0q�62   $��18(�6F   �� 5      $	��400��5      $��0 0 10 0q�6!   $��18(�64   $��Right=�6B   ��5      �� *
car.Make+$ TwoWay=�$ PropertyChanged=�5   B   5      �� 5      $��
5 20 10 20q�6   $ 
Horizontal=�6-   .+�5      �� $��70��6   $��Model��6#   $��0 0 20 0q�63   $��18(�6F   �� 5      $	��400��5       $��0 0 10 0q�6!   $��18(�64   $��Right=�6B   ��5      �� *	car.Model+$ TwoWay=�$ PropertyChanged=�5    B   5!      �� 5$      $��
5 20 10 20q�6   $ 
Horizontal=�6-   .+�5%      �� $��70��6   $
��Year��6#   $��0 0 20 0q�62   $��18(�6E   �� 5&      $	��400��5(      $��0 0 10 0q�6!   $��18(�64   $��Right=�6B   ��5'      �� *
car.Year+$ TwoWay=�$ PropertyChanged=�5(   B   5)      �� 5,      $��Center=�6   $ 
Horizontal=�67   .+�5-      �� $	��100��50      $��10q�6"   $	��Add��6.   ��5.      �� *
AddCommand+��5/      ��  �� RelativeSource �� *Self+50   .   �� 52      $	��100��6   $��10q�6&   $
��Edit��62   ��6A   �� *EditCommand+��6a   ��  �� ElementName$	 cmb��	 �� Path$	 SelectedIndex��� 53      $	��100��6   $��10q�6&   $��Remove��62   ��54      �� *RemoveCommand+��6;   �� $	 cmb��$	 SelectedIndex��� 57      $	��100��5:      $��10q�6"   $��GetAll��6.   ��58      �� *GetAllCommand+��67   �� $
 page��5:   .   5;      5=      5?      5A      