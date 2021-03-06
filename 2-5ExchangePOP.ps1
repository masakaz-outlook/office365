﻿########################################################################################
#　　　Scripts概要
#
#　＞テンプレートファイルをインポートして、POPの設定を行う
#　
#　＞設定するパラメーターは、"POP"の1種類
#　　
########################################################################################

Param(
  [string]$Inputfile
)

	Import-CSV $Inputfile | ForEach { 
			if ( $_.POP -eq "True" ){ 
				Write-Host $_.ユーザー名 -foregroundColor Blue 
				Write-Host $_.POP
				Set-CASMailbox -Identity $_.ユーザー名 `
					-PopEnabled $True 
			}elseif ( $_.POP -eq "False" ){ 
				Write-Host $_.ユーザー名 -foregroundColor Blue 
				Write-Host $_.POP
				Set-CASMailbox -Identity $_.ユーザー名 `
					-PopEnabled $False 
			}else{ 
				Write-Host $_.ユーザー名 input error -foregroundColor Red 
			}
	}
