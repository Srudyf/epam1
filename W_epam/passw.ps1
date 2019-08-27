Function global:New-RandomPassword{
Param([int] $Length1 = 4 ,[int] $Length2 = 3,[int] $Length3 = 4 , $Length5 = 9 )       
        $AsciiCharsList = @()   
        foreach ($a in (65..90)){
        $AsciiCharsList += , [char][byte]$a 
        }
        $Password = ""
        $loops = 1..$Length1
        Foreach ($loop in $loops) {
            $Password += $AsciiCharsList | Get-Random
        }
    # $Password    
         $AsciiCharsList2 = @()   
    foreach ($a2 in (48..57))
        {
        $AsciiCharsList2 += , [char][byte]$a2 
        }
        $Password2 = ""
        $loops2 = 1..$Length2
        Foreach ($loop2 in $loops2)
        {
        $Password2 += $AsciiCharsList2 | Get-Random
        }
   #  $Password2 
        $AsciiCharsList3 = @()   
    foreach ($a3 in (97..122))
        {
        $AsciiCharsList3 += , [char][byte]$a3 
        }
        $Password3 = ""
        $loops3 = 1..$Length3
        Foreach ($loop3 in $loops3)
        {
        $Password3 += $AsciiCharsList3 | Get-Random
        }
    # $Password3 
          $AsciiCharsList5 = @()   
          $AsciiCharsList6 = @() 
          $AsciiCharsList7 = @() 
          $AsciiCharsList8 = @()   
     foreach ($a in (97..122))
         {
        $AsciiCharsList7 += , [char][byte]$a     
         }
    foreach ($a in (65..90))
        { 
        $AsciiCharsList8 += , [char][byte]$a      
        }
     foreach ($a in (48..57)){
        $AsciiCharsList6 += , [char][byte]$a 
        }
        $AsciiCharsList5 =  $AsciiCharsList7 +  $AsciiCharsList8 +$AsciiCharsList6
        $Password5 = ""
        $loops = 1..$Length5
        Foreach ($loop in $loops)
         {
            $Password5 += $AsciiCharsList5 | Get-Random
         } 
   #  $Password5  
         $sovm = ""
         $sovm += "$Password$Password2$Password3$Password5"
         $sovm  | ConvertTo-Json | Add-Content -Path  $pass 
         return $sovm

        }