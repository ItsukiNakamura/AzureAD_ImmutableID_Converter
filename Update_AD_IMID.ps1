Param($upn,$AD_name)

function displayhelp  {
    write-host "引数が不足しています"
    write-host "記載例:"
    write-host "Update_AD_IMID.ps1 <AzureAD UPN> <On premises AD Account>"
    write-host "<On premises AD Account>には\以降のアカウントIDのみ入力してください"
    write-host "例[AAA\ABCDEFG]のときは[ABCDEFG]と入力"
    }

if ($upn -eq $NULL) {
    DisplayHelp
    return
}
if ($AD_name -eq $NULL) {
    DisplayHelp
    return
}

Connect-MsolService
$guid = [GUID][system.convert]::frombase64string((Get-MsolUser -UserPrincipalName "$upn").ImmutableID)
set-aduser -Identity '$AD_name' -replace @{'mS-DS-ConsistencyGuid' = $guid}