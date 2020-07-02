Add-Type -assembly System.Windows.Forms
Add-Type -AssemblyName System.speech

$Narrator = New-Object System.Speech.Synthesis.SpeechSynthesizer
$Narrator.SelectVoice('Microsoft David Desktop')
$Narrator.Rate = 0

$mainForm = New-Object System.Windows.Forms.Form
$mainForm.Text ='Text to Speech'
$mainForm.Width = 500
$mainForm.Height = 500
$mainForm.AutoSize = $true


$InputButton = New-Object System.Windows.Forms.Button
$InputButton.Text = 'Speak'
$InputButton.Location = '200,200'



$InputBox = New-Object System.Windows.Forms.TextBox
$InputBox.Location = New-Object System.Drawing.Size(170,50)
$InputBox.Size = New-Object System.Drawing.Size(150,20)

$mainForm.Controls.Add($InputBox) 
$mainForm.Controls.Add($InputButton)


$InputButton.Add_Click({

$Speech = $InputBox.Text
$Narrator.Speak($Speech)

})

$mainForm.ShowDialog()