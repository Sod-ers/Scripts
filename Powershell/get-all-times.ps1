Import-Module PSGraphQL

$authCode = 'xxx' #go get your own code
$bbURI = 'https://bbservers.dev/v2/query'
$headerList = @{apiKey = "$authCode"}

$mapQuery = 'query mapList{
    surfmap{
        id,name,rankExcludedUntil,seasonExcludedUntil,lastPlayedAt,lastPlayedOn
    }
}'

$mapList = (Invoke-GraphQLQuery -Query $mapQuery -Uri $bbURI -Headers $headerList).data.surfmap

foreach($map in $mapList){
    $seasonalQuery = "query seasonalCheck{
        timetrial(record_type:ALLTIME,map_id:$($map.id)){
            playerID,record
        }
    }
    "
    $timesResp = (Invoke-GraphQLQuery -Query $seasonalQuery -Uri $bbURI -Headers $headerList).data.timetrial
    if($timesResp.Count -ge 1){
        #$map | Export-Csv -Path 'C:\Users\Soders\Downloads\file.csv' -Append -NoTypeInformation Only uncomment to build initial list of maps being played
        $timesResp | Export-Csv -Path (Join-Path -Path 'C:\Users\Soders\Downloads' -ChildPath "$($map.id).csv") -NoTypeInformation
    }
    Write-Host "Finished export for map $($map.id)"
}
