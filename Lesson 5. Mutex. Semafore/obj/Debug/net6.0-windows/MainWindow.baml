   M S B A M L   `   `   `  ����T  PLesson 5. Mutex. Semafore, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:Lesson_5._Mutex._SemaforeLesson_5._Mutex._Semafore  5   	   *    $Lesson_5._Mutex._Semafore.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   9local'clr-namespace:Lesson_5._Mutex._Semafore     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)   .��5	      � .+�5   
   �� $
��Bold"�6   $	��200��6L   $	��200��6Y   $
��Left=�6e   $��10q�6�   ��6%   �� *WorkingThreads+ �� View 5      �� 5      .P�5      ��  �� DisplayMemberBinding 6%   �� *Name+5      5      �� 5   
   $
��Bold"�6   $	��200��6L   $	��200��6Y   $��10q�6e   ��6%   �� *WaitingThreads+ 5      �� 5      .P�5      ��  6!   �� *Name+5      5      �� 5    
   -   5        $
��Bold"�5       $	��200��6l   $	��200��6y   $��Right=�6�   $��10q�6�   ��6D   �� *CreatingThreads+ 5!      �� 5"      .P�5#      ��  6%   �� *Name+5$      5'      �� 5*   
   $��40��6   $��Creating Threads��6   $��20(�67   $��
ExtraBlack"�6E   $��Center=�6^   $��600,-300,0,0q�6{   �� 5+   
   $��40��6   $��Waiting Threads��6   $��20(�66   $��
ExtraBlack"�6D   $��Center=�6]   $��
0,-300,0,0q�6z   �� 5,   
   $��40��6   $��Working Threads��6   $��20(�66   $��
ExtraBlack"�6D   $��Center=�6]   $��-600,-300,0,0q�6z   �� 50   
   -   5        $��40��50   "   $	��100��6.   $��Create ��6:   $��20(�6L   $��
ExtraBlack"�6Z   $��600,300,0,0q�6r   �� 54   
   $��40��6   $��Semaphore Count��6   $��16(�66   $��
ExtraBlack"�6D   $��Center=�6]   $��-340,370,0,0q�6z   �� 57   
   -   5         ��Name$ counterSlider��57       �� TickPlacement$ BottomRight=�6+    �� IsSnapToTickEnabled$
 True��6G    � Minimum$ 1Q�6c    � Maximum$ 12Q�6o    � Value$ 3Q�6|   	 �� TickFrequency$	 1Q�6�   $��Center=�58      $��Center=�6,   $	��150��6I   $��-350,330,0,0q�6U   �� 59   
   -   5        
 ��Name$
 counterText��59      $��24(�5:      $��	ExtraBold"�6"   $��Center=�69   $	��Top=�6V   $��-350,350,0,0q�6n   ��59   *   ��  �� ElementName$ counterSlider�� �� Path$ Value�5:   n   5=      5>      