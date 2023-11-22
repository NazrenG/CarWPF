using CommandMVVM.Commands;
using CommandMVVM.Models;
using CommandMVVM.Services;
using System;
using System.Collections.ObjectModel;
using System.Windows.Controls;
using System.Windows.Input;

namespace CommandMVVM.ViewModels.PageViewModels;

public class GetAllCarViewModel : NotificationService
{

    public ObservableCollection<Car> Cars { get; set; }
    public ICommand Back { get; set; }

 

    public GetAllCarViewModel(ObservableCollection<Car> Cars)
    {
        this.Cars = Cars;
        Back = new RelayCommand(BackPage, CanBack);
    }

    private bool CanBack(object? obj) => true;

    private void BackPage(object? obj)
    {
        var page = obj as Page;
        if (page != null)
        {
            page.NavigationService.GoBack();
        }
    }


}
