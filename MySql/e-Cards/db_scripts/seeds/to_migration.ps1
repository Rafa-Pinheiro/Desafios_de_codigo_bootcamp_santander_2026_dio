#Pegar o diretório atual do script
$scriptDirectory = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent

 #Arquivo de saída com todos os seeds concatenados
 $outputFile = Join-Path -Path $scriptDirectory -ChildPath "all_seeds.sql"

 #Verificar se o arquivo de saída já existe e removê-lo
 if (Test-Path -Path $outputFile) {
     Remove-Item -Path $outputFile
 }

 #Obter todos os arquivos .sql no diretório atual, ordenados por nome
 $sqlFiles = Get-ChildItem -Path $scriptDirectory -Filter "*.sql" -File | Sort-Object Name

 #concatenar o conteúdo de cada arquivo no arquivo de saída
 foreach ($file in $sqlFiles) {
     Get-Content -Path $file.FullName | Add-Content -Path $outputFile
 }

    Write-Host "Todos os arquivos SQL foram concatenados em $outputFile"