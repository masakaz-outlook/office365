########################################################################################
#�@�@�@Scripts�T�v
#
#�@���e���v���[�g�t�@�C�����C���|�[�g���āAIMAP�̐ݒ���s��
#�@
#�@���ݒ肷��p�����[�^�[�́A"IMAP"��1���
#�@�@
########################################################################################


Param(
  [string]$Inputfile
)

<#�e���v���[�g�t�@�C���̃C���|�[�g#>

	Import-CSV $Inputfile | ForEach { `

		<#IF���ŁA"IMAP"��"True"�̎��ŏ�������#>

	 		if ( $_.IMAP -eq "True" ){ `

				Write-Host $_.���[�U�[�� -foregroundColor Blue `

				Set-CASMailbox -Identity $_.���[�U�[�� `

					-IMAPEnabled $True `

		<#IF���ŁA"OWA�\��"��"False"�̎��ŏ�������#>

			}elseif ( $_.IMAP -eq "False" ){ `

				Write-Host $_.���[�U�[�� -foregroundColor Blue `

				Set-CASMailbox -Identity $_.���[�U�[�� `

					-IMAPEnabled $False `

		<#��L�ȊO�̎��́A�G���[���b�Z�[�W���o�͂����#>

			}else{ `

				Write-Host $_.���[�U�[�� ���͍��ڂɃG���[������܂��B -foregroundColor Red `
	
			}

	}