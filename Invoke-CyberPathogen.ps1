﻿function Invoke-RickRoll {
<#
.SYNOPSIS
 
    Invoke-RickRoll
 
    A RickRoll PowerShell Script :)
 
    Authors: Chris Campbell (@obscuresec)
    License: BSD 3-Clause
 
.DESCRIPTION
 
    A script to call IE and send it to a URL.
 
.PARAMETER VideoURL
 
    Specifies a URL to send IE to.
 
.EXAMPLE
 
    PS C:\>Invoke-RickRoll -VideoURL http://www.obscuresec.com
#>
 
    [CmdletBinding()] Param(
    [string] $VideoURL = 'http://www.youtube.com/watch?v=dQw4w9WgXcQ'
    )
   
    [string] $CmdString = "$env:SystemDrive\PROGRA~1\INTERN~1\iexplore.exe $VideoURL"
    Write-Verbose "I am now opening IE to $VideoUrl"
    Invoke-Expression $CmdString
}

Invoke-RickRoll