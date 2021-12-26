$pathToJSON = 'C:\Temp\json-2' <# Enter path to existing JSON files #>
$outputPath = 'C:\temp\new-JSON-IP' <# Enter path to Output Folder #>
$ipfs = 'QmTXY0000000000000000000000000000000000000000Z' <# Enter CID Path #>

$files = Get-ChildItem -Path $pathToJSON 

if (!(Test-Path -Path $outputPath)){

New-Item -ItemType Directory -Path $outputPath

}

foreach ($file in $files){

$path = $file.FullName
$fileNm = $file.Name

$content = get-content $path

$json = $content | ConvertFrom-Json
$name = $json.image.Split('/')[3]
$json.image = "ipfs://$ipfs/$name"

$json | ConvertTo-Json | out-file $outputPath\$fileNm

}

ii $outputPath