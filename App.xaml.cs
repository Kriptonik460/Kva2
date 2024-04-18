using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;

namespace Shaitanet
{
    /// <summary>
    /// Логика взаимодействия для App.xaml
    /// </summary>
    public partial class App : Application
    {
        public static Kva_2Entities shaitanetEntities { get; set; }

        public App() 
        { 
            shaitanetEntities = new Kva_2Entities();
        }
    }
}
