$Depth = 1
$Path = 'C:\Users'

$Levels = '/*' * $Depth
$xml = Get-ChildItem -Directory $Path/$Levels
$xml | Export-Clixml C:\Users\gytis.ka8869\Desktop\prisijungevisi.xml
Read-Host -Prompt "Press Enter to exit"