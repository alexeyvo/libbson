robocopy ..\bin\Win32\Debug\ %1\user\libbson-dll\ libbson*.dll /ZB /X /COPYALL /TEE
robocopy ..\bin\Win32\Release\ %1\user\libbson-dll\ libbson*.dll /ZB /X /COPYALL /TEE
robocopy ..\bin\x64\Debug\ %1\user\libbson-dll\ libbson*.dll /ZB /X /COPYALL /TEE
robocopy ..\bin\x64\Release\ %1\user\libbson-dll\ libbson*.dll /ZB /X /COPYALL /TEE

EXIT /B 0