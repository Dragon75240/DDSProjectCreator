$appdata = $env:APPDATA
$temp = $env:TEMP
$desktop = [Environment]::GetFolderPath("Desktop")

Invoke-WebRequest -Uri "https://github.com/4sval/FModel/releases/download/4.4.3.4/FModel.zip" -OutFile "$temp\FModel.zip"
Invoke-WebRequest -Uri "https://github.com/atenfyr/UAssetGUI/releases/download/v1.0.0.0-alpha.8/v1.0.0.0-alpha.8.zip" -OutFile "$temp\UAssetGui.zip"
mkdir '$appdata\FModel'
mkdir '$appdata\UAssetGui'
Expand-Archive -LiteralPath "$temp\FModel.zip" -DestinationPath "$appdata/FModel"
Expand-Archive -LiteralPath "$temp\UAssetGui.zip" -DestinationPath "$appdata/UAssetGui"

.\Set-Shortcut.ps1 -SourceExe $appdata\FModel\FModel.exe -DestinationPath $desktop\FModel.lnk
.\Set-Shortcut.ps1 -SourceExe $appdata\UAssetGUI\net472\UAssetGUI.exe -DestinationPath $desktop\UAssetGui.lnk