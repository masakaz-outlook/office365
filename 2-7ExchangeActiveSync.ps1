########################################################################################
#�@�@�@Scripts�T�v
#
#�@���e���v���[�g�t�@�C�����C���|�[�g���āAActiveSync�̐ݒ�̐ݒ���s��
#�@
#�@���ݒ肷��p�����[�^�[�́A"ActiveSync"��1���
#�@�@
########################################################################################

Param(
  [string]$Inputfile
)

<#�e���v���[�g�t�@�C���̃C���|�[�g#>

	Import-CSV $Inputfile | ForEach { `

		<#IF���ŁA"ActiveSyn"��"True"�̎��ŏ�������#>

 			if ( $_.ActiveSync -eq "True" ){ `

				Write-Host $_.���[�U�[�� -foregroundColor Blue `

				Set-CASMailbox -Identity $_.���[�U�[�� `

					-ActiveSyncEnabled $True `

		<#IF���ŁA"ActiveSyn"��"False"�̎��ŏ�������#>

			}elseif ( $_.ActiveSync -eq "False" ){ `

				Write-Host $_.���[�U�[�� -foregroundColor Blue `

				Set-CASMailbox -Identity $_.���[�U�[�� `

					-ActiveSyncEnabled $False `

		<#��L�ȊO�̎��́A�G���[���b�Z�[�W���o�͂����#>

			}else{ `

				Write-Host $_.���[�U�[�� ���͍��ڂɃG���[������܂��B -foregroundColor Red
	
			}

	}