@echo off
set SIMULATOR_HOME="."
if "%OS%" == "Windows_NT" set SIMULATOR_HOME=%~dp0%.
java.exe  -Xmx512m  -classpath "%SIMULATOR_HOME%\lib\simulatoraux.jar;%SIMULATOR_HOME%\lib\snmpSimulatorCmd.jar;%SIMULATOR_HOME%\lib\patch;%SIMULATOR_HOME%\lib\snmpTrapRecorderCmd.jar;%SIMULATOR_HOME%\lib\snmpWalkRecorderCmd.jar" com.ireasoning.ui.SimMainFrame networks\test\test.prj
