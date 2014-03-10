:: let's start building C project files
set OldPath=%PATH%

call build_internal Release x64
set Path=%OldPath%
call build_internal Release Win32
set Path=%OldPath%
call build_internal Debug x64
set Path=%OldPath%
call build_internal Debug Win32
set Path=%OldPath%

:end