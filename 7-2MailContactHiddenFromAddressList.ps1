#####################################################################################################
#�@�@�@Scripts�T�v
#
#�@���e���v���[�g�t�@�C�����C���|�[�g���āAMailBox��GAL�ւ̕\����\���̐ݒ���s��
#
#�@���ݒ肷��p�����[�^�[�́A"���L�A�h���X���ւ̕\��"�̂P��
#
#
#####################################################################################################


Param(
  [string]$Inputfile
)

<#�e���v���[�g�t�@�C���̃C���|�[�g#>

	Import-CSV $Inputfile | ForEach-Object { `

		<#IF���ŁA"���L�A�h���X���ւ̕\��"�̐ݒ肪"True"�ŏ�������#>

		 	if ( $_.���L�A�h���X���ւ̕\�� -eq "True" ){ `

				Write-Host $_.���[�U�[�� -foregroundColor Blue `
	
				Set-MailContact -identity $_.Alias `

				-HiddenFromAddressListsEnabled $True `

		<#IF���ŁA"���L�A�h���X���ւ̕\��"�̐ݒ肪"False"�ŏ�������#>	


			}elseif ( $_.���L�A�h���X���ւ̕\�� -eq "False" ){

				Write-Host $_.���[�U�[�� -foregroundColor Blue `

				Set-MailContact -identity $_.Alias `
		
				-HiddenFromAddressListsEnabled $False `


		<#��L�ȊO�̎��́A�G���[���b�Z�[�W���o�͂����#>	

			}else{ `

				Write-Host $_.���[�U�[�� ���͍��ڂɃG���[������܂��B -foregroundColor Red
	
			}

	}
