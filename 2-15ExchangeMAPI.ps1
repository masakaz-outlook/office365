########################################################################################
#�@�@�@Scripts�T�v
#
#�@���e���v���[�g�t�@�C�����C���|�[�g���āAMAPI�̐ݒ���s��
#�@
#�@���ݒ肷��p�����[�^�[�́A"MAPI"��1���
#�@�@
########################################################################################

Param(
  [string]$Inputfile
)

<#�e���v���[�g�t�@�C���̃C���|�[�g#>

	Import-CSV $Inputfile | ForEach { `

		<#IF���ŁA"MAPI"��"True"�̎��ŏ�������#>

 		if ( $_.MAPI -eq "True" ){ `

			Write-Host $_.���[�U�[�� -foregroundColor Blue `

			Set-CASMailbox -Identity $_.���[�U�[�� `

				-MAPIEnabled $True `
	
		<#IF���ŁA"MAPI"��"False"�̎��ŏ�������#>

		}elseif ( $_.MAPI -eq "False" ){ `

			Write-Host $_.���[�U�[�� -foregroundColor Blue `

			Set-CASMailbox -Identity $_.���[�U�[�� `

				-MAPIEnabled $False `

		<#��L�ȊO�̎��́A�G���[���b�Z�[�W���o�͂����#>
	
		}else{ `

			Write-Host $_.���[�U�[�� ���͍��ڂɃG���[������܂��B -foregroundColor Red
	
		}

	}