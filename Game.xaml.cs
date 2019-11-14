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
    /// Interaction logic for Game.xaml
    /// </summary>
    public partial class Game : Page
    {
        BoardGame bg;
        public Game()
        {
            InitializeComponent();
            //var db = new UsersEntities3();
            List<string> words = new List<string>();
            words.Add("Beautiful");
            words.Add("Hello");
            words.Add("World");
            words.Add("Computer");
            words.Add("Countdown");
            words.Add("Complicated");
            words.Add("Argentina");
            words.Add("Sophisticated");
            words.Add("Promise");
            words.Add("Carousel");
            words.Add("suspicious");
            words.Add("unecessary");
            words.Add("successful");
            words.Add("superstitious");
            words.Add("Penicillin");
            words.Add("Tetrahedron");

            ////List<Player> Players;
            //Players = db.Players.ToList();
            bg = new BoardGame(0, 0, 1, 0, words);
            //lblPlayerOne.Content = bg.PlayerOne1;
            //lblPlayerTwo.Content = bg.PlayerTwo1;
            lblWordSelection.Content = bg.begin(out int WordArray);
            bg.WordArrayIndex1 = WordArray;
            lblPlayerStatus.Content = bg.CurrentPlayer1.ToString();
        }

        public class BoardGame
        {
            private int PlayerOne = 0;
            private int PlayerTwo = 0;
            private string PlayerOneName;
            private string PlayerTwoName;
            private int CurrentPlayer = 1;
            private int WordArrayIndex;
            private List<string> Words;

            public BoardGame(int playerOne, int playerTwo, int currentPlayer, int wordArrayIndex, List<string> words)
            {
                PlayerOne = playerOne;
                PlayerTwo = playerTwo;
                //PlayerOneName = playerOneName;
                //PlayerTwoName = playerTwoName;
                CurrentPlayer = currentPlayer;
                WordArrayIndex = wordArrayIndex;
                Words = words;
            }

            public int PlayerOne1 { get => PlayerOne; set => PlayerOne = value; }
            public int PlayerTwo1 { get => PlayerTwo; set => PlayerTwo = value; }
            public int CurrentPlayer1 { get => CurrentPlayer; set => CurrentPlayer = value; }
            public int WordArrayIndex1 { get => WordArrayIndex; set => WordArrayIndex = value; }
            public List<string> Words1 { get => Words; set => Words = value; }
            //public string PlayerOneName1 { get => PlayerOneName; set => PlayerOneName = value; }
            //public string PlayerTwoName1 { get => PlayerTwoName; set => PlayerTwoName = value; }

            public string begin(out int WordIndex)
            {

                Random rng = new Random();
                var RandomWords = rng.Next(this.Words1.Count());
                string newWord = Shuffle(this.Words1[RandomWords].ToLower());
                WordIndex = Convert.ToInt32(RandomWords);
                this.WordArrayIndex = WordIndex;
                
                return newWord;


            }

            public string Shuffle(string str)
            {
                char[] array = str.ToCharArray();
                Random rng = new Random();
                int n = array.Length;
                while (n > 1)
                {
                    n--;
                    int k = rng.Next(n + 1);
                    var value = array[k];
                    array[k] = array[n];
                    array[n] = value;
                }
                return new string(array);
            }

            
        }

        private void BtnCheck_Click(object sender, RoutedEventArgs e)
        {
            if (txtPlayerInput.Text.ToLower() == bg.Words1[bg.WordArrayIndex1].ToLower())
            {
                string randomWord = bg.begin(out int WordIndex);
                lblWordSelection.Content = randomWord;

                if (bg.CurrentPlayer1 == 1)
                {
                    txtPlayerInput.Text = "";
                    int PlayerOneScore = Convert.ToInt32(lblPlayerOneScore.Content);
                    bg.CurrentPlayer1++;
                    lblPlayerStatus.Content = bg.CurrentPlayer1;
                    PlayerOneScore++;
                    lblPlayerOneScore.Content = PlayerOneScore.ToString();
                }
                else
                {
                    txtPlayerInput.Text = "";
                    int PlayerTwoScore = Convert.ToInt32(lblPlayerTwoScore.Content);
                    bg.CurrentPlayer1--;
                    lblPlayerStatus.Content = bg.CurrentPlayer1;
                    PlayerTwoScore++;
                    lblPlayerTwoScore.Content = PlayerTwoScore.ToString();
                }
            }
            else
            {
                txtPlayerInput.Text = "";
                string randomWord = bg.begin(out int WordIndex);
                if (bg.CurrentPlayer1 == 1)
                {
                    bg.CurrentPlayer1++;
                    lblPlayerStatus.Content = bg.CurrentPlayer1;
                }
                else {
                    bg.CurrentPlayer1--;
                    lblPlayerStatus.Content = bg.CurrentPlayer1;
                }
                lblWordSelection.Content = randomWord;
            }
            
        }

    }
}
