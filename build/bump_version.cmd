@echo off
if %%1 == "" (
  goto :help
)
if %%2 == "" (
  goto :help
)
if %%3 == "" (
  goto :help
)
if %%4 == "" (
  goto :help
)
if %%5 == "" (
  goto :help
)
if %%6 == "" (
  goto :help
)

powershell -Command "& {(Get-Content ..\msvc\libbson\libbson.vcxproj) -replace '%1-%2-%3', '%4-%5-%6' | Set-Content ..\msvc\libbson\libbson.vcxproj}"
powershell -Command "& {(Get-Content ..\msvc\libbson\version.rc) -replace '%1,%2,%3,', '%4,%5,%6,' | Set-Content ..\msvc\libbson\version.rc}"
powershell -Command "& {(Get-Content ..\msvc\libbson\version.rc) -replace '%1.%2.%3.', '%4.%5.%6.' | Set-Content ..\msvc\libbson\version.rc}"


goto :end

:help

echo --
echo syntax: bump_version CurrentMajor CurrentMinor CurrentRelease NewMajor NewMinor NewRelease
echo --

:end