   M S B A M L   `   `   `  ����G  CHowManyWords, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:HowManyWordsHowManyWords  5   	       HowManyWords.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:HowManyWords     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)   .��5	      � ���	#FF1D1212 � ColumnDefinitions 5
   
   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6    � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   .+�5   
   �� -   5         ��Name$ Label01��5      $��0��6!   $��2��6.   $��How Many Words��6>   
�������$��Center=�6j   $��Center=�6�   $��20(�6�   �� 5   
   -   5         ��Name$ btnStart��5      $��Start��6#   $��2��63   $��Center=�6C   $��28,36,27,10q�6`   $��1��6u   $��Center=�6�   $	��104��6�   $��38��6�   6�   �� 5   
   -   5        $ btnLeaderboards��5      $��LeaderBoards��6*   $��2��6A   $��Center=�6Q   $��28,36,27,10q�6n   $��2��6�   $��Center=�6�   $	��104��6�   $��38��6�   �� 5   
   -   5        $ btnExit��5      $
��Exit��6"   $��2��61   $��Center=�6A   $��28,36,27,10q�6^   $��3��6s   $��Center=�6�   $	��104��6�   $��38��6�   6�   �� 5   
   -   5        $ lblEnterName��5      $��Player 1��6&   $��4��69   $
��Left=�6I   $��10,8,0,0q�6d   $��1��6v   $	��Top=�6�   $	��139��6�   $��23��6�   
�������6�   �� 5   
   -   5         ��Name$ txtPlayerOne��5      $��4��6(   $
��Left=�68   $��23��6S   $��	10,36,0,0q�6_   $��1��6r    �� TextWrapping$
 Wrap=�6   $	��Top=�6�   $	��120��6�   �� 5   
   -   5        $ lblEnterSecondPlayer��5      $��Player 2��6.   $��4��6A   $
��Left=�6Q   $��10,8,0,0q�6l   $��2��6~   $	��Top=�6�   $	��139��6�   $��23��6�   
�������6�   �� 5   
   -   5        $ txtPlayerTwo��5      $��4��6(   $
��Left=�68   $��23��6S   $��	10,36,0,0q�6_   $��2��6r   $
 Wrap=�6   $	��Top=�6�   $	��120��6�   5       5!      