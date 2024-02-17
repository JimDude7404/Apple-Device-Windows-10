Write-Output "Welcome !"
New-Variable source
$source = "AppleDevices"
rm "$source/[Content_Types].xml" -Force 
rm $source/AppxMetadata -Force
rm $source/AppxBlockMap.xml -Force 
rm $source/AppxSignature.p7x -Force 
mv AppxManifest.xml $source/ -Force
Write-Output "Installing Apple Devices..."
if (Add-AppxPackage -Register "$source\AppxManifest.xml"){
    Write-Output "Apple Devices is Installed"
}
else {
    Write-Output "Error, please report it on Github"
}
