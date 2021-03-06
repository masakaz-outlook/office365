########################################################################################
#　　　Scripts概要
#
#　＞テンプレートファイルをインポートして、Licenseの設定を行う
#
#
#　＞Licenseは様々な種類があるので、本Scriptsでは、$LicenseNameの設定を
#　　
# ライセンスは以下のコマンドで取得
# Get-MsolAccountSku
########################################################################################



Param(
  [string]$Inputfile,
  [string]$LicenseName
)
<#テンプレートファイルのインポート#>
	$a = Import-Csv $Inputfile
<#ライセンスの設定、$LicenseNameを個別に設定する必要がある#>
	Foreach ( $user in $a ) { `
		Set-msolUserLicense -UserPrincipalName $user.ユーザー名 `
					-AddLicenses $LicenseName 
				}