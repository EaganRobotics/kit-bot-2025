@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%"=="" @echo off
@rem ##########################################################################
@rem
@rem  kit-bot-2025 startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%"=="" set DIRNAME=.
@rem This is normally unused
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and KIT_BOT_2025_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if %ERRORLEVEL% equ 0 goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\kit-bot-2025.jar;%APP_HOME%\lib\wpilibj-java-2024.3.2.jar;%APP_HOME%\lib\wpimath-java-2024.3.2.jar;%APP_HOME%\lib\ntcore-java-2024.3.2.jar;%APP_HOME%\lib\cscore-java-2024.3.2.jar;%APP_HOME%\lib\cameraserver-java-2024.3.2.jar;%APP_HOME%\lib\hal-java-2024.3.2.jar;%APP_HOME%\lib\wpinet-java-2024.3.2.jar;%APP_HOME%\lib\wpiutil-java-2024.3.2.jar;%APP_HOME%\lib\apriltag-java-2024.3.2.jar;%APP_HOME%\lib\wpiunits-java-2024.3.2.jar;%APP_HOME%\lib\opencv-java-4.8.0-2.jar;%APP_HOME%\lib\ejml-simple-0.43.1.jar;%APP_HOME%\lib\jackson-core-2.15.2.jar;%APP_HOME%\lib\jackson-databind-2.15.2.jar;%APP_HOME%\lib\jackson-annotations-2.15.2.jar;%APP_HOME%\lib\quickbuf-runtime-1.3.3.jar;%APP_HOME%\lib\wpilibNewCommands-java-2024.3.2.jar;%APP_HOME%\lib\PathplannerLib-java-2024.2.8.jar;%APP_HOME%\lib\ChoreoLib-java-2024.1.3.jar;%APP_HOME%\lib\gson-2.10.1.jar;%APP_HOME%\lib\REVLib-java-2024.2.0.jar;%APP_HOME%\lib\api-java-5.33.0.jar;%APP_HOME%\lib\wpiapi-java-5.33.0.jar;%APP_HOME%\lib\navx-frc-java-2024.1.0.jar;%APP_HOME%\lib\wpiapi-java-24.1.0.jar;%APP_HOME%\lib\ejml-fsparse-0.43.1.jar;%APP_HOME%\lib\ejml-fdense-0.43.1.jar;%APP_HOME%\lib\ejml-dsparse-0.43.1.jar;%APP_HOME%\lib\ejml-ddense-0.43.1.jar;%APP_HOME%\lib\ejml-cdense-0.43.1.jar;%APP_HOME%\lib\ejml-zdense-0.43.1.jar;%APP_HOME%\lib\ejml-core-0.43.1.jar


@rem Execute kit-bot-2025
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %KIT_BOT_2025_OPTS%  -classpath "%CLASSPATH%" frc.lib.InstallAlert %*

:end
@rem End local scope for the variables with windows NT shell
if %ERRORLEVEL% equ 0 goto mainEnd

:fail
rem Set variable KIT_BOT_2025_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
set EXIT_CODE=%ERRORLEVEL%
if %EXIT_CODE% equ 0 set EXIT_CODE=1
if not ""=="%KIT_BOT_2025_EXIT_CONSOLE%" exit %EXIT_CODE%
exit /b %EXIT_CODE%

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
