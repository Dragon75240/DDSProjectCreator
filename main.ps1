Invoke-WebRequest -Uri "https://github.com/4sval/FModel/releases/download/4.4.3.4/FModel.zip" -OutFile "$env:TEMP\FModel.zip"
$FmodelDir = mkdir '%appdata%\Fmodel'
Expand-Archive