Param(
[string]$InputFile
)


Import-Csv $InputFile |%{

	Write-Output $_.ユーザー名

	Set-Mailbox -Identity $_.ユーザー名 `
	-CustomAttribute1 $_.カスタマイズ属性1 `
	-CustomAttribute2 $_.カスタマイズ属性2 `
	-CustomAttribute3 $_.カスタマイズ属性3 `
	-CustomAttribute4 $_.カスタマイズ属性4 `
	-CustomAttribute5 $_.カスタマイズ属性5 `
	-CustomAttribute6 $_.カスタマイズ属性6 `
	-CustomAttribute7 $_.カスタマイズ属性7 `
	-CustomAttribute8 $_.カスタマイズ属性8 `
	-CustomAttribute9 $_.カスタマイズ属性9 `
	-CustomAttribute10 $_.カスタマイズ属性10 `
	-CustomAttribute11 $_.カスタマイズ属性11 `
	-CustomAttribute12 $_.カスタマイズ属性12 `
	-CustomAttribute13 $_.カスタマイズ属性13 `
	-CustomAttribute14 $_.カスタマイズ属性14 `
	-CustomAttribute15 $_.カスタマイズ属性15 


}