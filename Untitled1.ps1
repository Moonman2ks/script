#komentaras
<#

#>
#Get-WmiObject -Class Win32_UserAccount
#$xml = gwmi Win32_LoggedOnUser | Select Antecedent
#Returns a WindowsIdentity object that represents the current Windows user.
$xml =[System.Security.Principal.WindowsIdentity]::GetCurrent().Name
#Trims the output (removes K and / symbols)
$xml = $xml.Trim("K","\")
#Creates an XML-based representation of an object and stores it into a file
$xml | Export-Clixml C:\Users\gytis.ka8869\Desktop\prisijunge.xml
Read-Host -Prompt "Press Enter to exit"
