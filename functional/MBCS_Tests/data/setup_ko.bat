@echo off
@echo (1) Hangul Compatibility Jamo
@echo    
@echo    ���������������������������������äŤǤˤ̤ФѤӤ�
@echo    ���������������������������������äŤǤˤ̤ФѤӤ�
set TEST_STRING1=���������������������������������äŤǤˤ̤ФѤӤ�

@echo (2) Enclosed CJK Letters and Months
@echo    
@echo    ���������������������©éĩŢߨ���������������
@echo    ���������������������©éĩŢߨ���������������
set TEST_STRING2=���������������������©éĩŢߨ���������������

@echo (3) Hangul Syllables
@echo    
@echo    �ѱ��Ϻ����뺣������
@echo    �ѱ��Ϻ����뺣������
set TEST_STRING3=�ѱ��Ϻ����뺣������

@echo (4) ���
@echo    
@echo    ��������ʡʢʣʤ��������
@echo    ��������ʡʢʣʤ��������
set TEST_STRING4=��������ʡʢʣʤ��������

set TEST_STRING=�����������é������ѱ��Ϻ���������
set TEST_STRING_SED=%TEST_STRING%
set TEST_STRINGS=%TEST_STRING1% %TEST_STRING2% %TEST_STRING3% %TEST_STRING4%
set TEST_STRINGS_SED=%TEST_STRINGS%

