########################################################################################
#�@�@�@Scripts�T�v
#
#�@���e���v���[�g�t�@�C�����C���|�[�g���āAPassword���������̐ݒ���s��
#
#
#�@���ݒ肷��p�����[�^�[�́A"Password��������"�P���
#
#
########################################################################################

Param(
  [string]$Inputfile
)


<#�e���v���[�g�t�@�C���̃C���|�[�g#>

	Import-CSV $Inputfile | ForEach-Object { 
		Write-Host $_.Password��������
		<#Password��������"��"True"�̎��ŏ�������#>
		 	if ( $_.Password�������� -eq "TRUE" ){ `
				Write-Host $_.���[�U�[��
				Set-msolUser -UserPrincipalName $_.���[�U�[�� `
					-PasswordNeverExpires $True `
		<#Password��������"��"False"�̎��ŏ�������#>

			}elseif ( $_.Password�������� -eq "FALSE" ){ 
				Write-Host $_.���[�U�[��
				Set-msolUser -UserPrincipalName $_.���[�U�[�� `
					-PasswordNeverExpires $False `
			}else{ 
				 Write-Host $_.���[�U�[�� ���͍��ڂɃG���[������܂��B -foregroundColor Red `
			}

	}