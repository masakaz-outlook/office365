#####################################################################################################
#　　　Scripts概要
#
#　＞テンプレートファイルをインポートして、DynamicDistributionGroupのメンバーシップルールの設定を行う
#
#　＞設定するパラメーターは、メンバーシップルールの１つ
# 
#
#####################################################################################################

Param(
  [string]$Inputfile,
  [string]$ManagedBy
)

	Import-Csv $Inputfile | foreach { 

			Set-DynamicDistributionGroup -Identity $_.Alias `
			-ManagedBy $ManagedBy `
			-ConditionalDepartment $_.メンバーシップルール部署 `
			-ConditionalCompany $_.メンバーシップルール会社 `
			-ConditionalStateOrProvince $_.メンバーシップルール都道府県 `
			-ConditionalCustomAttribute1 $_.動的配布の属性1 `
			-ConditionalCustomAttribute2 $_.動的配布の属性2 `
			-ConditionalCustomAttribute3 $_.動的配布の属性3 `
			-ConditionalCustomAttribute4 $_.動的配布の属性4 `
			-ConditionalCustomAttribute5 $_.動的配布の属性5 `
			-ConditionalCustomAttribute6 $_.動的配布の属性6 `
			-ConditionalCustomAttribute7 $_.動的配布の属性7 `
			-ConditionalCustomAttribute8 $_.動的配布の属性8 `
			-ConditionalCustomAttribute9 $_.動的配布の属性9 `
			-ConditionalCustomAttribute10 $_.動的配布の属性10 `
			-ConditionalCustomAttribute11 $_.動的配布の属性11 `
			-ConditionalCustomAttribute12 $_.動的配布の属性12 `
			-ConditionalCustomAttribute13 $_.動的配布の属性13 `
			-ConditionalCustomAttribute14 $_.動的配布の属性14 `
			-ConditionalCustomAttribute15 $_.動的配布の属性15 

	}






