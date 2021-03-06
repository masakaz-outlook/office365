#####################################################################################################
#　　　Scripts概要
#
#　＞テンプレートファイルをインポートして、セカンダリーメールボックスの設定を行う
#
#　＞設定するパラメーターは、"セカンダリーメールアドレス"の１つ
#  ＞ただし、@******.onmicrosoft.comのアドレスは、既定で設定されているので、それ以外の
#　　メールアドレスを設定する時に使用する
#　　　　※*****は、登録するテナントのドメイン名
#
# -Whatifは有効なパラメーターです。
#
#####################################################################################################

Param(
  [string]$Inputfile
)


Import-CSV $Inputfile | ForEach { 

Write-Host $_.表示名



$user = Get-DynamicDistributionGroup -Identity $_.Alias
$user.emailAddresses += $_.セカンダリーメールアドレス


Write-Host $user.emailAddresses

Set-DynamicDistributionGroup -identity $_.Alias -EmailAddresses $user.emailAddresses

	} 





