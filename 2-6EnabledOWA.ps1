########################################################################################
#�@�@�@Scripts�T�v
#
#�@���e���v���[�g�t�@�C�����C���|�[�g���āAOWA�\����\���̐ݒ���s��
#�@
#�@���ݒ肷��p�����[�^�[�́A"OWA�\��"��1���
#�@�@
########################################################################################

Param(
  [string]$Inputfile
)

<#�e���v���[�g�t�@�C���̃C���|�[�g#>

	Import-CSV $Inputfile | ForEach { `

		<#IF���ŁA"OWA�\��"��"True"�̎��ŏ�������#>

 			if ( $_.OWA�\�� -eq "True" ) { `

				Write-Host $_.���[�U�[�� -foregroundColor Blue `

				Set-CASMailbox -Identity $_.���[�U�[�� `

					-OWAEnabled $True `
	
		<#IF���ŁA"OWA�\��"��"False"�̎��ŏ�������#>

			}elseif ( $_.OWA�\�� -eq "False" ) { `

				Write-Host $_.���[�U�[�� -foregroundColor Blue `

				Set-CASMailbox -Identity $_.���[�U�[�� `

					-OWAEnabled $False `

		<#��L�ȊO�̎��́A�G���[���b�Z�[�W���o�͂����#>

			}else{ `

				Write-Host $_.���[�U�[�� ���͍��ڂɃG���[������܂��B -foregroundColor Red `

			}
	
	}