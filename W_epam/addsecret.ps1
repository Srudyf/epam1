$path = "D:\12.txt"
$pass = "D:\pass.txt"
$global:Secrets = @()

function global:CreateSecret([string]$name, [string]$password,[string]$url,[string[]]$tags,[DateTime]$experiesTime){
    $global:Secrets = New-Object PsObject -Property @{ name = $name; password = $password; url =$url; tags  = $tags; experiesTime = $experiesTime}
    $global:Secrets  | ConvertTo-Json | Add-Content  -Path  $path  -Encoding utf8
   
}
