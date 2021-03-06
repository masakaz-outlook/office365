#####################################################################################################
#　　　Scripts概要
#
#　＞テンプレートファイルをインポートして、DynamicDistributionGroupの登録を行う
#
#　＞設定するパラメーターは、メンバーの種類・表示名・Alias・メールアドレスの４つ
#
#
#####################################################################################################

Param(
[string]$Inputfile
)


	Import-Csv $Inputfile | foreach { 


 			if ( $_.メンバーの種類 -eq "すべての受信者の種類" ){ 
				Write-Host $_.表示名 
				New-DynamicDistributionGroup -Name $_.表示名 `
				-Alias $_.Alias `
				-PrimarySmtpAddress $_.メールアドレス `
				-IncludedRecipients AllRecipients `

			}elseif ( $_.メンバーの種類 -eq "ExchangeMailboxを持つユーザー" ){ `

				Write-Host $_.Alias -foregroundColor Blue `

				New-DynamicDistributionGroup -Name $_.表示名 `
			
				-Identity $_.Alias `

				-PrimarySmtpAddress $_.メールアドレス `

				-IncludedRecipients MailboxUsers `

		<#IF文で、"メンバーの種類"の設定が"外部のメールアドレスを持つメール連絡先"で条件分岐#>	

			}elseif ( $_.メンバーの種類 -eq "外部のメールアドレスを持つメール連絡先" ){ `

				Write-Host $_.Alias -foregroundColor Blue `

				New-DynamicDistributionGroup -Name $_.表示名 `
			
				-Identity $_.Alias `

				-PrimarySmtpAddress $_.メールアドレス `

				-IncludedRecipients MailContacts `

		<#IF文で、"メンバーの種類"の設定が"メールが有効なグループ"で条件分岐#>	

			}elseif ( $_.メンバーの種類 -eq "メールが有効なグループ" ){ `

				Write-Host $_.Alias -foregroundColor Blue `

				New-DynamicDistributionGroup -Name $_.表示名 `
			
				-Identity $_.Alias `

				-PrimarySmtpAddress $_.メールアドレス `

				-IncludedRecipients MailGroups `

		<#IF文で、"メンバーの種類"の設定が"リソースメールボックス"で条件分岐#>	

			}elseif ( $_.メンバーの種類 -eq "リソースメールボックス" ){ `

				Write-Host $_.Alias -foregroundColor Blue `

				New-DynamicDistributionGroup -Name $_.表示名 `
			
				-Identity $_.Alias `

				-PrimarySmtpAddress $_.メールアドレス `

				-IncludedRecipients Resources `

		<#IF文で、"メンバーの種類"の設定が"外部のMailboxを持つメールユーザー"で条件分岐#>	

			}elseif ( $_.メンバーの種類 -eq "外部のMailboxを持つメールユーザー" ){ `

				Write-Host $_.Alias -foregroundColor Blue `

				New-DynamicDistributionGroup -Name $_.表示名 `
			
				-Identity $_.Alias `

				-PrimarySmtpAddress $_.メールアドレス `

				-IncludedRecipients MailUsers `

			}
			
			}