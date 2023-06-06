# Prompt
# oh-my-posh init pwsh | Invoke-Expression
# command from: https://ohmyposh.dev/docs/installation/customize
oh-my-posh init pwsh --config C:\Users\ARIVAPPA\scoop\apps\oh-my-posh\7.81.4\themes\robbyrussel.omp.json | Invoke-Expression

# Terminal-Icons
Import-Module Terminal-Icons

# PSReadLine Option
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -BellStyle None
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar

# Fzf
######-------
# Import-Module PSFzf
# Set-PSFzfOption -PSReadLineChordProvider 'Ctrl+f' -PSReadChorReverseHistory 'Ctrl+r'
######-------
# Import-Module posh-git
# Import-Module oh-my-posh
# Set-PoshPrompt -Theme robbyrussel

# Alias
function openTyperacer { start brave typeracer.com }
function openMonkeytype { start brave monkeytype.com }
function openYoutube { start brave youtube.com }
# function searchYoutube { start brave youtube.com/results?search_query= }

Set-Alias ll ls
Set-Alias cl cls
Set-Alias -name typeracer -value openTyperacer 
Set-Alias -name monkeytype -value openMonkeytype
Set-Alias -name youtube -value openYoutube
#Set-Alias -name typeracer -value "start brave typeracer.com"
#alias typeracer start brave typeracer.com
#Set-Alias -name monkeytype -value "start brave monkeytype.com"




######################################### construction work going on #########################################
#function searchYoutube {
    #[CmdletBinding()]
    #Param(
        ##[Parameter(
            ##Mandatory=$true,
            ##Position=1,
            ##HelpMessage="How many cups would you like to purchase?"
        ##)]
        ##[int]$cups,
        
        ##[Parameter(
            ##Mandatory=$false,
            ##Position=2,
            ##HelpMessage="What would you like to purchase?"
        ##)]
        ##[ValidateSet("Lemonade","Water","Tea","Coffee","Hard Lemonade")]
        #[string]$search=""
    #)

    #DynamicParam {
         #if ($search -eq "") {
              ##create a new ParameterAttribute Object
              #$searchAttribute = New-Object System.Management.Automation.ParameterAttribute
              ##$searchAttribute.Position = 3
              ##$searchAttribute.Mandatory = $true
              #$searchAttribute.HelpMessage = "This product is only available for customers 21 years of age and older. Please enter your age:"

              ##create an attributecollection object for the attribute we just created.
              #$attributeCollection = new-object System.Collections.ObjectModel.Collection[System.Attribute]

              ##add our custom attribute
              #$attributeCollection.Add($searchAttribute)

              ##add our paramater specifying the attribute collection
              #$searchParam = New-Object System.Management.Automation.RuntimeDefinedParameter('age', [Int16], $attributeCollection)

              ##expose the name of our parameter
              #$paramDictionary = New-Object System.Management.Automation.RuntimeDefinedParameterDictionary
              #$paramDictionary.Add('search', $searchParam)
              #return $paramDictionary
        #}
    #}

    #Process {
        #$order = @()
		#start brave youtube.com/results?search_query=$($search)
        ##for ($cup = 1; $cup -le $cups; $cup++) {
            ##$order += "$($cup): A cup of $($product)"
        ##}
        #$order
    #}
#}

################################## work related to incognito tabs ##################################
#function searchYoutube {
	#[CmdletBinding()]

	#param([string]$incognito = '')
	##Write-Host $incognito

	#process {
		##start brave /incognito youtube.com
		#$search = Read-Host -Prompt 'enter search'
		#$search = $search.replace(' ', '+')
		#if ($search -ne ''){
			##Write-Host $search
			#if ($incognito -eq 'i'){
				##$searchLink = 'start chrome /incognito youtube.com/results?search_query=' + $search
				##Invoke-Expression $searchLink
				#start brave /incognito youtube.com
				##start brave /incognito youtube.com/results?search_query=$($search)
			#}elseif ($incognito -eq ''){
				#start brave youtube.com/results?search_query=$($search)
			#}
		#}
	#}
#}
#################################### work related to incognito tab ############################


function searchGoogle {
	$search = Read-Host -Prompt 'enter search'
	$search = $search.replace(' ', '+')
	if ($search -ne ''){
		start brave google.com/search?q=$($search)
	}
}
function searchYoutube {
	$search = Read-Host -Prompt 'enter search'
	$search = $search.replace(' ', '+')
	if ($search -ne ''){
		start brave youtube.com/results?search_query=$($search)
	}
}
function searchIncognito {
	start chrome /incognito
}

Set-Alias -name ytsearch -value searchYoutube 
Set-Alias -name gsearch -value searchGoogle
Set-Alias -name incog -value searchIncognito
######################################### construction work going on #########################################


#########################################################
# command line tools:
    # rg
	# fzf
#########################################################



winfetch

#echo "Hello World, I am a programmer..!"
##echo "[char]0x1B[1;34m  Hello World, I am a creative programmer...!"
#$pattern = @(
	#"$([char]0x1B)[1;34mHello World, I am a creative programmer...!"
#)
#Write-Output "$pattern"

#printf "[char]0x1B[1;34m  Hello World, I am a creative programmer...!"

# Originally this file is connected to file below
# $PROFILE.CurrentUserCurrentHost
# that is C:\Users\ARIVAPPA\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1

