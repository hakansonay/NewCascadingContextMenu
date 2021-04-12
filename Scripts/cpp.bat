@echo off

setlocal enabledelayedexpansion

set "template=cpp"
set "extension=cpp"
set "def=New C++ File"

set "name=%def%.%extension%"
set count=1

copy C:\Windows\NewCascadingContextMenu\Templates\%template%.%extension% "%cd%"

:loop
if not exist "%name%" goto :continue
set /a count+=1
set "name=%def% (%count%).%extension%"
goto :loop

:continue
rename "%template%.%extension%" "%name%"