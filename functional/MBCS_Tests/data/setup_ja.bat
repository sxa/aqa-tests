@echo off
@echo ##### setting up test string variables #####
@echo TEST_STRING :  a string contains one DBCS word for testing
@echo TEST_STRINGS : a string contains multiple DBCS words for testing

set TEST_STRING=�ݼޕ\���e�X�g�@�A�I�S�ʁa�`
set TEST_STRINGS=�����\���\�� �J�i�łj������Kana �L��:\~�P�\�_�`�a�c�|�������� �O��:�U�h�V������ �O��:�T�U�@�A�I�S 

@echo TEST_STRING= %TEST_STRING%
@echo TEST_STRINGS= %TEST_STRINGS%


