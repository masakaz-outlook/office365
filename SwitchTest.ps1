$input = Read-Host "�����̖��O����͂��Ă�������"
 
switch($input)
{
  "penguin" {Write-Output ("�y���M�������͂���܂����B")}
  "dog" {Write-Output ("�������͂���܂����B")}
  "cat" {Write-Output ("�L�����͂���܂����B")}
  "bear" {Write-Output ("���܂����͂���܂����B")}
  default {Write-Output ("�o�^����Ă���ȊO�̖��O�����͂���܂����B")}
}