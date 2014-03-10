call "C:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\bin\vcvars32.bat"
msbuild ..\msvc\libbson\libbson.sln "/p:Configuration=%1;Platform=%2"