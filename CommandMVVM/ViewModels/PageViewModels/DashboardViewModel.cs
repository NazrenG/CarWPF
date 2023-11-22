using CommandMVVM.Commands;
using CommandMVVM.Models;
using CommandMVVM.Services;
using CommandMVVM.ViewModels.WindowViewModels;
using CommandMVVM.Views.Pages;
using CommandMVVM.Views.Windows;
using System;
using System.Collections.ObjectModel;
using System.Windows.Controls;
using System.Windows.Input;

namespace CommandMVVM.ViewModels.PageViewModels;

public class DashboardViewModel : NotificationService
{
    private Car? car1;

    public Car? car { get => car1; set { car1 = value; OnPropertyChanged(); } }

    public ObservableCollection<Car> Cars { get; set; }


    public ICommand AddCommand { get; set; }
    public ICommand GetAllCommand { get; set; }
    public ICommand RemoveCommand { get; set; }
    public ICommand EditCommand { get; set; }



    public DashboardViewModel()
    {
        Cars = new ObservableCollection<Car>()
        {
            new("Kia", "Optima", "2012"),
            new("Hyundai", "Elantra", "2014"),
            new("Audi", "Q7", "2023"),
        };

        car = new();


        AddCommand = new RelayCommand(AddCar, CanAddCar);
        GetAllCommand = new RelayCommand(GetAllCars, CanAllCars);
        RemoveCommand = new RelayCommand(RemoveCar, CanRemove);
        EditCommand = new RelayCommand(EditCar, CanEdit);
    }
    //edit car
    private bool CanEdit(object? obj)
    {
        if (obj is int selectedIndex && selectedIndex >= 0)
        {
            return true;
        }
        return false;
    }

    private void EditCar(object? obj)
    {
        var selectIndex=obj as int?;
            var edit = new EditCarWindow();
            edit.DataContext = new EditCarWindowViewModel(Cars[Convert.ToInt32(selectIndex)]);
            edit.ShowDialog();
        
    }

    //remove car
    private bool CanRemove(object? obj)
    {
        if (obj is int selectedIndex && selectedIndex >= 0)
        {
            return true;
        }
        return false;
    }

    private void RemoveCar(object? obj)
    {
        if (obj is int selectedIndex && selectedIndex >= 0)
        {
            Cars.RemoveAt(selectedIndex);
        }
    }
    //get all car
    public void GetAllCars(object? parameter)
    {
        var page = parameter as Page;
        if (page != null)
        {
            var getAllView = new GetAllCarPage();
            getAllView.DataContext = new GetAllCarViewModel(Cars);
            page.NavigationService.Navigate(getAllView);
        }

    }

    public bool CanAllCars(object? parameter)
    {
        return Cars.Count >= 5;
    }

    //add car
    public void AddCar(object? parameter)
    {
        //var btn = parameter as Button;
        // MessageBox.Show($"{btn.Content} - {btn.Width} - {btn.Margin}");
        Cars.Add(car!);
        car = new();

    }

    public bool CanAddCar(object? parameter)
    {
        return !string.IsNullOrEmpty(car?.Make) &&
               !string.IsNullOrEmpty(car?.Model) &&
               !string.IsNullOrEmpty(car?.Year);
    }
}
