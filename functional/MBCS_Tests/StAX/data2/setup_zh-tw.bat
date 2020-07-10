rem Licensed under the Apache License, Version 2.0 (the "License");
rem you may not use this file except in compliance with the License.
rem You may obtain a copy of the License at
rem
rem      https://www.apache.org/licenses/LICENSE-2.0
rem
rem Unless required by applicable law or agreed to in writing, software
rem distributed under the License is distributed on an "AS IS" BASIS,
rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
rem See the License for the specific language governing permissions and
rem limitations under the License.
@echo off
rem @echo (1) UTF-8= G1
rem @echo    
rem @echo    �����Q�\�˼š�٬���I���ø�
set TEST_STRING1=�����Q�\�˼š�

rem @echo (2) UTF-8 G2
rem @echo    
rem @echo    ������Q�\�˼š�٬���I
set TEST_STRING2=���

rem @echo (3) Full angle character
rem @echo    
rem @echo    �ϢТѢ������������èh�L�@�B�C���@��
set TEST_STRING3=�ϢТѢ������������èh�L�@�B�C���@

rem @echo (4) Half-angle character
rem @echo    
rem @echo    ABCCDE18921���èh�L���L�Ѹv��m�èh�B/\\
set TEST_STRING4=ABCCDE18921���L�Ѹv��m�èh�B/\\

set TEST_STRING=������Q�\�˼š�٬�ϢТѢ������������èh�L���L�Ѹv��m�èh�B�@�B�C���@
set TEST_STRING_SED=%TEST_STRING%
set TEST_STRINGS=%TEST_STRING1% %TEST_STRING2% %TEST_STRING3% %TEST_STRING4%
set TEST_STRINGS_SED=%TEST_STRINGS%