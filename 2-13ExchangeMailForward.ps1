########################################################################################
#�@�@�@Scripts�T�v
#
#�@���e���v���[�g�t�@�C�����C���|�[�g���āA�]���ݒ���s��
#�@
#�@���ݒ肷��p�����[�^�[�́A�]���ݒ�Ɠ]�����Ƀ��[�����c�����c���Ȃ�����
#�@�@������B
#�@�@
########################################################################################


Param(
[string]$Inputfile
)

<#�e���v���[�g�t�@�C���̃C���|�[�g#>

	Import-CSV $Inputfile | ForEach { `

		<#IF���ŁA"�]�����̃��[���{�b�N�X�ɂ����[�����c��"��"True"�̎��ŏ�������#>

			if ( $_.�]�����̃��[���{�b�N�X�ɂ����[�����c�� -eq "True" ){

				Write-Host $_.���[�U�[�� -foregroundColor Blue

				Set-Mailbox -Identity $_.���[�U�[�� `

					-DeliverToMailboxAndForward $True `

					-ForwardingAddress $_.�]���惁�[���A�h���X `

		<#IF���ŁA"�]�����̃��[���{�b�N�X�ɂ����[�����c��"��"False"�̎��ŏ�������#>

			}elseif ( $_.�]�����̃��[���{�b�N�X�ɂ����[�����c�� -eq "False" ){ `

				Write-Host $_.���[�U�[�� -foregroundColor Blue `

				Set-Mailbox -Identity $_.���[�U�[�� `

					-DeliverToMailboxAndForward $False `

					-ForwardingAddress $_.�]���惁�[���A�h���X `

	}




			}
