   M S B A M L   `   `   `  ����G  CHowManyWords, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:HowManyWordsHowManyWords  5          HowManyWords.Game   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ,localclr-namespace:HowManyWords     5        N� Title$
  Game��5	      .��5      � -   5         �Name$ mainGrid��5      ���	#FF1D1212 � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6    � RowDefinitions 5   
   �� 5      $
��210* �6   �� 5      $	��37* �6   �� 5      $
��172* �6   .+�5   
   �� -   5         ��Name$ lblWordSelection��5      $��Words��6*   $��1��6:   $��
10,23,10,0q�6J   $	��244��6^   
�������$��24(�6}    J� RenderTransformOrigin$ 0.482,-1.774&�6�   $	��Top=�6�   $
��Bold"�6�   �� 5   
   -   5        $ lblPlayerOne��5      $��Player 1��6&   $
��Left=�69   $��	10,65,0,0q�6T   $��2��6g   $	��Top=�6t   $��38��6�   $��60��6�   
�������6�   �� 5   
   -   5        $ lblPlayerTwo��5      $��Player 2��6&   $
��Left=�69   $��
10,124,0,0q�6T   $��2��6h   $	��Top=�6u   $��38��6�   $��60��6�   
�������6�   �� 5   
   -   5        $ lblPlayerStatus��5      $��Player��6)   $��1��6:   $��161,10,11,0q�6J   
�������$��24(�6r   $ 0.482,-1.774&�6�   $	��Top=�6�   $
��Bold"�6�   $��1��6�   $��2��6�   �� 5   
   -   5         ��Name$ txtPlayerInput��5      $��1��6*   $��52��6:   $��10,51.289,0,0q�6F   $��2��6]    �� TextWrapping$
 Wrap=�6j   $	��244��6~   
������ 
�������$
��Left=�6�   $	��Top=�6�   �� 5   
   -   5         ��Name$ btnCheck��5      $��Check��6#   $��1��63   $
��Left=�6C   $��10,124.289,0,0q�6^   $��2��6v   $	��Top=�6�   $	��244��6�   $��38��6�   6�   �� 5   
   -   5        $ lblPlayerOneScore��5      $��0��6+   $
��Left=�67   $��	70,65,0,0q�6R   $��2��6e   $	��Top=�6r   ���	#FFF3EFEF6�   �� 5   
   -	   5        $ lblPlayerTwoScore��5      $��0��6+   $
��Left=�67   $��
70,124,0,0q�6R   $��2��6f   $	��Top=�6s   ���	#FFF3EFEF6�   �� 5   
   -
   5        $ lblPlayerStatus_Copy��5      $��Player��6.   $��1��6?   $��10,10,162,0q�6O   
�������$��24(�6w   $ 0.482,-1.774&�6�   $	��Top=�6�   $
��Bold"�6�   $��1��6�   $��2��6�   5      5       