param (
    [Parameter(Mandatory)]
    [string]$StorageName,

    [string]$StorageSKU = "Standard_LRS"
)

$templateFile = "../azuredeploy.json"
$deploymentName = "arm-storage-" + (Get-Date -Format "yyyyMMdd")

New-AzResourceGroupDeployment `
  -Name $deploymentName `
  -TemplateFile $templateFile `
  -storageName $StorageName `
  -storageSKU $StorageSKU
