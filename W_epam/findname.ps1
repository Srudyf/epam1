function global:GetSecretByName([String] $name)
{
      $global:Secrets = Get-Content -Path $path   -Raw | ConvertFrom-Json
      $global:Secrets | where{$name -eq $_.name}
}





$dat= (Get-Date).AddDays(2) | Get-Date -Format d

$dat1 = $_.experiesTime