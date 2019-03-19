Param( [String]$OutputFile)
  
$groups = get-distributiongroup
 
"FLG,�z�z���X�g��,�����o�[,���[���A�h���X,����" | Out-File $OutputFile -encoding UTF8
foreach ($group in $groups)
{
 
Write-Host $group.displayName "���������܂�"
Write-Host "���[���A�h���X��" $group.PrimarySmtpAddress
	$members = get-distributiongroupmember -identity $group.PrimarySmtpAddress
		 
	foreach ($member in $members)
	{

Write-Host "�����o�[�̃��[���A�h���X��" $member.PrimarySmtpAddress "�ł�"
 
 
		$userinfo = new-object psobject 
		$userinfo | add-member -membertype noteproperty -name FLG -value ""
		$userinfo | add-member -membertype noteproperty -name �z�z���X�g�� -value $group.displayName
		$userinfo | add-member -membertype noteproperty -name �����o�[ -value $member.DisplayName
		$userinfo | add-member -membertype noteproperty -name ���[���A�h���X -value $member.PrimarySmtpAddress
		$userinfo | add-member -membertype noteproperty -name ���� -value $member.Department 
		$userinfo  | export-csv -Path $OutputFile -NoTypeInformation -Encoding UTF8 -Append 

	}
}
