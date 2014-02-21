I liked libbson. But there are different issues especially under Windows
-- Possible bugs for Visual Stuio
-- autotools of MinGW (at least for windows) are poor and sometimes do not work
-- to compile project under windows you need generate project with CMake. 
    -- if you have Visual Studio you can't generate VS project for version you don't have. I mean if
    you have Visual Studio 2012 installed on your computer but you want to generate project for another Version (say 2010) you can't do that.
    -- CMake generate different projects for Win32 and for x64 architercure. But it is possible to use one project/solution for both.

    -- if you use MinGW: CMake generates a mess of makefiles. And if they are not configured propperly (for example missed some lib file), or "type is defined twice issue" -- it is hard to find out where
    -- At the meantime CMake generates bson-config for MinGW (windows) incorrectly

This fork:
-- I'm planning to merge in all new changes from https://github.com/mongodb/libbson project
-- in this fork I want to use boost.build system to build libbson. IMHO boost.build is very easy and no need to configure project for each project.
-- bson-version.h was stollen from VS generated and will be updated if any change in main project appeared
-- bson-config.h was imitated with boost-config and boost-endian libraries
-- to install boost you have to download it. Call bootstrap for your system. Add boost root into PATH. Declare BOOST_ROOT folder. That's all. you can call b2 from boost.build folder.

The main cause why did I do this: I use boost.build for my project. And using boost.build is pretty convenient for it.
