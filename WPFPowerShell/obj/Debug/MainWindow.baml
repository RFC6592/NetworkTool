   M S B A M L   `   `   `  ����H  DWPFPowerShell, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:WPFPowerShellWPFPowerShell  5   	       WPFPowerShell.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:WPFPowerShell     5   	     � Title$  r0tlex Admin v1.0��5	   	   $	��455��6#   $	��800��60   .��5
      � 
�������.+�5   
   �� -   5         ��Name$ bSearchUsername��5      $��Search��6*   $
��Left=�6;   $��
285,42,0,0q�6V   $	��Top=�6j   $��97��6�   $��19��6�   
�������6�   �� 5   
   -   5        $ bSearchComputer��5      $��Search��6*   $
��Left=�6;   $��
285,77,0,0q�6V   $	��Top=�6j   $��97��6�   $��19��6�   
�������6�   �� 5   
   $
��Left=�6   $��23��6-   $��
146,41,0,0q�69    �� TextWrapping$
 Wrap=�6M   $	��Top=�6a   $	��120��6y    �� 	IsEnabled . 6�   �� 5   
   $
��Left=�6   $��21��6-   $��
146,77,0,0q�69   $
 Wrap=�6M   $	��Top=�6a   $	��120��6y    . 6�   �� 5   
   $
��Bold"�6   $��	Username:��6"   $
��Left=�66   $��	28,41,0,0q�6Q   $	��Top=�6d   ���	#00000000���	#FF0E0E0E6�   �� 5   
   $
��Bold"�6   $��Computer name:��6"   $
��Left=�6;   $��	13,77,0,0q�6V   $	��Top=�6i   ���	#00000000
���   �6�   �� 5   
   $
��Left=�6   $	��305��60   $��	0,114,0,0q�6=   $	��Top=�6P   $	��792��6h   .@�5      �� $��User Account Control��6   $��
19,0,-19,0q�64   .��5      � ���	#FFE5E5E5$��	0,-2,0,-3q�6.    � ColumnDefinitions 5      �� 5      $
��221* �6+   �� 5      $
��142* �6+   �� 5      $
��423* �6+   .+�5!      �� -   5         ��Name$ image1��5!      $
��Left=�6,   $	��101��6G   $��	14,12,0,0q�6T   $	��Top=�6g   $	��103��6   $��unknown.jpg��6�    J� Effect 5"      3  -System.Windows.Media.Effects.DropShadowEffect  5#         Opacity$	 0.5Q�6/   5%      �� 5&      -   5         ��Name$ 	rawoutput��5&      $��10,174,10,10q�61   $
 Wrap=�6G   $	 �� HorizontalScrollBarVisibility$	 Visible=�6[   "
 �� VerticalScrollBarVisibility$

 Auto=�6�   $��14.667(�6�   
����������	#FF688CAF
���   �$��Microsoft Tai Le)�6   �� 
IsReadOnly .  �� IsUndoEnabled .  $��3��6W   �� TextDecorations 6�   Z� 6W  �� 5'      -   5         ��Name$ 	namelabel��5'       $
��Left=�64   $��19��6O   $��
140,18,0,0q�6[   $
��Wrap=�6o   $��Name:��6�   $	��Top=�6�   $��40��6�   
���   �$��Khmer UI)�6�   �� 5(      -   5        $ 
emaillabel��5(       $
��Left=�65   $��18��6P   $��
140,47,0,0q�6\   $
��Wrap=�6p   $��Email:��6�   $	��Top=�6�   $��40��6�   
���   �$��Khmer UI)�6�   �� 5)      -   5        $ 	deptlabel��5)       $
��Left=�64   $��19��6O   $��
140,77,0,0q�6[   $
��Wrap=�6o   $��Title:��6�   $	��Top=�6�   $��40��6�   
���   �$��Khmer UI)�6�   �� 5*      -   5        $ 
phonelabel��5*       $
��Left=�65   $��18��6P   $��140,108,0,0q�6\   $
��Wrap=�6q   $��Phone:��6�   $	��Top=�6�   $��40��6�   
���   �$��Khmer UI)�6�   �� 5,      -	   5        $ lockoutfield��5,       $��19��66   $��
1,18,350,0q�6B   $
��Wrap=�6V   $��Locked Out:��6j   $	��Top=�6}   
���   �$��Khmer UI)�6�   $��2��6�   �� 5-      -
   5        $ enabledfield��5-       $��19��66   $��
1,47,371,0q�6B   $
��Wrap=�6V   $��Enabled:��6j   $	��Top=�6z   
���   �$��Khmer UI)�6�   $��2��6�   �� 5.      -   5        $ 	namefield��5.      $
��Left=�61   $��22��6L   $��
187,15,0,0q�6X   $
 Wrap=�6l   $	��Top=�6�   $	��172��6�   
������� . ���	#FF777777 J� Opacity$
 0.75Q�6�    �� 
CaretBrush �	#FF007ACD|�.  $��2��6  �� 5/      -   5        $ 
emailfield��5/      $
��Left=�62   $��22��6M   $��
187,44,0,0q�6Y   $
 Wrap=�6m   $	��Top=�6�   $	��172��6�    . 
����������	#FF777777$
 0.75Q�6�    �	#FF007ACD|�.  $��2��6  �� 50      -   5        $ 
titlefield��50      $
��Left=�62   $��22��6M   $��
187,74,0,0q�6Y   $
 Wrap=�6m   $	��Top=�6�   $	��172��6�    . 
����������	#FF777777$
 0.75Q�6�    �	#FF007ACD|�.  $��2��6  �� 51      -   5        $ 
phonefield��51      $
��Left=�62   $��22��6M   $��187,105,0,0q�6Y   $
 Wrap=�6n   $	��Top=�6�   $	��172��6�    . 
����������	#FF777777$
 0.75Q�6�    �	#FF007ACD|�.  $��2��6  �� 52      -   5        $ 	infofield��52      $��Right=�61   $��94��6M   $��	0,33,14,0q�6Y   $
 Wrap=�6l   $	��Top=�6�   $	��266��6�    . $
 Visible=�6�   ���	#FF7F3D3D
����������	#FF777777$
 0.75Q�6  $��2��6-  �� 53      -   5         ��Name$ 	infolable��53      $��Account Notes -----��6/   $��Right=�6N   $��23��6j   $��
0,10,141,0q�6v   $	��Top=�6�   $	��139��6�   
���   �$��Khmer UI)�6�   $��2��6�   �� 54      -   5        $ bUnlock��54      $��Unlock��6.   $
��Left=�6?   $��22��6Z   $��
10,144,0,0q�6f   $	��Top=�6z   $��70��6�   
������� J� OpacityMask
 �   �
���   �|�.  $��Khmer UI)�6�   �� 56      -   5        $ bEnable��56      $��Enable��6.   $
��Left=�6?   $��22��6Z   $��
85,144,0,0q�6f   $	��Top=�6z   $��70��6�   
�������
���   �|�.  $��Khmer UI)�6�   �� 57      -   5        $ bListusergroups��57      $��List AD group memberships��66   $��22��6Z   $��114,144,0,0q�6f   $	��Top=�6{   
�������
���   �$
��Left=�6�   $	��157��6�   $��156.402��6�   |�.  $��Khmer UI)�6  $��2��6  �� 58      -   5        $ bPasswordinfo��58      $��See password information��64   $
��Left=�6W   $��22��6r   $��
81,144,0,0q�6~   $	��Top=�6�   $	��170��6�   
�������
���   �|�.  $��Khmer UI)�6�   $��2��6  $��1��6  59      5:      �� 5;      $��Computer Management��6   $��
31,0,-55,0q�63   $��9(�6G   .��5>      � ���	#FFE5E5E5$��0,0,0,-3q�6.    5?      �� 5@      $	��31* �6+   �� 5A      $
��231* �6+   .+�5D      �� -   5        $	 iPC��5D      $
��Left=�6)   $	��117��6D   $��	10,25,0,0q�6Q   $	��Top=�6d   $	��116��6|   $��pc.jpg��6�   $��2��6�    5E        5F      $	 0.5Q�6/   5H      �� 5J      $��IP address:��6   $
��Left=�63   $��	71,25,0,0q�6N   $	��Top=�6a   $��1��6y   �� 5K      $��Current user:��6   $
��Left=�65   $��	63,59,0,0q�6P   $	��Top=�6c   $��1��6{   �� 5L      $��Uptime report:��6   $
��Left=�66   $��	56,91,0,0q�6Q   $	��Top=�6d   $��1��6|   �� 5M      $��Remote Options:��6   $
��Left=�67   $��
47,125,0,0q�6R   $	��Top=�6f   $��1��6~   �� 5N      
������� . ���	#FF777777$
 0.75Q�6[    �	#FF007ACD$
��Left=�6�   $��23��6�   $��
131,21,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   |�.  $	��120��6�   $��1��6  $��10(�6  �� 5O      
������� . ���	#FF777777$
 0.75Q�6[    �	#FF007ACD$
��Left=�6�   $��23��6�   $��
131,55,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   |�.  $	��120��6�   $��1��6  $��10(�6  �� 5P      
������� . ���	#FF777777$
 0.75Q�6[    �	#FF007ACD$
��Left=�6�   $��23��6�   $��
131,87,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   |�.  $	��120��6�   $��1��6  $��10(�6  �� 5Q      -   5        $ bSCCM��5Q      $
��SCCM��6,   
�������
���   �|�.  $��Khmer UI)�6t   $
��Left=�6�   $��131,122,0,0q�6�   $	��Top=�6�   $��37��6�   $��22��6�   $��11(�6�   $��1��6�   �� 5R      -   5        $
 bVNC��5R      $	��VNC��6+   
�������
���   �|�.  $��Khmer UI)�6q   $
��Left=�6�   $��173,122,0,0q�6�   $	��Top=�6�   $��37��6�   $��22��6�   $��11(�6�   $��1��6�   �� 5S      -   5        $
 bRDP��5S      $	��RDP��6+   
�������
���   �|�.  $��Khmer UI)�6q   $
��Left=�6�   $��214,122,0,0q�6�   $	��Top=�6�   $��37��6�   $��22��6�   $��11(�6�   $��1��6�   �� 5T      -   5        $ bPing��5T      $
��Ping��6,   
�������
���   �|�.  $��Khmer UI)�6s   $
��Left=�6�   $��
10,156,0,0q�6�   $	��Top=�6�   $��32��6�   $��20��6�   $��11(�6�   �� 5U      -   5        $ bBrowse��5U      $��
Browse C:\��6.   $
��Left=�6C   $��
47,156,0,0q�6^   $	��Top=�6r   $��57��6�   $��20��6�   $��11(�6�   $��2��6�   
�������6�   �� 5V      -   5        $ bUpdatePolicy��5V      $��Update policy��64   
�������
���   �|�.  $��Khmer UI)�6�   $
��Left=�6�   $��205,156,0,0q�6�   $	��Top=�6�   $	��154��6�   $��20��6�   $��11(�6�   $��1��6  �� 5W      -   5        $ bActiveDirectory��5W      $"��List Active Directory groups��67   
�������
���   �|�.  $��Khmer UI)�6�   $
��Left=�6�   $��364,156,0,0q�6�   $	��Top=�6�   $	��154��6�   $��20��6   $��11(�6  $��1��6  �� 5X      -   5        $ bListApplications��5X      $!��List installed applications��68   
�������
���   �|�.  $��Khmer UI)�6�   $
��Left=�6�   $��523,156,0,0q�6�   $	��Top=�6�   $	��154��6�   $��20��6   $��11(�6  $��1��6  �� 5Y      
����������	#FF688CAF
���   �$��Microsoft Tai Le)�6x    .  .  $
��Left=�6�   $��91��6�   $��
10,181,0,0q�6�   $
 Wrap=�6�   $	��Top=�6  $	��766��6%  $��2��61   6]   Z� 61  �� 5Z      
������� . ���	#FF777777$
 0.75Q�6[    �	#FF007ACD|�.  $
��Left=�6�   $	��125��6�   $��
266,17,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��313��6�   $��1��6  �� 5[      -   5        $ bManageComputer��5[      $��Manage computer��66   
�������
���   �|�.  $��Khmer UI)�6�   $
��Left=�6�   $��
584,35,0,0q�6�   $	��Top=�6�   $��99��6�   $��20��6�   $��11(�6�   $��1��6
  �� 5\      -   5        $ bRestartService��5\      $��Restart a Service��66   
�������
���   �|�.  $��Khmer UI)�6�   $
��Left=�6�   $��
584,68,0,0q�6�   $	��Top=�6�   $��99��6�   $��20��6�   $��11(�6�   $��1��6  �� 5]      -    5        $ bViewKillProcess��5]      $��View/Kill process��67   
�������
���   �|�.  $��Khmer UI)�6�   $
��Left=�6�   $��
584,99,0,0q�6�   $	��Top=�6�   $��99��6�   $��20��6�   $��11(�6�   $��1��6  5^      5_      5`      �� 5a   
   $��r0tlex��6   $
��Left=�6!   $��
589,50,0,0q�6<   $	��Top=�6P   $��24(�6h   $��Vladimir Script)�6v   ]� 5b   
   $
��Left=�6   $��36��6/   ��.  $	��Top=�6Q   $	��792��6i   .+�5c      o� $��26��6   $	��Top=�6   $	��791��67   .@�5d      m� $��External Tools��6   $��99��63   .@�5e      m� $"��Active Directory Search User��6   �� 5f      m� 5g      -!   5         m�Name$ mCommandPrompt��5g      $��Command Prompt��67   m� 5h      -"   5        $ mPowerShell��5h      $��
PowerShell��64   m� 5i      -#   5        $ mSnippingTool��5i      $ ��Snipping Tool (Screenshot)��66   5j      m� 5k      $��Scripts��6   5l      5m      5o      5p      