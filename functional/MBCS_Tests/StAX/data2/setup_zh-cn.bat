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
rem @echo (1) GB18030 G1
rem @echo    
rem @echo    ���d�U�@
set TEST_STRING1=����d�U�@

rem @echo (2) GB18030 G2
rem @echo    
rem @echo    ANSIString2
set TEST_STRING2=ANSIString2

rem @echo (3) Full angle character
rem @echo    
rem @echo    ���£�һ���ߣ��ܡ�
set TEST_STRING3=���£�һ���ߣ��ܡ�

rem @echo (4) Half-angle character
rem @echo    
rem @echo    ABCCDE/\!
set TEST_STRING4=ABCCDE/\\!

set TEST_STRING=������£�һ���ߣ��ܡ�
set TEST_STRING_SED=%TEST_STRING%
set TEST_STRINGS=%TEST_STRING1% %TEST_STRING2% %TEST_STRING3% %TEST_STRING4%
set TEST_STRINGS_SED=%TEST_STRINGS%
