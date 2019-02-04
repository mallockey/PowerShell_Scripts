<#Just having fun with recursions, be careful running this with large directories#>
function folderDigger{
Param(
$path
)
$startDirectory = Get-ChildItem $path | select -ExpandProperty fullname
    foreach($directory in $startDirectory){
    $testIfFile = test-path -pathType leaf -path $directory
	if($testIfFile -eq $true){
	write-host -ForegroundColor DarkYellow $directory is a file
	}
	else{	
	write-host -foregroundcolor DarkCyan $directory is a folder
	folderDigger $directory
	}	
    }
}
$path = "C:\users\josh\desktop"
folderDigger $path

