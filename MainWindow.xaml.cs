using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace HowManyWords
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window

        
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void BtnExit_Click(object sender, RoutedEventArgs e)
        {
            this.Hide();
        }

        private void BtnStart_Click(object sender, RoutedEventArgs e)
        {
            if (txtPlayerOne.Text == "" || txtPlayerTwo.Text == "")
            {
            }
            else
            {
                //using (var db = new UsersEntities4())
                //{

                //    Player newPlayer = new Player();
                //    newPlayer.PlayerOne = txtPlayerOne.Text;
                //    newPlayer.PlayerTwo = txtPlayerTwo.Text;
                //    db.Players .Add(newPlayer);
                //    db.SaveChanges();

                //}
                Game gamewindow = new Game();
                this.Content = gamewindow;
            }
            
        }
    }
}
