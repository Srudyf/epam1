


$ch = Read-Host 'Make your choice : 1 : Add user; 2 : generate new password; 3 find a secret by name'
 
 switch ( $ch )
    {
        ({$PSItem -eq 1})
        {New-RandomPassword
  $Result=New-RandomPassword
            $name = Read-Host 'What is your username?'
            $url = Read-Host 'What is your url?'
            $tags = Read-Host 'What is your tag?'
            $day = Read-Host 'number of working days for an account'
            $Date = Get-Date 
            [string]$days = $Date.AddDays($day)

            CreateSecret -name $name -password $Result -url $url -tags $tags -experiesTime $days 
        }
        ({$PSItem -eq 2})
        {
            New-RandomPassword
        }

         ({$PSItem -eq 3})
        {
            $fname = Read-Host 'enter the required name'
            GetSecretByName -name $fname 
        }


    }



