###################################################################################################
#　　　Scripts概要
#
#　＞テンプレートファイルをインポートして、MailContactの登録を行う
#
#　＞設定するパラメーターは、表示名・Alias・外部の電子メールアドレス・部署・会社名・場所・電話・番地・
#　　市区町村・都道府県・郵便番号・国地域・メモの12個
#
#
##################################################################################################

Param(
  [string]$Inputfile
)


	Import-Csv $inputfile | ForEach { 

			New-MailContact -Name $_.表示名 `
			-ExternalEmailAddress $_.外部の電子メールアドレス `
			-FirstName $_.名 `
			-LastName $_.姓 
			
			Set-Contact -Identity $_.外部の電子メールアドレス `
			-StreetAddress $_.番地 `
			-City $_.市区町村 `
			-StateorProvince $_.都道府県 `
			-PostalCode $_.郵便番号 `
			-Phone $_.勤務先電話 `
			-MobilePhone $_.携帯電話 `
			-HomePhone $_.自宅番号 `
			-Company $_.会社名 `
			-Title $_.役職 `
			-Department $_.部署 `
			-Fax $_.FAX `
			-Notes $_.メモ `
			-Office $_.事業所 

	}
