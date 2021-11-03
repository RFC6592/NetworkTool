# 
# Script.ps1
#


Add-Type -AssemblyName PresentationFramework
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

[xml]$xaml = @"

<Window 
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        
        Title="Sami E. Admin v1.0" Height="455" Width="800">
    <Grid Background="White">


        <!-- Zone du haut -->
        <!-- Les boutons -->
        <Button x:Name="bSearchUsername" Content="Search" HorizontalAlignment="Left" Margin="285,42,0,0" VerticalAlignment="Top" Width="97" Height="19" Background="White"/>
        <Button x:Name="bSearchComputer" Content="Search" HorizontalAlignment="Left" Margin="285,77,0,0" VerticalAlignment="Top" Width="97" Height="19" Background="White"/>

        <TextBox HorizontalAlignment="Left" Height="23" Margin="146,41,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="120" SpellCheck.IsEnabled="True"/>
        <TextBox HorizontalAlignment="Left" Height="21" Margin="146,77,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="120" SpellCheck.IsEnabled="True"/>
        <Label FontWeight="Bold" Content="Username:" HorizontalAlignment="Left" Margin="28,41,0,0" VerticalAlignment="Top" Background="#00000000" Foreground="#FF0E0E0E"/>
        <Label FontWeight="Bold" Content="Computer name:" HorizontalAlignment="Left" Margin="13,77,0,0" VerticalAlignment="Top" Background="#00000000" Foreground="Black"/>

        <!-- Zone du bas -->
        <TabControl HorizontalAlignment="Left" Height="305" Margin="0,114,0,0" VerticalAlignment="Top" Width="792">
            <TabItem Header="User Account Control" Margin="19,0,-19,0">

                <Grid Background="#FFE5E5E5" Margin="0,-2,0,-3">
                    <Grid.ColumnDefinitions>
                        <ColumnDefinition Width="221*"/>
                        <ColumnDefinition Width="142*"/>
                        <ColumnDefinition Width="423*"/>
                    </Grid.ColumnDefinitions>
                    <Image x:Name="image1" HorizontalAlignment="Left" Height="101" Margin="14,12,0,0" VerticalAlignment="Top" Width="103" Source="unknown.jpg">
                        <Image.Effect>
                            <DropShadowEffect Opacity="0.5"/>
                        </Image.Effect>
                    </Image>
                    <TextBox x:Name="rawoutput" Margin="10,174,10,10" TextWrapping="Wrap" HorizontalScrollBarVisibility="Visible" VerticalScrollBarVisibility="Auto" FontSize="14.667" Background="White" BorderBrush="#FF688CAF" Foreground="Black" TextDecorations="{x:Null}" FontFamily="Microsoft Tai Le" IsReadOnly="True" IsUndoEnabled="False" Grid.ColumnSpan="3"/>
                    <TextBlock x:Name="namelabel"  HorizontalAlignment="Left" Height="19" Margin="140,18,0,0" TextWrapping="Wrap" Text="Name:" VerticalAlignment="Top" Width="40" Foreground="Black" FontFamily="Khmer UI"/>
                    <TextBlock x:Name="emaillabel"  HorizontalAlignment="Left" Height="18" Margin="140,47,0,0" TextWrapping="Wrap" Text="Email:" VerticalAlignment="Top" Width="40"  Foreground="Black" FontFamily="Khmer UI"/>
                    <TextBlock x:Name="deptlabel"  HorizontalAlignment="Left" Height="19" Margin="140,77,0,0" TextWrapping="Wrap" Text="Title:" VerticalAlignment="Top" Width="40"  Foreground="Black" FontFamily="Khmer UI"/>
                    <TextBlock x:Name="phonelabel"  HorizontalAlignment="Left" Height="18" Margin="140,108,0,0" TextWrapping="Wrap" Text="Phone:" VerticalAlignment="Top" Width="40"  Foreground="Black" FontFamily="Khmer UI"/>

                    <TextBlock x:Name="lockoutfield" Height="19" Margin="1,18,350,0" TextWrapping="Wrap" Text="Locked Out:" VerticalAlignment="Top" Foreground="Black" FontFamily="Khmer UI" Grid.Column="2"/>
                    <TextBlock x:Name="enabledfield" Height="19" Margin="1,47,371,0" TextWrapping="Wrap" Text="Enabled:" VerticalAlignment="Top" Foreground="Black" FontFamily="Khmer UI" Grid.Column="2"/>
                    <TextBox x:Name="namefield" HorizontalAlignment="Left" Height="22" Margin="187,15,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="172" Background="White" IsReadOnly="True" BorderBrush="#FF777777" Opacity="0.75" CaretBrush="#FF007ACD" Focusable="False" Grid.ColumnSpan="2"/>
                    <TextBox x:Name="emailfield" HorizontalAlignment="Left" Height="22" Margin="187,44,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="172" IsReadOnly="True" Background="White" BorderBrush="#FF777777" Opacity="0.75" CaretBrush="#FF007ACD" Focusable="False" Grid.ColumnSpan="2"/>
                    <TextBox x:Name="titlefield" HorizontalAlignment="Left" Height="22" Margin="187,74,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="172" IsReadOnly="True" Background="White" BorderBrush="#FF777777" Opacity="0.75" CaretBrush="#FF007ACD" Focusable="False" Grid.ColumnSpan="2"/>
                    <TextBox x:Name="phonefield" HorizontalAlignment="Left" Height="22" Margin="187,105,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="172" IsReadOnly="True" Background="White" BorderBrush="#FF777777" Opacity="0.75" CaretBrush="#FF007ACD" Focusable="False" Grid.ColumnSpan="2"/>
                    <TextBox x:Name="infofield" HorizontalAlignment="Right" Height="94" Margin="0,33,14,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="266" IsReadOnly="True" VerticalScrollBarVisibility="Visible" Foreground="#FF7F3D3D" Background="White" BorderBrush="#FF777777" Opacity="0.75" Grid.Column="2"/>
                    <Label x:Name="infolable" Content="Account Notes -----"  HorizontalAlignment="Right" Height="23" Margin="0,10,141,0" VerticalAlignment="Top" Width="139" Foreground="Black" FontFamily="Khmer UI" Grid.Column="2"/>
                    <Button x:Name="bUnlock" Content="Unlock" HorizontalAlignment="Left" Height="22" Margin="10,144,0,0" VerticalAlignment="Top" Width="70" Background="White" OpacityMask="Black" Foreground="Black" Focusable="False" FontFamily="Khmer UI"/>

                    <Button x:Name="bEnable" Content="Enable" HorizontalAlignment="Left" Height="22" Margin="85,144,0,0" VerticalAlignment="Top" Width="70" Background="White" Foreground="Black" Focusable="False" FontFamily="Khmer UI"/>
                    <Button x:Name="bListusergroups" Content="List AD group memberships" Height="22" Margin="114,144,0,0" VerticalAlignment="Top" Background="White" Foreground="Black" HorizontalAlignment="Left" Width="157" MaxWidth="156.402" Focusable="False" FontFamily="Khmer UI" Grid.Column="2"/>
                    <Button x:Name="bPasswordinfo" Content="See password information" HorizontalAlignment="Left" Height="22" Margin="81,144,0,0" VerticalAlignment="Top" Width="170" Background="White" Foreground="Black" Focusable="False" FontFamily="Khmer UI" Grid.ColumnSpan="2" Grid.Column="1"/>
                </Grid>
            </TabItem>
            <TabItem Header="Computer Management" Margin="31,0,-55,0" FontSize="9">


                <Grid Background="#FFE5E5E5" Margin="0,0,0,-3">
                    <Grid.ColumnDefinitions>
                        <ColumnDefinition Width="31*"/>
                        <ColumnDefinition Width="231*"/>
                    </Grid.ColumnDefinitions>

                    <Image x:Name="iPC" HorizontalAlignment="Left" Height="117" Margin="10,25,0,0" VerticalAlignment="Top" Width="116" Source="pc.jpg" Grid.ColumnSpan="2">
                        <Image.Effect>
                            <DropShadowEffect Opacity="0.5"/>
                        </Image.Effect>
                    </Image>

                    <Label Content="IP address:"  HorizontalAlignment="Left" Margin="71,25,0,0" VerticalAlignment="Top" Grid.Column="1"/>
                    <Label Content="Current user:"  HorizontalAlignment="Left" Margin="63,59,0,0" VerticalAlignment="Top" Grid.Column="1"/>
                    <Label Content="Uptime report:"  HorizontalAlignment="Left" Margin="56,91,0,0" VerticalAlignment="Top" Grid.Column="1"/>
                    <Label Content="Remote Options:"  HorizontalAlignment="Left" Margin="47,125,0,0" VerticalAlignment="Top" Grid.Column="1"/>
                    <TextBox Background="White" IsReadOnly="True" BorderBrush="#FF777777" Opacity="0.75" CaretBrush="#FF007ACD" HorizontalAlignment="Left" Height="23" Margin="131,21,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Focusable="False" Width="120" Grid.Column="1" FontSize="10"/>
                    <TextBox Background="White" IsReadOnly="True" BorderBrush="#FF777777" Opacity="0.75" CaretBrush="#FF007ACD" HorizontalAlignment="Left" Height="23" Margin="131,55,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Focusable="False" Width="120" Grid.Column="1" FontSize="10"/>
                    <TextBox Background="White" IsReadOnly="True" BorderBrush="#FF777777" Opacity="0.75" CaretBrush="#FF007ACD" HorizontalAlignment="Left" Height="23" Margin="131,87,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Focusable="False" Width="120" Grid.Column="1" FontSize="10"/>
                    <Button x:Name="bSCCM" Content="SCCM" Background="White"  Foreground="Black" Focusable="False" FontFamily="Khmer UI" HorizontalAlignment="Left" Margin="131,122,0,0" VerticalAlignment="Top" Width="37" Height="22" FontSize="11" Grid.Column="1" />
                    <Button x:Name="bVNC" Content="VNC" Background="White" Foreground="Black" Focusable="False" FontFamily="Khmer UI" HorizontalAlignment="Left" Margin="173,122,0,0" VerticalAlignment="Top" Width="37" Height="22" FontSize="11" Grid.Column="1"/>
                    <Button x:Name="bRDP" Content="RDP" Background="White" Foreground="Black" Focusable="False" FontFamily="Khmer UI" HorizontalAlignment="Left" Margin="214,122,0,0" VerticalAlignment="Top" Width="37" Height="22" FontSize="11" Grid.Column="1"/>
                    <Button x:Name="bPing" Content="Ping" Background="White" Foreground="Black" Focusable="False" FontFamily="Khmer UI" HorizontalAlignment="Left" Margin="10,156,0,0" VerticalAlignment="Top" Width="32" Height="20" FontSize="11"/>
                    <Button x:Name="bBrowse" Content="Browse C:\" HorizontalAlignment="Left" Margin="47,156,0,0" VerticalAlignment="Top" Width="57" Height="20" FontSize="11" Grid.ColumnSpan="2" Background="White"/>
                    <Button x:Name="bUpdatePolicy" Content="Update policy" Background="White" Foreground="Black" Focusable="False" FontFamily="Khmer UI" HorizontalAlignment="Left" Margin="205,156,0,0" VerticalAlignment="Top" Width="154" Height="20" FontSize="11" Grid.Column="1"/>
                    <Button x:Name="bActiveDirectory" Content="List Active Directory groups" Background="White" Foreground="Black" Focusable="False" FontFamily="Khmer UI" HorizontalAlignment="Left" Margin="364,156,0,0" VerticalAlignment="Top" Width="154" Height="20" FontSize="11" Grid.Column="1"/>
                    <Button x:Name="bListApplications" Content="List installed applications" Background="White" Foreground="Black" Focusable="False" FontFamily="Khmer UI" HorizontalAlignment="Left" Margin="523,156,0,0" VerticalAlignment="Top" Width="154" Height="20" FontSize="11" Grid.Column="1"/>
                    <TextBox  Background="White" BorderBrush="#FF688CAF" Foreground="Black" TextDecorations="{x:Null}" FontFamily="Microsoft Tai Le" IsReadOnly="True" IsUndoEnabled="False" HorizontalAlignment="Left" Height="91" Margin="10,181,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="766" Grid.ColumnSpan="2"/>
                    <TextBox Background="White" IsReadOnly="True" BorderBrush="#FF777777" Opacity="0.75" CaretBrush="#FF007ACD" Focusable="False" HorizontalAlignment="Left" Height="125" Margin="266,17,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="313" Grid.Column="1"/>
                    <Button x:Name="bManageComputer" Content="Manage computer" Background="White" Foreground="Black" Focusable="False" FontFamily="Khmer UI" HorizontalAlignment="Left" Margin="584,35,0,0" VerticalAlignment="Top" Width="99" Height="20" FontSize="11" Grid.Column="1"/>
                    <Button x:Name="bRestartService" Content="Restart a Service" Background="White" Foreground="Black" Focusable="False" FontFamily="Khmer UI" HorizontalAlignment="Left" Margin="584,68,0,0" VerticalAlignment="Top" Width="99" Height="20" FontSize="11" Grid.Column="1"/>
                    <Button x:Name="bViewKillProcess" Content="View/Kill process" Background="White" Foreground="Black" Focusable="False" FontFamily="Khmer UI" HorizontalAlignment="Left" Margin="584,99,0,0" VerticalAlignment="Top" Width="99" Height="20" FontSize="11" Grid.Column="1"/>
                </Grid>
            </TabItem>
        </TabControl>
        <Label Content="Training" HorizontalAlignment="Left" Margin="589,50,0,0" VerticalAlignment="Top" FontSize="24" FontFamily="Vladimir Script"/>
        <DockPanel HorizontalAlignment="Left" Height="36" LastChildFill="False" VerticalAlignment="Top" Width="792">
            <Menu Height="26" VerticalAlignment="Top" Width="791">
                <MenuItem Header="External Tools" Width="99">
                    <MenuItem x:Name="adexternal" Header="Active Directory Search User"/>
                    <Separator/>
                    <MenuItem x:Name="mCommandPrompt" Header="Command Prompt"/>
                    <MenuItem x:Name="mPowerShell" Header="PowerShell"/>
                    <MenuItem x:Name="mSnippingTool" Header="Snipping Tool (Screenshot)"/>
                </MenuItem>
                <MenuItem Header="Scripts"/>
            </Menu>
        </DockPanel>

    </Grid>
