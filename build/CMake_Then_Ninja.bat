@echo off

::We make this .bat file read only
::temporarily so it doesn't get deleted
attrib +r "CMake_Then_Ninja.bat"

::We delete all files in the build directory
del /S /Q "C:\Users\Nikolay\Desktop\CMake_Lib_Test\build" >nul

::We remove the CMakeFiles folder, bin folder, and include folder
rmdir /S /Q "C:\Users\Nikolay\Desktop\CMake_Lib_Test\build\CMakeFiles" >nul
rmdir /S /Q "C:\Users\Nikolay\Desktop\CMake_Lib_Test\build\include" >nul
rmdir /S /Q "C:\Users\Nikolay\Desktop\CMake_Lib_Test\build\bin" >nul

::We run CMake to generate the ninja build files
cmake -DCMAKE_TOOLCHAIN_FILE="C:\Users\Nikolay\Desktop\CMake_Lib_Test\bcc64.cmake" -G Ninja "C:\Users\Nikolay\Desktop\CMake_Lib_Test\src"

::We run ninja on build files
ninja

::We make this .bat file non-read only again
::so we can edit it if we want to
attrib -r "CMake_Then_Ninja.bat"

::Print that we're finished
echo.
echo Script ran successfully.
