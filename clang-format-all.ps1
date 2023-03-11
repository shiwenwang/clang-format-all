# format all source and header files under given folder

param($folder)

Get-ChildItem -Path $folder -Recurse | where {$_.Name -like '*.c' -OR $_.Name -like '*.cpp' -OR $_.Name -like '*.h' -OR $_.Name -like '*.hpp'} | % {Write-Output "formatting: $_" && clang-format -i $_}

Write-Output "Done."
