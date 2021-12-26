########################## Define your values here ###########################

$pathToJson = 'C:\temp\json-2' <# Enter path to existing JSON files to update/modify #>
$pathToList = 'C:\temp\names.txt' <# Enter path to text file that contains list of values listed on individual lines #>
$outputPath = 'c:\temp\new-JSON' <# Enter desired output path - NO TRAILING \ at the end #>
$traitType = 'Name' <# Enter trait type name here #>

if (!(Test-Path -Path $outputPath)) {

New-Item -Path $outputPath -ItemType Directory

}

##############################################################################

###################### Get Item list and JSON Files ##########################

$values = Get-Content $pathToList
$files = Get-ChildItem -Path $pathToJson

##############################################################################

## Loop through each file and dynamically add new value at random from list ##

foreach ($file in $files){

$data = $file.FullName
$fileNm = $file.Name
$assigned = Get-Random -InputObject $values

$content = get-content $data

$json = $content | ConvertFrom-Json

$json.attributes += New-Object -TypeName psobject -Property @{value="$assigned"; trait_type="$traitType"}

$json | ConvertTo-Json | out-file $outputPath\$fileNm

}

ii $outputPath # Open output Folder