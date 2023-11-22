using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CommandMVVM.Services;
using System.Threading.Tasks;
using CommandMVVM.Models;
using System.Windows.Input;
using CommandMVVM.Commands;
using System.Windows.Controls;
using CommandMVVM.Views.Pages;
using CommandMVVM.ViewModels.PageViewModels;
using MaterialDesignThemes.Wpf;

namespace CommandMVVM.ViewModels.WindowViewModels
{
    public class EditCarWindowViewModel : NotificationService
    {
        private Car car;
        private Car editCar;

        public Car Car { get => car; set { car = value; OnPropertyChanged(); } }

        public Car EditCar { get => editCar; set { editCar = value; OnPropertyChanged(); } }

        public ICommand SaveCommand { get; set; }

        public EditCarWindowViewModel(Car car)
        {
            Car = car;
            EditCar=new Car(Car.Make,Car.Model,Car.Year);
            SaveCommand = new RelayCommand(SaveEdit, CanSave);
        }


        private bool CanSave(object? obj)
        {
            if (Car.Make != EditCar.Make || Car.Model != EditCar.Model || Car.Year != EditCar.Year) return true;
            return false;
        }

        private void SaveEdit(object? obj)
        {
           Car.Make= EditCar.Make;
            Car.Model= EditCar.Model;
            Car.Year= EditCar.Year;
        }
    }
}
