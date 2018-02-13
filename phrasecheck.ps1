Param
(
    [string] $fileName,
    [string] $phrase,
    [int] $threshold=1
)

$allText = Get-Content -Path $fileName
$matches=  Select-String -InputObject $allText -Pattern $phrase -AllMatches
$matchCount = $matches.Matches.Count

Write-Output $matches.Matches.Count


if ($matchCount -gt $threshold)
{
    $message = "$filename includes $matchCount occurances of $phrase. Threshold i s $threshold. "
    Write-Output $message
    throw $message
}
else
{
    Write-Output "$filename includes no more than $threshold occurances of $phrase. OK!"
}