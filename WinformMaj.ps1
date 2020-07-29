#Generated Form Function
function GenerateForm {

#region Import the Assemblies
[reflection.assembly]::loadwithpartialname("System.Windows.Forms") | Out-Null
[reflection.assembly]::loadwithpartialname("System.Drawing") | Out-Null
#endregion

#region Generated Form Objects
$form1 = New-Object System.Windows.Forms.Form
$button1 = New-Object System.Windows.Forms.Button
$InitialFormWindowState = New-Object System.Windows.Forms.FormWindowState
#endregion Generated Form Objects

#----------------------------------------------
#Generated Event Script Blocks
#----------------------------------------------
#Provide Custom Code for events specified in PrimalForms.
$handler_form1_Load= 
{
#TODO: Place custom script here

}
$handler_button1_Click= 
{
#TODO: Place custom script here
usoclient startscan
usoclient startdownload
usoclient startinstall
}


$OnLoadForm_StateCorrection=
{#Correct the initial state of the form to prevent the .Net maximized form issue
	$form1.WindowState = $InitialFormWindowState
}

#----------------------------------------------
#region Generated Form Code
$form1.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 59
$System_Drawing_Size.Width = 243
$form1.ClientSize = $System_Drawing_Size
$form1.DataBindings.DefaultDataSourceUpdateMode = 0
$form1.Icon = [System.Drawing.Icon]::ExtractAssociatedIcon('W:\Pole_STS\unite_SPT\Apprenti\joseph\Scripts & Developpement\MAJ windows\logo.ico')
$form1.MaximizeBox = $False
$form1.MinimizeBox = $False
$form1.Name = "form1"
$form1.Text = "Mise a jour Windows 10"
$form1.add_Load($handler_form1_Load)

$button1.BackColor = [System.Drawing.Color]::FromArgb(255,240,240,240)

$button1.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 72
$System_Drawing_Point.Y = 18
$button1.Location = $System_Drawing_Point
$button1.Name = "button1"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 100
$button1.Size = $System_Drawing_Size
$button1.TabIndex = 0
$button1.Text = "Mise a jour "
$button1.UseVisualStyleBackColor = $False
$button1.add_Click($handler_button1_Click)

$form1.Controls.Add($button1)

#endregion Generated Form Code

#Save the initial state of the form
$InitialFormWindowState = $form1.WindowState
#Init the OnLoad event to correct the initial state of the form
$form1.add_Load($OnLoadForm_StateCorrection)
#Show the Form
$form1.ShowDialog()| Out-Null

} #End Function

#Call the Function
GenerateForm


