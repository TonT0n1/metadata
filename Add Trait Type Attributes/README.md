# metadata
JSON Metadata manipulation scripts for NFTs
A lot of people right now are creating NFT collections which all have accompanying JSON Files per image.
Platforms like OpenSea use these JSON metadata files to display attributes and properties associated with an NFT.

There are so many amazing generators out there to use which automatically create the required JSON files.
Sometimes you want to add your own new values after the files have been generated.

A commonly used metadata attribute item used in NFTs are Trait Types. These are usually added by the generators.

This script allows you to add values, randomly selected from a text list to each JSON file.

For example, say you had a list of 100 names you wanted to randomly assign to your NFT collection items.

i. In a .txt file add the names you want on individual lines.

ii. Then open the script in either Powershell ISE or VS Studio Code.

iii. Update the following variables as required

$pathToJson <# Enter path to existing JSON files to update/modify #>
$pathToList <# Enter path to text file that contains list of values listed on individual lines #>
$outputPath <# Enter desired output path - NO TRAILING \ at the end #>
$traitType  <# Enter trait type name here, i.e. Name #>

iv. Run the script. It will loop through each JSON file and add a randomly selected name from the list 
as a new trait type.

V. Browse to your output folder to view your new JSON files.