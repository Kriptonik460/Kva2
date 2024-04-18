using System.Collections.ObjectModel;
using System.Runtime.Remoting.Channels;
using System.Windows;

namespace Shaitanet.View
{
    public partial class MainWindow : Window
    {



        public ObservableCollection<Service> ProductList
        {
            get { return (ObservableCollection<Service>)GetValue(ProductListProperty); }
            set { SetValue(ProductListProperty, value); }
        }

        public static readonly DependencyProperty ProductListProperty =
            DependencyProperty.Register("ProductList", typeof(ObservableCollection<Service>), typeof(MainWindow));



        public MainWindow()
        {
            ProductList = new ObservableCollection<Service>(App.shaitanetEntities.Service);

            InitializeComponent();
        }
    }
}
