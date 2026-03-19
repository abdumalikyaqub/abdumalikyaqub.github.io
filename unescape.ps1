$path = "$PSScriptRoot\index.html"
$content = [System.IO.File]::ReadAllText($path, [System.Text.Encoding]::UTF8)
$content = [System.Text.RegularExpressions.Regex]::Unescape($content)
[System.IO.File]::WriteAllText($path, $content, [System.Text.Encoding]::UTF8)
Write-Host "Done"
