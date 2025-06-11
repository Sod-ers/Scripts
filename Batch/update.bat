winget upgrade --all --include-unknown
winget export -o E:\Documents\Winget\packages.txt

:: Invoke-WebRequest -UseBasicParsing "https://raw.githubusercontent.com/spicetify/spicetify-marketplace/main/resources/install.ps1" | Invoke-Expression
spicetify backup apply
spicetify restore backup apply