</Window>


"@

$reader = (New-Object System.Xml.XmlNodeReader $xaml)
$window = [Windows.Markup.XamlReader]::Load($reader)



$xaml.SelectNodes("//*[@*[contains(translate(name(.),'n', 'N'), 'Name')]]") | ForEach {
    New-Variable -Name $_.Name -Value $window.FindName($_.Name) -Force

}



Function OpenADUC { dsa.msc }
Function OpenCMD { Start-Process cmd.exe }
Function OpenPowerShell { Start-Process powershell.exe }
Function OpenSnippingTool { Start-Process -FilePath C:\Windows\system32\SnippingTool.exe }



# User Main Function ------ 
function Get-userandsetdatafields { 
	$rawinfo = Get-ADUser -identity $username.Text -properties Description, Enabled, CN, DisplayName, 
	EmailAddress, EmployeeNumber, EmployeeType, HomeDirectory, HomeDrive, Manager, Title, 
	LastBadPasswordAttempt, LastLogonDate, LockedOut | fl | out-string 
	$firstname = get-aduser $username.Text -properties * | select -expandproperty givenname 
	$lastname = get-aduser $username.Text -properties * | select -expandproperty surname 
	$email = get-aduser $username.Text -properties * | select -expandproperty emailaddress 
	$Title = get-aduser $username.Text -properties * | select -expandproperty title 
	$phone = get-aduser $username.Text -properties * | select -expandproperty telephonenumber 
	 
	$lockstatus = get-aduser $username.Text -properties * | select -expandproperty lockedout 
	$accountstatus = get-aduser $username.Text -properties * | select -expandproperty Enabled 
	$infocontent = get-aduser $username.Text -properties * | select -expandproperty info 
	 
	$namefield.Text = "$firstname $lastname" 
	$emailfield.Text = "$email" 
	$titlefield.Text = "$title" 
	$phonefield.Text = "$phone" 
	$rawoutput.Foreground = 'green' 
	$lockoutfield.text = "Locked Out: $lockstatus" 
	$enabledfield.Text = "Enabled: $accountstatus" 
	$infofield.Text = "$infocontent" 
	$rawoutput.text = "$($rawinfo.TrimStart())" 
	 
	 
	if((Get-Aduser $username.Text -Properties LockedOut).LockedOut -eq $true) { 
		$lockoutfield.Foreground = "Red" 
	}ELSE{ 
		$lockoutfield.Foreground = "Green" 
	} 
	 
	if((Get-Aduser $username.Text -Properties Enabled).Enabled -eq $False) { 
		$enabledfield.foreground = "Red" 
	}ELSE{ 
		$enabledfield.foreground = "Green" 
	} 
}  
#--------------------------------- 
#get password stuff 
function get-passwordinfo { 
	$expiredate = Get-ADUser -identity $username.Text -Properties msDS-UserPasswordExpiryTimeComputed | 
	select samaccountname,@{ Name = "Expiration Date"; Expression={[datetime]::FromFileTime($_."msDS-
	UserPasswordExpiryTimeComputed")}} | Format-Table -AutoSize | Out-string 
	$setdate = Get-ADUser -Identity $username.Text -Properties PasswordLastSet | Select-Object PasswordLastSet | 
	ft | out-string 
	$rawoutput.text = "$setdate $expiredate" 
} 
#unlock 
Function unlockuser { 
	if((Get-Aduser $username.Text -Properties LockedOut).LockedOut -eq $true) 
	{ 
		Unlock-ADAccount -Identity $username.Text 
		[System.Windows.MessageBox]::Show('User account has been unlocked','Unlock User','OK','Exclamation') 
		Get-userandsetdatafields 
	}else{ 
		[System.Windows.MessageBox]::Show('User account is not locked','Dude...','OK','Exclamation') 
		Get-userandsetdatafields            
	} 
} 
#Enable 
Function enableuser { 
	if((Get-Aduser $username.Text -Properties Enabled).Enabled -eq $true) { 
	[System.Windows.MessageBox]::Show('User account is already enabled','Dude...','OK','Exclamation') 
	Get-userandsetdatafields  
	} ELSE { 
		Enable-AdAccount $username.Text 
		[System.Windows.MessageBox]::Show('User account is enabled','System Msg','OK','Exclamation') 
	} 
} 
 
 
function ADGroupsOfUser { 
    $usertoken = $username.Text 
    Get-ADPrincipalGroupMembership $usertoken | select name | Sort-object -property name | out-gridview 
} 
 
 
 
 
# End of User function 
 
 
 
# -------------------------------------------------------------- 
 
# Menu Triggers--------------------------------------------------- 
$adexternal.add_Click({OpenADUC}) 
$mCommandPrompt.add_click({OpenCMD}) 
$mPowerShell.add_click({OpenPowerShell}) 
$mSnippingTool.add_Click({OpenSnippingTool}) 
#------------------------------------- 
 
# User Triggers --------------------------------------------------------------------------- 
$bSearchUsername.add_Click({ 
 if (dsquery user -samid $username.Text)  
 { Get-userandsetdatafields} 
 else  
	{[System.Windows.MessageBox]::Show('User account not found','No info','OK','Exclamation')} 
}) 
 
$bPasswordinfo.add_click({get-passwordinfo}) 
$bUnlock.add_click({unlockuser}) 
$bEnable.add_click({enableuser}) 
 
$bListusergroups.add_click({ 
	if (dsquery user -samid $username.Text) {ADGroupsOfUser} 
	ELSE 
	{[System.Windows.MessageBox]::Show('User account not found','No info','OK','Exclamation')} 
}) 
 
# ---------------------------------------------------------------------------------------------------------------------------------------------------- 
 
 
$Window.ShowDialog()