@echo off

setlocal enabledelayedexpansion

set "template=xml"
set "extension=xml"
set "def=New XML Document"

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