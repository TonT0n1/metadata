# metadata
JSON Metadata manipulation scripts for NFTs
A lot of people right now are creating NFT collections which all have accompanying JSON Files per image.
Platforms like OpenSea use these JSON metadata files to display attributes and properties associated with an NFT.

This script simply updates the IPFS data in each JSON file once you have uploaded your images to the IPFS network.

i. Open the script in Powershell ISE or Visual Studio Code and modify the following variables

$pathToJSON <# Enter path to existing JSON files #>
$outputPath <# Enter path to Output Folder #>
$ipfs <# Enter CID Path #>

ii. Run the script. It will loop through each file and update the IPFS data with the new link provided.

