@echo off
:: 
:: Version 1.8.4
:: 
:: 
:: Important!!!
:: 
:: The following license is ONLY for the mLogica team,
:: do not share with anyone else
::
set NIB_LICENSE_KEY=eyJ0eXAiOiJOSUItTElDRU5TRSIsImFsZyI6IkVTMjU2Iiwia2lkIjoibmliLWVzMjU2LXYxIn0.eyJsaWNlbnNlVmVyc2lvbiI6MywicHJvZHVjdE5hbWUiOiJOLkkuQi4iLCJ2ZW5kb3JOYW1lIjoiTklCIExhYnMgUy5yLmwuIiwiY3VzdG9tZXJOYW1lIjoiTklCIExhYnMgUy5yLmwuIiwiZXhwaXJlc09uIjoiMjAyNi0wOC0zMCIsImNyZWF0ZWRPbiI6IjIwMjYtMDgtMTEgMTY6MTM6MzgiLCJmZWF0dXJlcyI6eyJuaWIuY29tbW9ucyI6InllcyIsIm5pYi5zY3JpcHRpbmciOiJ5ZXMiLCJuaWIuc3VwZXJuYXV0IjoieWVzIiwibmliLm1vdG9yaGVhZCI6InllcyIsIm5pYi5hbmd1bGFyIjoieWVzIiwibmliLnRuMzI3MCI6InllcyIsIm5pYi5wYXJhbm9pZCI6InllcyJ9LCJwcm9wZXJ0aWVzIjpudWxsLCJwbGF0Zm9ybXMiOlsiSmF2YSIsIkRvdE5ldCJdfQ.ghbnFI1KqzrrkxTSeg6gWU8L77flvoVzELgZG04cQfDe_xWr6vMQSDv8uSGZM9JyzEjp91ubwxcq9GsQGiLF8A

set CTOOL=nib-paranoid-1.8.4.exe

set DG_CONV_WORKSPACE_IN=%cd%

:: 
::  JAVA settings
::
set DG_CONV_WORKSPACE_OUT=%cd%\..\nib-java-demo-apps\aws-carddemo-app
::echo DG_CONV_WORKSPACE_OUT=%DG_CONV_WORKSPACE_OUT%
::%CTOOL% conv_cobol_batch_java_config.xml
::%CTOOL% conv_cobol_online_java_config.xml
::%CTOOL% conv_bms_angular_config.xml
::%CTOOL% conv_jcl_groovy_config.xml
::%CTOOL% conv_proc_groovy_config.xml

:: 
::  C# settings
::
set DG_CONV_WORKSPACE_OUT=%cd%\..\nib-java-demo-apps-csharp
::echo DG_CONV_WORKSPACE_OUT=%DG_CONV_WORKSPACE_OUT%
%CTOOL% conv_cobol_batch_c#_config.xml
%CTOOL% conv_cobol_online_c#_config.xml
%CTOOL% conv_jcl_pwsh_config.xml
%CTOOL% conv_proc_pwsh_config.xml


